
rule Backdoor_Win32_NetThief{
	meta:
		description = "Backdoor:Win32/NetThief,SIGNATURE_TYPE_PEHSTR,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 4e 65 74 54 68 69 65 66 2e 65 78 65 } //1 %s\NetThief.exe
		$a_01_1 = {40 6e 65 74 74 68 69 65 66 2e 6e 65 74 3f 73 75 62 6a 65 63 74 3d } //1 @netthief.net?subject=
		$a_01_2 = {43 4e 65 74 54 68 69 65 66 44 6f 63 } //1 CNetThiefDoc
		$a_01_3 = {5c 53 70 65 63 69 61 6c 2e 6b 65 79 66 69 6c 65 2e 73 65 63 75 72 69 74 79 } //1 \Special.keyfile.security
		$a_01_4 = {25 73 5c 52 65 6d 6f 74 65 43 6f 6d 70 75 74 65 72 2e 70 61 72 74 } //1 %s\RemoteComputer.part
		$a_01_5 = {63 6f 6e 73 6f 6c 65 47 65 74 52 65 73 75 6c 74 5f 43 61 6d 65 72 61 } //1 consoleGetResult_Camera
		$a_01_6 = {63 6f 6e 73 6f 6c 65 54 61 6b 65 4f 76 65 72 44 65 73 6b 74 6f 70 } //1 consoleTakeOverDesktop
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}
rule Backdoor_Win32_NetThief_2{
	meta:
		description = "Backdoor:Win32/NetThief,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 72 65 65 6e 73 74 75 66 66 73 6f 66 74 2e 6e 65 74 2f 6e 65 74 68 69 65 66 2d 63 61 6c 6c 62 6f 61 72 64 2f 4e 65 74 68 69 65 66 5f 56 65 72 73 69 6f 6e 2e 64 61 74 } //10 http://www.greenstuffsoft.net/nethief-callboard/Nethief_Version.dat
		$a_01_1 = {6d 61 69 6c 74 6f 3a 77 65 62 6d 61 73 74 65 72 40 67 72 65 65 6e 73 74 75 66 66 73 6f 66 74 2e 6e 65 74 3f 73 75 62 6a 65 63 74 3d } //10 mailto:webmaster@greenstuffsoft.net?subject=
		$a_01_2 = {4e 65 74 68 69 65 66 5f 53 65 72 76 65 72 2e 65 78 65 } //10 Nethief_Server.exe
		$a_01_3 = {46 74 70 50 61 73 73 77 6f 72 64 } //1 FtpPassword
		$a_01_4 = {4e 65 74 68 69 65 66 20 69 73 20 74 65 73 74 69 6e 67 2e 2e 2e 21 } //1 Nethief is testing...!
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=31
 
}
rule Backdoor_Win32_NetThief_3{
	meta:
		description = "Backdoor:Win32/NetThief,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6e 65 74 74 68 69 65 66 2e 6e 65 74 } //1 http://www.netthief.net
		$a_01_1 = {6d 61 69 6c 74 6f 3a 67 72 65 65 6e 73 74 75 66 66 40 6e 65 74 74 68 69 65 66 2e 6e 65 74 3f 73 75 62 6a 65 63 74 3d } //1 mailto:greenstuff@netthief.net?subject=
		$a_01_2 = {5c 52 65 6d 6f 74 65 43 6f 6d 70 75 74 65 72 2e 70 61 72 74 } //1 \RemoteComputer.part
		$a_01_3 = {5c 4d 61 6b 65 2e 63 66 67 } //1 \Make.cfg
		$a_01_4 = {5c 4d 61 6b 65 72 2e 65 78 65 } //1 \Maker.exe
		$a_01_5 = {5c 4e 65 74 54 68 69 65 66 2e 69 6e 69 } //1 \NetThief.ini
		$a_01_6 = {43 6f 6e 73 6f 6c 65 43 6f 72 65 2e 64 6c 6c } //1 ConsoleCore.dll
		$a_01_7 = {63 6f 6e 73 6f 6c 65 43 6f 6e 6e 65 63 74 52 65 6d 6f 74 65 43 6f 6d 70 75 74 65 72 } //1 consoleConnectRemoteComputer
		$a_01_8 = {63 6f 6e 73 6f 6c 65 47 65 74 52 65 73 75 6c 74 5f 4c 6f 67 69 6e 43 65 6e 74 72 61 6c 53 65 72 76 65 72 } //1 consoleGetResult_LoginCentralServer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}