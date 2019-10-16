<?php

namespace App\Http\Controllers\ViewControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use \Illuminate\Support\Facades\View;

class TransactionRecordController extends Controller
{
	public function list(){
		$t_r = new \App\Repositories\TransactionRecordRepository;
		try {
			if(!$data = $t_r->getTenData()){
				$data = "資料庫出了問題，可能沒資料、可能有異常錯誤。";
				return response()->json($data);
			}

			for($i = 0 ; $i <count($data);$i ++){
				switch ($data[$i]['tr_type']) {
					case '1': // icon
						switch ($data[$i]['tr_action']) {
							case '1': // 新增
								$data[$i]['tr_content'] = "新增【" . $data[$i]['tr_name'] . "】到【" . $data[$i]['tr_folder'] . "】";
								break;
							case '2': // 修改
								$data[$i]['tr_content'] = "修改【" . $data[$i]['tr_folder'] . "】裡的【" . $data[$i]['tr_name']. "】";
								break;
							case '3': // 刪除
								$data[$i]['tr_content'] = "刪除【" . $data[$i]['tr_folder'] . "】裡的【" . $data[$i]['tr_name']. "】";
								break;
						}
						break;
					case '2': // 資料夾
						switch ($data[$i]['tr_action']) {
							case '1': // 新增
								$data[$i]['tr_content'] = "新增【" . $data[$i]['tr_folder'] . "】資料夾";
								break;
							case '2': // 修改
								$data[$i]['tr_content'] = "修改【" . $data[$i]['tr_folder'] . "】資料夾";
								break;
							case '3': // 刪除
								$data[$i]['tr_content'] = "刪除【" . $data[$i]['tr_folder'] . "】資料夾";
								break;
						}
						break;
				}
			}
			return response()->json($data);
		} catch (\Exception $e) {
			\App\Library\CommonTools::writeErrorLogByException($e);
			return View::make('errors/error');
		}
	}
}