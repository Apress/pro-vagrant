Vagrant.configure(2) do |config|
  config.vm.box = "vagrant-jekyll-shell-v0.2.0"
  config.vm.network :forwarded_port, guest: 4000, host: 8100, host_ip: "127.0.0.1"


$script = <<SCRIPT

cd /vagrant
jekyll serve -H 0.0.0.0 --detach

SCRIPT

  config.vm.provision "shell", inline: $script, run: "always"


end
