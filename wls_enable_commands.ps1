Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux;
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart;

wsl --set-default-version 2;

