<?php

namespace App\Repositories;

use Illuminate\Database\Eloquent\Model;
use App\Models\Icons;

class IconsRepository
{
	/**
	 * 透過編號抓取符合的icon資料
	 * @param  [type] $id [icon編號]
	 */
    public function getDataById($id){
    	return Icons::where('id','=',$id)->get();
    }
}