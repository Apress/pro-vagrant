Vagrant.configure(2) do |config|
  config.vm.box = "rails-v1.0.0"
  config.vm.box_url = "http://boxes.gajdaw.pl/rails/rails-v1.0.0.box"
  config.vm.box_download_checksum_type = "sha256"
  config.vm.box_download_checksum = "8de7ffb087209970536e9e693dd3af10f5605e1031c652f530e69213bb5983d3"
  config.vm.network :forwarded_port, guest: 3000, host: 3000, host_ip: "127.0.0.1"

$script = <<SCRIPT

cd /vagrant
rails server -b 0.0.0.0 -d

SCRIPT

  config.vm.provision "shell", inline: $script, run: "always"

  config.vm.post_up_message = "The application is available at http://127.0.0.1:3000"
end
