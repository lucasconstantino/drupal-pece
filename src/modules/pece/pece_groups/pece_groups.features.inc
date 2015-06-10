<?php
/**
 * @file
 * pece_groups.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function pece_groups_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function pece_groups_node_info() {
  $items = array(
    'pece_group' => array(
      'name' => t('Group'),
      'base' => 'node_content',
      'description' => t('The main PECE group.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}