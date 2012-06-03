apt_repository "redis-server" do
  action :add

  if node[:redis][:package][:unstable]
    uri "http://ppa.launchpad.net/rwky/redis-unstable/ubuntu"
  else
    uri "http://ppa.launchpad.net/rwky/redis/ubuntu"
  end

  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "5862E31D"
  notifies :run, "execute[apt-get update]", :immediately
end

package "redis-server" do
  version node[:redis][:package][:version] if node[:redis][:package][:version]
end

service "redis-server" do
  action [:enable, :start]
  provider Chef::Provider::Service::Upstart
end
