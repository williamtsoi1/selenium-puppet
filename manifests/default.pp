node default {
  include java
  include display
  class { 'selenium::hub': }
  class { 'selenium::node': }
  class { 'firefox':
    version => '38.0.1-0ubuntu1'
  }
  include 'chrome'
  Class['java'] -> Class['selenium::hub']
  Class['java'] -> Class['selenium::node']
  Class['display'] -> Class['selenium::node']
}
