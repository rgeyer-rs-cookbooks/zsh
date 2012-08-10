maintainer       "Ryan J. Geyer"
maintainer_email "me@ryangeyer.com"
license          "Apache 2"
description      "Installs/Configures zsh"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

supports "mac_os_x"

depends "rightscale"

recipe "zsh::default", "Doesn't really do much"
recipe "zsh::do_set_as_user_shell", "Sets the current users shell to zsh permanently.  This should be run interactively with sudo"
recipe "zsh::install_oh_my_zsh", "Installs the OMZ framework, potentially from a specified branch/fork"

attribute "zsh/user",
  :display_name => "Username",
  :description =>  "User for which to set Zsh as the default shell",
  :recipes => ["zsh::do_set_as_user_shell"],
  :required => "required"

attribute "zsh/omz/theme",
  :display_name => "OMZ Theme",
  :recipes => ["zsh::install_oh_my_zsh"],
  :required => "optional",
  :default => "random"

attribute "zsh/omz/plugins",
  :display_name => "OMZ Plugins",
  :recipes => ["zsh::install_oh_my_zsh"],
  :required => "optional"