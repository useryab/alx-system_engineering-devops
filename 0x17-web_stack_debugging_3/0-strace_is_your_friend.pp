#fix bug
#Ruby script that uses the exec method to execute a shell command
#
exec { 'update': #Sets the path for executing the command. In this case, it's set to /bin, which is a common directory for executable files.
  path    => '/bin',
  command => "sed -i -e 's/phpp/php/g' /var/www/html/wp-settings.php",
}
