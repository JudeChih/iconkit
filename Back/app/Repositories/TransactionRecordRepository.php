<?php

namespace App\Repositories;

use App\Models\TransactionRecord;

class TransactionRecordRepository {

    /**
     * 一次抓取10筆資料
     */
    public function getTenData(){
        try {
            $result = TransactionRecord::orderBy('last_update_date', 'desc')->paginate(20);
            return $result;
        } catch (\Exception $e) {
            \App\Library\CommonTools::writeErrorLogByException($e);
            return false;
        }
    }

    /**
     * 建立一筆新的資料
     * @param array $arraydata 要新增的資料
     */
    public function create(array $arraydata) {
        try {
            // 異動部門
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'tr_user')) {
                $savedata['tr_user'] = $arraydata['tr_user'];
            }
            // 異動動作
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'tr_action')) {
                $savedata['tr_action'] = $arraydata['tr_action'];
            }
            // 異動目標類型
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'tr_type')) {
                $savedata['tr_type'] = $arraydata['tr_type'];
            }
            // 異動目標所屬資料夾
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'tr_folder')) {
                $savedata['tr_folder'] = $arraydata['tr_folder'];
            }
            // 異動目標名稱
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'tr_name')) {
                $savedata['tr_name'] = $arraydata['tr_name'];
            }
            // 異動資料狀態
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'isflag')) {
                $savedata['isflag'] = $arraydata['isflag'];
            }else{
                $savedata['isflag'] = 1;
            }
            // 異動新增部門
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'create_user')) {
                $savedata['create_user'] = $arraydata['create_user'];
            }else{
                $savedata['create_user'] = $arraydata['tr_user'];
            }
            // 異動新增時間
            $savedata['create_date'] = \Carbon\Carbon::now();

            // 異動更新部門
            if (\App\Library\CommonTools::CheckArrayValue($arraydata,'last_update_user')) {
                $savedata['last_update_user'] = $arraydata['last_update_user'];
            }else{
                $savedata['last_update_user'] = $arraydata['tr_user'];
            }
            // 異動更新時間
            $savedata['last_update_date'] = \Carbon\Carbon::now();

            TransactionRecord::insert($savedata);
            return true;
        } catch (\Exception $ex) {
            \App\Library\CommonTools::writeErrorLogByException($ex);
            return false;
        }
    }

    public function update(){
        // 該資料表不存在更新資料的功能
    }

    /**
     * 刪除某筆異動資料
     * @param  [type] $tr_id [description]
     */
    public function delete($tr_id){
        try {
            TransactionRecord::where("tr_id",$tr_id)->delete();
            return true;
        } catch (\Exception $e) {
            \App\Library\CommonTools::writeErrorLogByException($e);
            return false;
        }
    }
}
