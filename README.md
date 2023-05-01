# PHP Project Skeleton

This package can be used as a skeleton to create a new php app, package or library

## Instructions

* Clone this project
* Delete the .git directory and git init your new project
* Rename the project in composer.json, in the .gitlab-ci.yml and in the phpstan config
* Update the php versions and parallel pipeline for the php versions your project support

## Features

* Satis-check: Script that make sure all your dependencies are downloaded from satis
* PHPunit: Basic config with all cache activated
* PHPStan: Basic config in level 5 with a few extra checks from higher levels
* PHP_CodeSniffer: Validates extra PSR-12 rules and case rules that are not in PSRs
* PHP CS Fixer: Validate coding style using the dpfs/php-cs-fixer-configs ruleset
* Grumphp: Installs git pre-commit hooks to run phpcs, php-cs-fixer, phpstan and phpunit before every commit
* Gitlab-ci: Basic pipeline to run composer, run phpstan, phpcs, php-cs-fixer and then automatically update the package in satis