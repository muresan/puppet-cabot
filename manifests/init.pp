# Class: cabot
# ===========================
#
# Full description of class cabot here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#   See README
#
class cabot {
  $cabot_source                 = $cabot::params::source,
  $cabot_version                = $cabot::params::version,

  $cabot_plugins                = $cabot::params::plugins_enabled,

  $cabot_database_url           = $cabot::params::database_url,
  $cabot_django_settings_module = $cabot::params::django_settings_module,
  $cabot_hipchat_url            = $cabot::params::hipchat_url,
  $cabot_port                   = $cabot::params::port,
  $cabot_log_file               = $cabot::params::log_file,

  $cabot_time_zone              = $cabot::params::time_zone,

  $cabot_admin_email            = $cabot::params::admin_email,
  $cabot_from_email             = $cabot::params::from_email,

} inherits cabot::params {

  class {'cabot::database': }->
  class {'cabot::install':  }->
  class {'cabot::config':   }->
  class {'cabot::service':  }

}

