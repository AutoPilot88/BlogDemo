<?php

require __DIR__ . '/../vendor/autoload.php';

use ScssPhp\ScssPhp\Compiler;

$scssFile = __DIR__ . '/../assets/scss/app.scss';
$cssFile = __DIR__ . '/../public/css/app.css';

$compiler = new Compiler();
$compiler->setImportPaths(dirname($scssFile));

if (!is_dir(dirname($cssFile))) {
    mkdir(dirname($cssFile), 0775, true);
}

$css = $compiler->compileString(file_get_contents($scssFile))->getCss();
file_put_contents($cssFile, $css);

echo "Compiled " . basename($scssFile) . " -> " . $cssFile . PHP_EOL;
