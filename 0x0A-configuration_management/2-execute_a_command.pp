# kill a process named killmenow

exec { 'terminate_process':
  command     => '/usr/bin/pkill -9 process_name',
  refreshonly => true,
}
