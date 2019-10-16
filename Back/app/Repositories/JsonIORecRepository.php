<?php

namespace App\Repositories;

use App\Models\JsonIORec;

class JsonIORecRepository {

    //新增資料
    public function InsertData($arraydata) {
        //檢查「必填值」
        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_receive") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_return") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_wcffunction") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "ps_id")) {
            return false;
        }

        $savedata['jio_receive'] = $arraydata['jio_receive'];
        $savedata['jio_return'] = $arraydata['jio_return'];
        $savedata['jio_wcffunction'] = $arraydata['jio_wcffunction'];
        $savedata['ps_id'] = $arraydata['ps_id'];


        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "isflag")) {
            $savedata['isflag'] = '1';
        } else {
            $savedata['isflag'] = $arraydata['isflag'];
        }

        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "create_user")) {
            $savedata['create_user'] = 'webapi';
        } else {
            $savedata['create_user'] = $arraydata['create_user'];
        }
        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "last_update_user")) {
            $savedata['last_update_user'] = 'webapi';
        } else {
            $savedata['last_update_user'] = $arraydata['last_update_user'];
        }

        if (JsonIORec::insert($savedata)) {
            return true;
        } else {
            return false;
        }
    }

     public function InsertDataGetId($arraydata, &$jio_id) {
        //檢查「必填值」
        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_receive") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_return") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "jio_wcffunction") || !\App\Library\CommonTools::CheckArrayValue($arraydata, "ps_id")) {
            return false;
        }

        $savedata['jio_receive'] = $arraydata['jio_receive'];
        $savedata['jio_return'] = $arraydata['jio_return'];
        $savedata['jio_wcffunction'] = $arraydata['jio_wcffunction'];
        $savedata['ps_id'] = $arraydata['ps_id'];


        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "isflag")) {
            $savedata['isflag'] = '1';
        } else {
            $savedata['isflag'] = $arraydata['isflag'];
        }

        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "create_user")) {
            $savedata['create_user'] = 'webapi';
        } else {
            $savedata['create_user'] = $arraydata['create_user'];
        }
        if (!\App\Library\CommonTools::CheckArrayValue($arraydata, "last_update_user")) {
            $savedata['last_update_user'] = 'webapi';
        } else {
            $savedata['last_update_user'] = $arraydata['last_update_user'];
        }
        if ($jio_id = JsonIORec::insertGetId($savedata)) {
            return true;
        } else {
            return false;
        }
    }
}
