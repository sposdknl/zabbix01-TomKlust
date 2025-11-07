# Zabbix Agent2 Auto-Registration (SPOS)

## Popis
Projekt využívá **Vagrant** pro vytvoření virtuálního Ubuntu serveru a automatickou instalaci **Zabbix Agent2 (7.0 LTS)**.
Agent se po instalaci **automaticky registruje na Zabbix server `enceladus.pfsense.cz`** pomocí `HostMetadata=SPOS`.

## Struktura projektu
- `Vagrantfile` – konfigurace Vagrantu
- `scripts/install_zabbix_agent2.sh` – instalace agenta
- `scripts/configure_zabbix_agent2.sh` – konfigurace a aut. registrace
- `images/` – screenshot registrovaného hosta
- `exported_host/` – export hosta z Enceladu

## Nasazení
1. Spusťte příkaz:
   ```bash
   vagrant up
