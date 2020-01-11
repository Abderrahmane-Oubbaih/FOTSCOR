<!-- the master page template -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $title ?></title>
    <style>
        li{
            list-style-type: none;
            display: inline-block;
            margin-left: 10px;
        }
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
   <?php
    
        $d1 = strtotime("+1days");
        $d2 = strtotime("+2days");
        $d3 = strtotime("+3days");
        $d4 = strtotime("-1days");
        $d5 = strtotime("-2days");
        $d6 = strtotime("-3days");

    ?>
    <h1 style="background-color:#a39393">header</h1>
    <div style="margin-left:300px;">
        <ul>
        <li><a href="">IN_PLAY Matchs</a></li>
        <li><a href=""><?php echo date("M d",$d6); ?></a></li>
        <li><a href=""><?php echo date("M d",$d5); ?></a></li>
        <li><a href=""><?php echo date("M d",$d4); ?></a></li>
        <li><a href="">TODAY</a></li>
        <li><a href=""><?php echo date("M d",$d3); ?></a></li>
        <li><a href=""><?php echo date("M d",$d2); ?></a></li>
        <li><a href=""><?php echo date("M d",$d1); ?></a></li>
        <li><a href=""><input type="date"></a></li>
        
        </ul>
    </div>
    <?php echo $content ?>
    <h1 style="background-color:#a39393">footer</h1>
</body>
</html>