Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-puppet"
  config.librarian_puppet.puppetfile_dir = "librarian"

  config.vm.define :server1 do |server1|
    server1.vm.network :private_network, :ip => "192.168.33.10"
    server1.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "server.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end

  config.vm.define :server2 do |server2|
    server2.vm.network :private_network, :ip => "192.168.33.11"
    server2.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "server.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end
end
