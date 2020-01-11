<?php
require_once("Controller.php");
class Matchs extends Controller{
    
    public static function Home(){
        require_once("Models/Match.php");
        $array = Match::getMatchs(date("Y-m-d"));
        require("Views/HomeView.php");
  }
}

?>
