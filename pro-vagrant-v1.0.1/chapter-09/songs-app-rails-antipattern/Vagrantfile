Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty32"

  config.vm.network :forwarded_port, guest: 3000, host: 3333, host_ip: "127.0.0.1"

  config.vm.provision "shell", path: "install-puppet-modules.sh"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "default.pp"
    puppet.options = ['--verbose']
  end

$script = <<SCRIPT

cd /vagrant
rails server -b 0.0.0.0 -d

SCRIPT

  config.vm.provision "shell", inline: $script, run: "always"

  config.vm.post_up_message = "The application is available at http://127.0.0.1:3333"

end
