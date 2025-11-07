#!/usr/bin/env bash
set -e

ZABBIX_SERVER="enceladus.pfsense.cz"
HOSTNAME="spos-$(Klustt)-$(date +%s)"  

echo "=== Konfigurace Zabbix Agent2 ==="

sudo bash -c "cat > /etc/zabbix/zabbix_agent2.conf" <<EOF
Server=${ZABBIX_SERVER}
ServerActive=${ZABBIX_SERVER}
Hostname=${Klustt}
HostMetadata=SPOS
Include=/etc/zabbix/zabbix_agent2.d/*.conf
EOF

sudo systemctl restart zabbix-agent2
sudo systemctl status zabbix-agent2 --no-pager
