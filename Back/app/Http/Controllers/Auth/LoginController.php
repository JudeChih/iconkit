<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Captcha;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    public function username()
    {
        return 'username';
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
    * 重写验证码需要必填
    * @param  Request $request [description]
    * @return [type]           [description]
    */
    protected function validateLogin(Request $request)
    {
    $this->validate($request,[
        $this->username() => 'required',
        'password' => 'required',
        'captcha' => 'required|captcha'  
        ],[
        'captcha.captcha' => trans('驗證碼有誤'),
        'captcha.required' => trans('validation.captcha_required'),
    ]);
    }
}

