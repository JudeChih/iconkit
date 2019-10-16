<?php

namespace App\Repositories;

use Illuminate\Database\Eloquent\Model;
use App\Models\Types;

class TypesRepository
{
	/**
	 * 透過編號抓取符合的type資料
	 * @param  [type] $id [type編號]
	 */
    public function getDataById($id){
    	return Types::where('id','=',$id)->get();
    }

    public function getDataByType($type){
    	return Types::where('type','=',$type)->get();
    }
}