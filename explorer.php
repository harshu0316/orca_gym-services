<?php
$dir = __DIR__;

function listFolderFiles($dir){
    $ffs = scandir($dir);
    echo '<ul>';
    foreach($ffs as $ff){
        if($ff != '.' && $ff != '..'){
            echo '<li>'.$ff;
            if(is_dir($dir.'/'.$ff)) listFolderFiles($dir.'/'.$ff);
            echo '</li>';
        }
    }
    echo '</ul>';
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Folder Explorer</title>
</head>
<body>
    <h2>Folders and Files in <?php echo $dir; ?></h2>
    <?php listFolderFiles($dir); ?>
</body>
</html>