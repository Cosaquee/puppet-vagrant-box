Vagrant.configure("2") do |config|

  config.vm.define "puppetmaster" do |puppetmaster|
    puppetmaster.vm.box = "ubuntu/xenial64"
    puppetmaster.vm.hostname = 'puppetmaster'
    puppetmaster.vm.network "private_network", ip: "192.168.50.2"

    puppetmaster.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "puppetmaster"]
    end

    puppetmaster.vm.provision :shell, path: "scripts/puppetmaster.sh"
    puppetmaster.vm.provision :shell, path: "scripts/modules.sh"
  end

  config.vm.define "slave" do |slave|
    slave.vm.box = "ubuntu/xenial64"
    slave.vm.hostname = 'slave'
    slave.vm.network "private_network", ip: "192.168.50.3"

    slave.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "slave"]
    end

    slave.vm.provision :shell, path: "scripts/puppetagent.sh"

    slave.vm.provision "puppet" do |puppet|
      puppet.environment_path = "environments"
      puppet.environment = "production"
      puppet.module_path = "modules"
      puppet.options = "--verbose --debug" # if you want to see detailed output from Puppet provision uncomment this lin
    end
  end

  # On every machine you will have your directory where is Vagrantfile available under /vagrant on quest machine
  config.vm.synced_folder ".", "/vagrant"
end
