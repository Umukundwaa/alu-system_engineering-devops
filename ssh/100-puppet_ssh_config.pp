# Configures SSH client to use private key and refuse password auth

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^.*IdentityFile.*$',
}

file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^.*PasswordAuthentication.*$',
}
