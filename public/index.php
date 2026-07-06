<?php

require __DIR__ . '/../vendor/autoload.php';

use Smarty\Smarty;

$compileDir = __DIR__ . '/../runtime/smarty/compile';
$cacheDir = __DIR__ . '/../runtime/smarty/cache';

foreach ([$compileDir, $cacheDir] as $dir) {
    if (!is_dir($dir)) {
        mkdir($dir, 0775, true);
    }
}

$smarty = new Smarty();
$smarty->setTemplateDir(__DIR__ . '/../templates');
$smarty->setCompileDir($compileDir);
$smarty->setCacheDir($cacheDir);

$smarty->assign('title', 'BlogDemo');
$smarty->display('example.tpl');
