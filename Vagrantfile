Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.hostname = "spos-ubuntu-agent2"
  config.vm.network "private_network", ip: "192.168.56.20"

  # Provision – instalace a konfigurace Zabbix agenta
  config.vm.provision "shell", path: "scripts/install_zabbix_agent2.sh"
  config.vm.provision "shell", path: "scripts/configure_zabbix_agent2.sh"
end
