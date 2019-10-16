<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Request;
use App\Library\CommonTools;
use Zipper;
use App\Type;
use App\Icon;

class DownloadAllController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = Request::all();
        if($data['selectedToDownload']){
            $id_array = json_decode($data['selectedToDownload'] , JSON_UNESCAPED_SLASHES);

            $downloadFile = array();
            $publicPath = public_path();
            $randomNum = random_int(100000,999999);
            $fileName = 'files'. $randomNum . '.zip';
            $filePath = $publicPath . '/' . $fileName;

            for($i=0;$i < count($id_array);$i++){
                $data = Icon::find($id_array[$i]);
                if($data->files){
                    $files = json_decode($data->files , JSON_UNESCAPED_SLASHES);
                }else{
                    $files = [];
                }

                for ($j=0; $j < count($files) ; $j++) {
                    array_push($downloadFile, $publicPath . '/' . $files[$j]);
                };
            }

            $zipper = new \Chumper\Zipper\Zipper;

            if(count($downloadFile)) {
                $zipper->make($fileName)->add($downloadFile);
            }

            $zipper->close();
            // Set Header
            $headers = array(
                'Content-Type' => 'application/octet-stream',
            );
            // Create Download Response
            if ( file_exists($filePath) ) {
                // setcookie("selectedToDownload","",time()-360000);
                return response()->download($filePath, $fileName, $headers);
            }
        }
    }
    public function store(Request $request)
    {
    }
    public function show($id)
    {

    }
}