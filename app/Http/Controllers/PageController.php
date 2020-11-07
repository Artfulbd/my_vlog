<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home(){
        $msg = "Welcome onBoard!";
        //return view('pages.home', compact('msg'));
        //or
        return view('pages.home')->with('msg',$msg);
    }

    public function about(){
        return view('pages.about');
    }

    public function projects(){
        $ar = array('data' => ['Print Zone','e_Wallet','encryption']);
        return view('pages.projects')->with($ar);
    }
}
