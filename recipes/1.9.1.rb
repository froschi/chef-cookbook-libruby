packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libncurses"

  packages |= %w/
    libruby1.9.1
  /
when "precise"
  include_recipe "libffi"
  include_recipe "libgdbm"
  include_recipe "libncursesw"
  include_recipe "libreadline"
  include_recipe "libssl"
  include_recipe "libtinfo"
  include_recipe "libyaml"

  packages |= %w/
    libruby1.9.1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
