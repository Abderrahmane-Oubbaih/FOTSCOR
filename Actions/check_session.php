<?php
session_start();
if(isset($_SESSION["UserId"]))
    echo "1";
else{
    echo "0";
}
?>