<?php

namespace App\Http\Controllers\ViewControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use \Illuminate\Support\Facades\View;

class ErrorController extends Controller
{
	public function error(){
		try {
			$m_r = new \App\Repositories\MigrationsRepository;
			$result = $m_r->getData();
			return View::make('errors/error',compact('result'));
		} catch (Exception $e) {
			\App\Library\CommonTools::writeErrorLogByException($e);
		}
	}
}