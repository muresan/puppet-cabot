# Class: cabot
# ===========================
#
# Full description of class cabot here.
#
class cabot::params {
  $source                  = 'https://github.com/arachnys/cabot'
  $version                 = 'HEAD'

  $plugins_enabled         = 'cabot_alert_hipchat==1.7.0,cabot_alert_twilio==1.1.4,cabot_alert_email==1.3.1'

  $database_url            = ''
  $django_settings_module  = 'cabot.settings'
  $hipchat_url             = 'https://api.hipchat.com/v1/rooms/message'
  $port                    = '5000'
  $log_file                = '/dev/null'

  $time_zone               = 'Etc/UTC'

  $admin_email             = 'you@example.com'
  $from_email              = 'noreply@example.com'

}
