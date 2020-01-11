<?php
// the dispatcher :
if(isset($_GET["action"]) and $_GET["action"] == "Home")
{
    require("Controllers/Matchs.php");
    Matchs::Home();
    
}
?>