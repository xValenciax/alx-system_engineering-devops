# Puppet Manifest: 1-install_a_package.pp

# Ensure Python and pip are installed
package { 'python3-pip':
  ensure => installed,
}

package { 'python3':
  ensure => installed,
}

# Install Flask 2.1.0 using pip
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => [
    Package['python3-pip'],  # Ensure python3-pip is installed first
    Package['python3'],      # Ensure python3 is installed first
  ],
}

# Install Werkzeug 2.1.1 using pip
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip',
  require  => [
    Package['python3-pip'],  # Ensure python3-pip is installed first
    Package['python3'],      # Ensure python3 is installed first
  ],
}
