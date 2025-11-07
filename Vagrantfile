# Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"  # Ubuntu 22.04 LTS
  config.vm.hostname = "spos-zabbix-agent"
  config.vm.network "private_network", type: "dhcp"

  config.vm.provision "shell", path: "scripts/install_zabbix_agent2.sh"
  config.vm.provision "shell", path: "scripts/configure_zabbix_agent2.sh"
end
