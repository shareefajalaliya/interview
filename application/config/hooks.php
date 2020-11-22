<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$hook['post_controller_constructor'][] = array(
    'class'    => 'LanguageLoader',
    'function' => 'initialize',
    'filename' => 'Signature.php',
    'filepath' => 'hooks'
);

$hook['post_controller_constructor'][] = array(
    'class'    => 'ReplicaLoader',
    'function' => 'initialize',
    'filename' => 'Signature.php',
    'filepath' => 'hooks'
);

$hook['post_controller_constructor'][] = array(
    'class'    => 'DefaultPostLoader',
    'function' => 'initialize',
    'filename' => 'Signature.php',
    'filepath' => 'hooks'
);

// $hook['pre_controller_constructor'][] = array(
//     'class'    => 'DefaultPreLoader',
//     'function' => 'initialize',
//     'filename' => 'Signature.php',
//     'filepath' => 'hooks'
// );
