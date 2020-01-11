<?php
ob_start();
?>

<style>
    table,th,td{
        border: 2px solid black;
        border-collapse: collapse;
    }
</style>
<table>
    <tr>
        <th>homeTeam</th><th>awayTeam</th><th>homeTeamLogo</th><th>AwayTeamLogo</th><th>status</th><th>date</th><th>time</th><th>winner</th><th>competition</th><th>homeTeamScore</th><th>awayTeamScore</th>
    </tr>
    <?php for($i=0;$i<count($array);$i++){ ?>
    <tr>
        <td><?php echo $array[$i]->getHomeTeam(); ?> </td>
        <td><?php echo $array[$i]->getAwayTeam(); ?></td>
        <td><?php echo $array[$i]->getHomeTeamLogo(); ?></td>
        <td><?php echo $array[$i]->getAwayTeamLogo(); ?></td>
        <td><?php echo $array[$i]->getStatus(); ?></td>
        <td><?php echo $array[$i]->getDate(); ?></td>
        <td><?php echo $array[$i]->getTime(); ?></td>
        <td><?php echo $array[$i]->getWinner(); ?></td>
        <td><?php echo $array[$i]->getCompetition(); ?></td>
        <td><?php echo $array[$i]->getHomeTeamScore(); ?></td>
        <td><?php echo $array[$i]->getAwayTeamScore(); ?></td>
    </tr>
    <?php } ?>
</table>


<?php

$content = ob_get_clean(); 
$title = "Accueil";
require("template.php");

?>