class sublimetext( $ensure = 'present' ) {

  # Only support Ubuntu at the moment
  if operatingsystem == 'Ubuntu'{
    include apt
    apt::ppa { 'ppa:webupd8team/sublime-text-2': }
    
    -> package{ 'sublime-text':
      ensure => $ensure,
    }
  }
}
