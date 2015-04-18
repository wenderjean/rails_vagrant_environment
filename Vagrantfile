Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-puppet"
  config.librarian_puppet.puppetfile_dir = "librarian"

  config.vm.define :server do |server1|
    server.vm.network :private_network, :ip => "192.168.33.10"
    server.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "server.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end
end
