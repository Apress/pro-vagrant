Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu1404-i386-puppetlatest-1.0.16"

  config.ssh.insert_key = false

  # Copy all box-*.txt files into /home/vagrant/ in Guest OS
  config.vm.provision "file", source: "box-version.txt", destination: "box-version.txt"
  config.vm.provision "file", source: "box-name.txt", destination: "box-name.txt"
  config.vm.provision "file", source: "box-author.txt", destination: "box-author.txt"
  config.vm.provision "file", source: "box-date.txt", destination: "box-date.txt"

  # Create /usr/bin/guestvm script in Guest OS
  config.vm.provision "file", source: "guestvm", destination: "/home/vagrant/guestvm"
  config.vm.provision "shell", inline: "mv /home/vagrant/guestvm /usr/bin && chmod 755 /usr/bin/guestvm"

  config.vm.provision "puppet" do |puppet|
    puppet.module_path    = "puppet/modules"
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "default.pp"
  end

end
