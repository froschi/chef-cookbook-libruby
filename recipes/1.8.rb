include_recipe "libncurses"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libruby1.8
  /
when "precise"
  include_recipe "libgdbm"
  include_recipe "libreadline"
  include_recipe "libssl"

  packages |= %w/
    libruby1.8
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
