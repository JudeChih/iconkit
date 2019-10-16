<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Icon;
use Session;

class IconsController extends Controller
{
    public function index(Request $request)
    {
        $icons= Icon::all();
        return $icons;
    }

    public function store(Request $request)
    {

        $validated = $request->validate([
            'name' => 'required|min:1',
            'tagsData' => 'required|min:1',
            'files' => 'required|min:1',
            'list' => 'required|min:1',
            'type' => 'required|min:1'
        ]);

        // $icons = Icon::create($validated);

        $icons = Icon::create([
            'name' => request('name'),
            'list' => request('list'),
            'tagsData' => json_encode(request('tagsData')),
            'files' => json_encode(request('files')),
            'type' => json_encode(request('type'))
        ]);

        // 紀錄異動
        $arraydata['tr_name'] = request('name');
        $arraydata['tr_folder'] = request('list');
        $arraydata['tr_action'] = 1; // 新增
        $this->modify_record($arraydata);


        return response()->json($icons);
    }

    public function show($id)
    {
        $icons = Icon::find($id);
        return response()->json($icons);
    }

    public function destroy($id)
    {
        try {

            // 紀錄異動
            $i_r = new \App\Repositories\IconsRepository;
            if($data = $i_r->getDataById($id)){
                $data = $data[0];
                $arraydata['tr_name'] = $data['name'];
                $arraydata['tr_folder'] = $data['list'];
                $arraydata['tr_action'] = 3; // 刪除
                $this->modify_record($arraydata);
            }

            Icon::where('id', $id)->delete();
        } catch (\Exception $e) {
            \App\Library\CommonTools::writeErrorLogByException($e);
            return false;
        }
    }

    public function edit(Request $request, $id)
    {
        $icons = Icon::find($id);
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'required|min:1',
            'tagsData' => 'required|min:1',
            'files' => 'required|min:1',
            'list' => 'required|min:1',
            'type' => 'required|min:1'
        ]);

        // $icons = Icon::find($id);
        // if($icons->list != request('list')){
        //     $t_r = new \App\Repositories\TypesRepository;
        //     if($typedata = $t_r->getDataByType($icons->list)){
        //         $typedata = $typedata[0];
        //         $png = json_decode($typedata['png'] , JSON_UNESCAPED_SLASHES);
        //         $fw = json_decode($typedata['fw'] , JSON_UNESCAPED_SLASHES);
        //         $psd = json_decode($typedata['psd'] , JSON_UNESCAPED_SLASHES);
        //         if(count($png) > 0){
        //             foreach($png as $k => $v){
        //                 foreach(request('files') as $f){
        //                     if($f == $k ){
        //                         \App\Library\CommonTools::writeErrorLogByMessage("before::".json_encode($png));
        //                         unset($png[$v]);
        //                         \App\Library\CommonTools::writeErrorLogByMessage("after::".json_encode($png));
        //                     }
        //                 }
        //             }
        //         }
        //     }
        // }

        $icons = Icon::find($id)->update([
            'name' => request('name'),
            'list' => request('list'),
            'tagsData' => json_encode(request('tagsData')),
            'files' => json_encode(request('files')),
            'type' => json_encode(request('type'))
        ]);

        // 紀錄異動
        $arraydata['tr_name'] = request('name');
        $arraydata['tr_folder'] = request('list');
        $arraydata['tr_action'] = 2; // 修改
        $this->modify_record($arraydata);

        return response()->json($icons);
    }

    /**
     * 將異動資訊記錄起來
     * @param  [type] $arraydata [異動資訊]
     */
    public function modify_record($arraydata){
        $tr_r = new \App\Repositories\TransactionRecordRepository;
        try {
            // 異動目標類型
            $arraydata['tr_type'] = 1; // icon

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
