@echo off
openfiles > NUL 2>&1 
if not %ERRORLEVEL% == 0 (
  echo �Ǘ��Ҍ����Ŏ��s���܂��B
  powershell start-process \"%~f0\" -Verb runas
  goto exit
)

netsh advfirewall firewall add rule name="mocopi" dir=in action=allow protocol=udp localport=12351 profile=private,public localip=any