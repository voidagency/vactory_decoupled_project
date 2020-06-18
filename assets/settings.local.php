<?php

// @codingStandardsIgnoreFile

/**
 * CONFIG SYNC.
 */
$settings['config_sync_directory'] = 'profiles/contrib/vactory_decoupled/config/sync';

/**
 * Suppress ITOK.
 */
$config['image.settings']['suppress_itok_output'] = TRUE;
$config['image.settings']['allow_insecure_derivatives'] = TRUE;

/**
 * Private file path.
 */
$settings['file_private_path'] = 'sites/default/private';

/**
 * Public file path.
 */
$settings['file_public_path'] = 'sites/default/files';

/**
 * File system temporary.
 */
$config['system.file']['path']['temporary'] = '/tmp';
