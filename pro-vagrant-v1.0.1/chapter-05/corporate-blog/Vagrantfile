Vagrant.configure(2) do |config|
  config.vm.box = "first-box-jekyll"
  config.vm.network :forwarded_port, guest: 4000, host: 8080, host_ip: "127.0.0.1"
end
