<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Request;

use Zipper;
use App\Type;

use App\Library\CommonTools;

class ZipArchiveController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }
    public function store(Request $request)
    {
    }
    public function show($id)
    {
        $searchdata = Request::all();
        CommonTools::writeErrorLogByMessage($searchdata);
        $types = Type::find($id);
        $png = $types->png;
        $fw = $types->fw;
        $psd = $types->psd;

        if(!$pngfiles = json_decode($png , JSON_UNESCAPED_SLASHES)){
            $pngfiles = [];
        }
        if(!$fwfiles = json_decode($fw , JSON_UNESCAPED_SLASHES)){
            $fwfiles = [];
        }
        if(!$psdfiles = json_decode($psd , JSON_UNESCAPED_SLASHES)){
            $psdfiles = [];
        }

        $randomNum = random_int(100000,999999);
        $fileName = 'files'. $randomNum . '.zip';
        $publicPath = public_path();
        $filePath = $publicPath . '/' . $fileName;

        if(count($pngfiles)){
            for ($i=0; $i < count($pngfiles) ; $i++) { 
                $pngfiles[$i] = $publicPath . '/' . $pngfiles[$i];
            };
        }else{
            $pngfiles = [];
        }

        if(count($fwfiles)){
            for ($i=0; $i < count($fwfiles) ; $i++) { 
                $fwfiles[$i] = $publicPath . '/' . $fwfiles[$i];
            };
        } else{
            $fwfiles = [];
        }

        if($psdfiles){
            for ($i=0; $i < count($psdfiles) ; $i++) { 
                $psdfiles[$i] = $publicPath . '/' . $psdfiles[$i];
            };
        } else{
            $psdfiles = [];
        }


        $zipper = new \Chumper\Zipper\Zipper;

        if(count($pngfiles)) {
            $zipper->make($fileName)->folder('png')->add($pngfiles);
        } else {
            return 'is Emptry';
        }

        if(count($fwfiles)) {
            $zipper->zip($fileName)->folder('fw')->add($fwfiles);
        }
        if(count($psdfiles)) {
            $zipper->zip($fileName)->folder('psd')->add($psdfiles);
        }


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