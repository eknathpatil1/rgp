$msi="$env:TEMP\nmemplpro_agent.msi"

Invoke-WebRequest -Uri "https://drive.google.com/file/d/1D3OXdb3xgU-wl1eT5lTv3T-JmDHnGuD2/view?usp=sharing" -OutFile $msi

while (!(Test-Path $msi)) {
    Start-Sleep -Seconds 2
}

Start-Sleep -Seconds 5

Start-Process msiexec.exe -Wait -ArgumentList "/i `"$msi`" PASSWORD=`"Fahed#786`" CLOUD_ADD=Y CLOUD_ACCOUNT=`"fahedjagirdar1@gmail.com`" CLOUD_PASSWORD=`"Fahed#786`" /qn"

netsh advfirewall firewall add rule name="NetMonitor_TCP_4495" dir=in action=allow protocol=TCP localport=4495
