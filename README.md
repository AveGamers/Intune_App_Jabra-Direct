# Intune_Jabra-Direct-app
> Install The Jabra Direct App for your users. With Jabra Connect you can control your Jabra Headset and connect new ones. 
> Also used to update the firmware.

## Create Package
> The run.bat file downloads the latest JabraDirectSetup.exe file and compiles it into an .intunewin File. 

## Install command
> JabraDirectSetup.exe /install /quiet /norestart

## Uninstall command
> JabraDirectSetup.exe /uninstall /quiet /norestart

## Detection rules
> Rule type: Registry
> Key Path: HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Jabra\Direct
> Value name: Version
> Detection method: Version comparison
> Operator: Greater than or equal to
> Value: 6.17.21310 (Or the current version)
> Associated with a 32-bit app on 64-bit clients: No

## Upgrading from an older Version
> If you already have an older Version of Jabra packaged, user the Superscedence-Function to replace the old version

## Links
> https://intuneswdeployment.com/jabra-direct/
> https://jabraxpressonlineprdstor.blob.core.windows.net/jdo/JabraDirectSetup.exe