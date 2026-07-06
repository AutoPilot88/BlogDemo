<?php

namespace App\View;

use Smarty\Smarty;

class View
{
    private static ?Smarty $smarty = null;

    public static function render(string $template, array $data = []): string
    {
        $smarty = self::getSmarty();
        $smarty->assign($data);

        return $smarty->fetch($template);
    }

    private static function getSmarty(): Smarty
    {
        if (self::$smarty === null) {
            $basePath = dirname(__DIR__, 2);
            $compileDir = $basePath . '/runtime/smarty/compile';
            $cacheDir = $basePath . '/runtime/smarty/cache';

            foreach ([$compileDir, $cacheDir] as $dir) {
                if (!is_dir($dir)) {
                    mkdir($dir, 0775, true);
                }
            }

            self::$smarty = new Smarty();
            self::$smarty->setTemplateDir($basePath . '/templates');
            self::$smarty->setCompileDir($compileDir);
            self::$smarty->setCacheDir($cacheDir);
            $app_name = getenv('APP_NAME') ?: 'BlogPost';
            self::$smarty->assign('app_name', $app_name);
        }

        return self::$smarty;
    }
}
