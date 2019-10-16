<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {
        if ($this->isHttpException($exception)) {

            $statusCode = $exception->getStatusCode();

            $message = $exception->getMessage() ?: 'Exception';

            switch ($statusCode) {

                case 503:// 服務無法使用
                    return response()->view( 'errors/503', compact('message'), 403);

                case 500:// 內部伺服器錯誤
                    return response()->view('errors/500', compact('message'), 500);

                default:// 找不到
                    return response()->view('errors/404', compact('message'), $statusCode);
            }
        }
        return parent::render($request, $exception);
    }
}
