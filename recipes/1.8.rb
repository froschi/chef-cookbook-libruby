packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libruby1.8
  /
when "precise"
  packages |= %w/
    libruby1.8
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
