<?php

/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function d8profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {

  // Site Informaton Details
  $form['site_information']['site_name']['#default_value'] = 'Techx';
  $form['site_information']['site_mail']['#default_value'] = 'techx@example.com';
  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@example.com';

  // Date/time settings
  $form['regional_settings']['site_default_country']['#default_value'] = 'IN';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'Asia/Kolkata';

}