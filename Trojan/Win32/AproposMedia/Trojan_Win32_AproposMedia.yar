
rule Trojan_Win32_AproposMedia{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 70 72 6f 70 6f 73 43 6c 69 65 6e 74 55 6e 49 6e 73 74 61 6c 6c 65 72 49 73 52 75 6e 6e 69 6e 67 } //3 AproposClientUnInstallerIsRunning
		$a_01_1 = {41 70 72 6f 70 6f 73 43 6c 69 65 6e 74 54 65 72 6d 69 6e 61 74 65 } //3 AproposClientTerminate
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 41 70 72 6f 70 6f 73 5c 43 6c 69 65 6e 74 } //2 Software\Apropos\Client
		$a_01_3 = {41 70 72 6f 70 6f 73 55 6e 69 6e 73 74 2e 69 6e 69 } //3 AproposUninst.ini
		$a_01_4 = {61 64 63 68 61 6e 6e 65 6c 2e 61 } //1 adchannel.a
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*3+(#a_01_4  & 1)*1) >=9
 
}
rule Trojan_Win32_AproposMedia_2{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 70 72 6f 70 6f 73 43 6c 69 65 6e 74 55 6e 49 6e 73 74 61 6c 6c 65 72 49 73 52 75 6e 6e 69 6e 67 } //3 AproposClientUnInstallerIsRunning
		$a_01_1 = {41 70 72 6f 70 6f 73 43 6c 69 65 6e 74 54 65 72 6d 69 6e 61 74 65 } //3 AproposClientTerminate
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 41 64 4d 65 64 69 61 5c 43 6c 69 65 6e 74 } //2 Software\AdMedia\Client
		$a_01_3 = {41 64 4d 65 64 69 61 55 6e 69 6e 73 74 2e 69 6e 69 } //2 AdMediaUninst.ini
		$a_01_4 = {41 70 72 6f 70 6f 73 4f 62 73 65 72 76 65 72 3a 3a } //3 AproposObserver::
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*3) >=9
 
}
rule Trojan_Win32_AproposMedia_3{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 68 65 6c 70 65 72 3a 3a 52 65 67 69 73 74 72 79 3a 3a 72 65 61 64 5f 73 74 72 69 6e 67 3a 20 52 65 67 51 75 65 72 79 56 61 6c 75 65 45 78 20 66 61 69 6c 65 64 2e 20 4c 61 73 74 20 65 72 72 6f 72 20 3d 20 30 78 } //1 Winhelper::Registry::read_string: RegQueryValueEx failed. Last error = 0x
		$a_01_1 = {68 74 74 70 3a 2f 2f 36 36 2e 39 38 2e 31 33 38 2e 39 32 2f 50 48 2f } //3 http://66.98.138.92/PH/
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 41 70 72 6f 70 6f 73 5c 43 6c 69 65 6e 74 } //2 SOFTWARE\Apropos\Client
		$a_01_3 = {2f 73 74 61 74 75 73 } //1 /status
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=7
 
}
rule Trojan_Win32_AproposMedia_4{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_01_0 = {40 57 69 6e 64 6f 77 40 57 69 6e 33 32 40 47 55 49 40 57 69 6e 47 65 6e 65 72 69 63 73 40 40 53 41 } //2 @Window@Win32@GUI@WinGenerics@@SA
		$a_01_1 = {57 69 6e 47 65 6e 65 72 69 63 73 2e 64 6c 6c } //1 WinGenerics.dll
		$a_01_2 = {41 64 43 68 61 6e 6e 65 6c 52 65 73 70 6f 6e 73 65 3a 3a } //3 AdChannelResponse::
		$a_01_3 = {41 64 43 6f 6e 74 61 69 6e 65 72 57 69 6e 64 6f 77 3a 3a } //3 AdContainerWindow::
		$a_00_4 = {7b 00 38 00 38 00 35 00 36 00 46 00 39 00 36 00 31 00 2d 00 33 00 34 00 30 00 41 00 2d 00 31 00 31 00 44 00 30 00 2d 00 41 00 39 00 36 00 42 00 2d 00 30 00 30 00 43 00 30 00 34 00 46 00 44 00 37 00 30 00 35 00 41 00 32 00 7d 00 } //3 {8856F961-340A-11D0-A96B-00C04FD705A2}
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_00_4  & 1)*3) >=12
 
}
rule Trojan_Win32_AproposMedia_5{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 "
		
	strings :
		$a_01_0 = {50 61 72 74 6e 65 72 49 64 } //1 PartnerId
		$a_01_1 = {43 74 78 50 6c 73 } //3 CtxPls
		$a_01_2 = {49 6e 73 74 61 6c 6c 61 74 69 6f 6e 49 64 } //1 InstallationId
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 2e 63 6f 6e 74 65 78 74 70 6c 75 73 2e 6e 65 74 } //3 download.contextplus.net
		$a_01_4 = {61 64 63 68 61 6e 6e 65 6c 2e 63 6f 6e 74 65 78 74 70 6c 75 73 2e 6e 65 74 } //3 adchannel.contextplus.net
		$a_01_5 = {2f 61 70 72 6f 70 6f 73 2f 63 6c 69 65 6e 74 2f 4c 44 56 5f 3c 3c 76 65 72 73 69 6f 6e 3e 3e } //3 /apropos/client/LDV_<<version>>
		$a_01_6 = {2f 73 68 61 72 65 64 2f 4d 73 76 63 70 36 30 49 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //3 /shared/Msvcp60Installer.exe
		$a_01_7 = {2f 73 65 72 76 69 63 65 73 2f 41 55 53 65 72 76 65 72 } //3 /services/AUServer
		$a_01_8 = {43 74 78 50 6c 75 73 } //3 CtxPlus
		$a_01_9 = {48 6f 6f 6b 44 6c 6c 2e 64 6c 6c } //1 HookDll.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*3+(#a_01_8  & 1)*3+(#a_01_9  & 1)*1) >=18
 
}
rule Trojan_Win32_AproposMedia_6{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 65 72 53 65 73 73 69 6f 6e 49 73 53 74 61 72 74 65 64 } //3 LoaderSessionIsStarted
		$a_01_1 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 63 6f 6e 74 65 78 74 70 6c 75 73 2e 6e 65 74 2f 73 68 61 72 65 64 2f 4d 73 76 63 70 36 30 49 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //5 http://download.contextplus.net/shared/Msvcp60Installer.exe
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 41 75 74 6f 4c 6f 61 64 65 72 } //1 Software\AutoLoader
		$a_01_3 = {41 75 74 6f 4c 6f 61 64 65 72 53 65 73 73 69 6f 6e } //1 AutoLoaderSession
		$a_01_4 = {41 75 74 6f 55 70 64 61 74 65 72 49 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //1 AutoUpdaterInstaller.exe
		$a_01_5 = {61 64 63 68 61 6e 6e 65 6c 2e 63 6f 6e 74 65 78 74 70 6c 75 73 2e 6e 65 74 } //1 adchannel.contextplus.net
		$a_01_6 = {41 70 72 6f 70 6f 73 43 6c 69 65 6e 74 49 6e 73 74 61 6c 6c 65 72 } //3 AproposClientInstaller
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*3) >=10
 
}
rule Trojan_Win32_AproposMedia_7{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 52 51 57 8b da 03 52 3c 8b 7a 78 03 fb 57 ff 72 7c 8b f0 8b c8 4e c1 e9 10 e3 37 8b 4f 18 8b 77 20 03 f3 92 ad 56 8d 34 18 38 56 02 75 07 51 33 c9 ff d5 04 59 5e 3b c2 74 09 e2 e8 5f 5f 91 8b f0 eb 27 2b f3 2b 77 20 d1 ee 03 77 24 0f b7 74 1e fe c1 e6 02 03 77 1c 03 f3 ad 03 c3 59 5f 2b f8 77 07 03 f9 77 03 33 f6 96 5f 59 5a 5b c3 } //2
		$a_01_1 = {60 ff 74 24 30 ff 74 24 30 ff 74 24 30 ff d5 11 33 c0 89 45 36 89 45 62 89 45 66 b0 e0 ff d5 02 92 8d 7a 2b 89 6a 2f ff d5 0b 8b 7d 3a 8b 55 52 33 c9 b0 f0 ff d5 02 96 b1 06 ad 56 ff d5 03 80 f9 03 77 08 51 33 c9 ff d5 07 91 59 ff d5 0c 5e e2 e8 61 33 c0 c3 } //2
		$a_01_2 = {53 4d 41 20 4d 2e 38 20 43 6f 72 65 2e 20 62 79 20 5a 75 66 79 78 65 00 46 00 69 00 6c 00 65 00 00 00 44 00 65 00 62 00 67 00 00 00 4b 00 65 00 79 00 73 00 00 00 41 00 75 00 74 00 6f 00 00 00 45 6e 75 6d 5c 52 6f 6f 74 5c 4c 45 47 41 43 59 5f 5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 00 00 73 00 5c 00 00 00 4b 00 45 00 52 00 4e 00 45 00 4c 00 33 00 32 00 77 00 69 00 6e } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}
rule Trojan_Win32_AproposMedia_8{
	meta:
		description = "Trojan:Win32/AproposMedia,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 47 65 6e 65 72 69 63 73 2e 64 6c 6c 00 } //1
		$a_01_1 = {4c 6f 67 67 69 6e 67 40 57 69 6e 47 65 6e 65 72 69 63 73 } //1 Logging@WinGenerics
		$a_01_2 = {57 69 6e 64 6f 77 73 48 6f 6f 6b 73 53 74 6f 72 61 67 65 3a } //1 WindowsHooksStorage:
		$a_01_3 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c } //1 InternetCrackUrl
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}