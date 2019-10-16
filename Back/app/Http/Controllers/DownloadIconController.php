<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Request;

use Zipper;
use App\Type;
use App\Icon;

use App\Library\CommonTools;

class DownloadIconController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function icon()
    {
        $searchdata = Request::all();

        $types = Icon::find($searchdata['id']);
        $files = json_decode($types['files']);

        for($i =0;$i < count($files);$i++){
            $string = explode(".", $files[$i]);
            if(count($string) > 2){
                if($searchdata['type'] == 'FW'){
                    $url = $files[$i];
                    break;
                }
            }else{
                if (preg_match("/\PNG/i", $string[1])){
                    if($searchdata['type'] == 'PNG'){
                        $url = $files[$i];
                        break;
                    }
                }else{
                    if($searchdata['type'] == 'PSD'){
                        $url = $files[$i];
                        break;
                    }
                }
            }
        }


        $randomNum = random_int(100000,999999);
        $fileName = 'icon-'. $types['name'] . '-'. $searchdata['type'] . '檔' . '.zip';
        $publicPath = public_path();
        $filePath = $publicPath . '/' . $fileName;


        $zipper = new \Chumper\Zipper\Zipper;
        $zipper->zip($fileName)->add($publicPath . '/' . $url);
        $zipper->close();

        // Set Header
        $headers = array(
            'Content-Type' => 'application/octet-stream',
        );

        // Create Download Response
        if ( file_exists($filePath) ) {
            return response()->download($filePath, $fileName, $headers);
        }
        return 'Q_Q';
    }
}