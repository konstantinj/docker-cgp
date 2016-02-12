<?php
$CONFIG['graph_type'] = 'hybrid'
foreach (glob('/config/*.php') as $f) {
  require_once $f;
}
