#!/usr/bin/env bash
set -e

echo "=== Instalace Zabbix Agent2 7.0 LTS ==="

# Přidání repozitáře Zabbix
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-2+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_7.0-2+ubuntu22.04_all.deb
sudo apt update

# Instalace agenta
sudo apt install -y zabbix-agent2

# Povolení služby
sudo systemctl enable zabbix-agent2
sudo systemctl stop zabbix-agent2
