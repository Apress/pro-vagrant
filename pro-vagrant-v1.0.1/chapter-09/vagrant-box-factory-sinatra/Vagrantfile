Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu1404-i386-puppetlatest-1.0.16"

  config.ssh.insert_key = false

  # Only during build
  config.vm.provision "file", source: "box-version.txt", destination: "box-version.txt"
  config.vm.provision "file", source: "box-name.txt", destination: "box-name.txt"
  config.vm.provision "file", source: "box-author.txt", destination: "box-author.txt"
  config.vm.provision "file", source: "box-date.txt", destination: "box-date.txt"

  config.vm.provision "file", source: "guestvm", destination: "/home/vagrant/guestvm"
  config.vm.provision "shell", inline: "mv /home/vagrant/guestvm /usr/bin && chmod 755 /usr/bin/guestvm"

  config.vm.provision "shell", path: "install-puppet-modules.sh"
  config.vm.provision "puppet"

end
