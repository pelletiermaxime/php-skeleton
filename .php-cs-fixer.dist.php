<?php

require 'vendor/autoload.php';

use Dpfs\PhpCsFixer\Config;

$config = Config\Factory::fromRuleSet(new Config\RuleSet\PHP74());

$finder = PhpCsFixer\Finder::create()
    ->in(['src'])
    ->name('*.php')
    ->ignoreDotFiles(true)
    ->ignoreVCS(true);

$config->setFinder($finder);

return $config;
