packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libruby1.9.1
  /
when "precise"
  packages |= %w/
    libruby1.9.1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
