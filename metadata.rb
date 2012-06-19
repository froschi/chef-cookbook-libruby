maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libruby"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

recipe           "libruby::1.8", ""
recipe           "libruby::1.9.1", ""

depends          "libgdbm", ">= 0.0.1"
depends          "libffi", ">= 0.0.1"
depends          "libncurses", ">= 0.0.1"
depends          "libncursesw", ">= 0.0.1"
depends          "libreadline", ">= 0.0.1"
depends          "libssl", ">= 0.0.1"
depends          "libtinfo", ">= 0.0.1"
depends          "libyaml", ">= 0.0.1"
