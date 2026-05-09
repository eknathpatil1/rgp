Start-Process msiexec.exe -ArgumentList '/i "nmemplpro_agent.msi" PASSWORD="Fahed#786" CLOUD_ADD=Y CLOUD_ACCOUNT="fahedj" CLOUD_PASSWORD="Fahed#786" /qn' -Wait

netsh advfirewall firewall add rule name="NetMonitor_TCP_4495" dir=in action=allow protocol=TCP localport=4495