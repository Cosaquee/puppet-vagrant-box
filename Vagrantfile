Vagrant.configure("2") do |config|

  config.vm.define "slave1" do |slave1|
    slave1.vm.box = "ubuntu/xenial64"
    slave1.vm.hostname = 'slave1'

    slave1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "slave1"]
    end
  end

  config.vm.define "slave2" do |slave2|
    slave2.vm.box = "ubuntu/xenial64"
    slave2.vm.hostname = 'slave2'

    slave2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "slave2"]
    end
  end
end
