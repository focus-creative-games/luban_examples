<?php
    require_once("Gen/schema.php");

    $tables = new \cfg\Tables(function ($name) {
        $content = file_get_contents("../GenerateDatas/json/$name.json");
        //$content = iconv("gbk", "utf-8", $content);
        $json = json_decode($content, true);
        return $json;
    });

    print_r($tables);
?>
