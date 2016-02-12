#!/bin/bash

cmd_php="php -S 0.0.0.0:80 -c php.ini -t /www"

init_config() {
  cat config.php>/www/conf/config.local.php
  echo "<?php">/config/__config.php
  for e in $(env); do
    case $e in
      CGP_*)
        e1=$(expr "$e" : 'CGP_\([A-Z_]*\)')
        e2=$(expr "$e" : '\([A-Z_]*\)')
        echo "\$config['${e1,,}'] = getenv('$e2');">>/config/__config.php
    esac
  done
}

$cmd_php
