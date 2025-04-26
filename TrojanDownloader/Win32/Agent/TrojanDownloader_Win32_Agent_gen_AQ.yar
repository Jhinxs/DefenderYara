
rule TrojanDownloader_Win32_Agent_gen_AQ{
	meta:
		description = "TrojanDownloader:Win32/Agent.gen!AQ,SIGNATURE_TYPE_PEHSTR,2a 00 28 00 07 00 00 "
		
	strings :
		$a_01_0 = {52 45 53 53 44 54 2e 65 78 65 00 73 79 73 00 5c 52 45 53 53 44 54 2e 73 79 73 00 5c 73 79 73 61 76 65 2e 65 78 65 } //10 䕒卓呄攮數猀獹尀䕒卓呄献獹尀祳慳敶攮數
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 70 69 6e 67 20 31 32 37 2e 31 20 2d 6e 20 34 20 3e 6e 75 6c 20 32 3e 6e 75 6c 20 3e 22 43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 73 79 73 2e 62 61 74 22 20 26 20 20 65 63 68 6f 20 64 65 6c } //10 cmd.exe /c echo ping 127.1 -n 4 >nul 2>nul >"C:\Program Files\sys.bat" &  echo del
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 77 73 63 73 76 63 26 6e 65 74 20 73 74 6f 70 20 73 68 61 72 65 64 61 63 63 65 73 73 26 73 63 20 63 6f 6e 66 69 67 20 73 68 61 72 65 64 61 63 63 65 73 73 20 73 74 61 72 74 3d 20 64 69 73 61 62 6c 65 64 26 73 63 20 63 6f 6e 66 69 67 20 77 73 63 73 76 63 20 73 74 61 72 74 3d 20 64 69 73 61 62 6c 65 64 } //10 cmd.exe /c net stop wscsvc&net stop sharedaccess&sc config sharedaccess start= disabled&sc config wscsvc start= disabled
		$a_01_3 = {73 74 6f 70 20 4d 63 53 68 69 65 6c 64 26 6e 65 74 20 73 74 6f 70 20 22 4e 6f 72 74 6f 6e 20 41 6e 74 69 56 69 72 75 73 20 53 65 72 76 65 72 } //10 stop McShield&net stop "Norton AntiVirus Server
		$a_01_4 = {72 65 6d 6f 74 65 63 6f 6e 74 72 6f 6c } //1 remotecontrol
		$a_01_5 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 52 69 73 69 6e 67 5c 41 6e 74 69 53 70 79 77 61 72 65 5c 69 65 70 72 6f 74 2e 64 6c 6c } //1 C:\Program Files\Rising\AntiSpyware\ieprot.dll
		$a_01_6 = {62 69 72 64 6c 75 63 6b 36 2e 63 6e 2f 72 6f 6f 74 2f 73 79 73 75 70 64 61 74 65 } //1 birdluck6.cn/root/sysupdate
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=40
 
}