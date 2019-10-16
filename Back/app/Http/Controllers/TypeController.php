<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;
use Session;
use App\Library\CommonTools;

class TypeController extends Controller
{
    public function index(Request $request)
    {
        $types= Type::all();
        return $types;
    }

    public function store(Request $request)
    {
        $types = Type::create([
            'type' => request('type'),
            'png' => json_encode(request('png')),
            'fw' => json_encode(request('fw')),
            'psd' => json_encode(request('psd')),
        ]);

        // 紀錄異動
        $arraydata['tr_type'] = request('type');
        $arraydata['tr_action'] = 1; // 新增
        $this->modify_record($arraydata);


        return response()->json($types);
    }

    public function show($id)
    {
        $types = Type::find($id);
        return response()->json($types);
    }

    public function destroy($id)
    {
        // 紀錄異動
        $t_r = new \App\Repositories\TypesRepository;
        if($data = $t_r->getDataById($id)){
            $data = $data[0];
            $arraydata['tr_type'] = $data['type'];
            $arraydata['tr_action'] = 3; // 刪除
            $this->modify_record($arraydata);
        }
        Type::where('id', $id)->delete();
    }

    public function edit(Request $request, $id)
    {
        $types = Type::find($id);
    }

    public function update(Request $request, $id)
    {
        if(is_array(request('png'))){
            $png = json_decode(request('png'));
        }else{
            $png = request('png');
        }
        if(is_array(request('fw'))){
            $fw = json_decode(request('fw'));
        }else{
            $fw = request('fw');
        }
        if(is_array(request('psd'))){
            $psd = json_decode(request('psd'));
        }else{
            $psd = request('psd');
        }

        $types = Type::find($id)->update([
            'type' => request('type'),
            'png' => $png,
            'fw' => $fw,
            'psd' => $psd,
        ]);

        // 紀錄異動
        $arraydata['tr_folder'] = request('type');
        $arraydata['tr_action'] = 2; // 修改
        $this->modify_record($arraydata);

        return response()->json($types);
    }

    /**
     * 將異動資訊記錄起來
     * @param  [type] $arraydata [異動資訊]
     */
    public function modify_record($arraydata){
        $tr_r = new \App\Repositories\TransactionRecordRepository;
        try {
            // 異動目標類型
            $arraydata['tr_type'] = 2; // 資料夾

            // 異動部門
            $user = Session::get('user');
            if($user['username']){
                $arraydata['tr_user'] = $user['username'];
            }else{
                $arraydata['tr_user'] = '查無使用者';
            }
            return $tr_r->create($arraydata);
        } catch (\Exception $e) {
            \App\Library\CommonTools::writeErrorLogByException($e);
            return false;
        }
    }
}
