
rule _PseudoThreat_c000104d{
	meta:
		description = "!PseudoThreat_c000104d,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd7 00 ffffffd7 00 0a 00 00 "
		
	strings :
		$a_01_0 = {64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 26 61 64 76 69 64 3d } //100 download.php?&advid=
		$a_00_1 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 78 70 75 70 64 61 74 65 2e 65 78 65 } //50 C:\Windows\xpupdate.exe
		$a_01_2 = {46 6f 72 63 65 41 63 74 69 76 65 44 65 73 6b 74 6f 70 4f 6e } //10 ForceActiveDesktopOn
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 44 65 73 6b 74 6f 70 5c 47 65 6e 65 72 61 6c } //10 SOFTWARE\Microsoft\Internet Explorer\Desktop\General
		$a_01_4 = {57 61 6c 6c 70 61 70 65 72 46 69 6c 65 54 69 6d 65 } //10 WallpaperFileTime
		$a_01_5 = {57 69 6e 64 6f 77 73 20 75 70 64 61 74 65 20 6c 6f 61 64 65 72 } //10 Windows update loader
		$a_01_6 = {53 4f 46 54 57 41 52 45 5c 49 6e 73 74 61 6c 6c } //10 SOFTWARE\Install
		$a_01_7 = {50 72 6f 78 79 53 65 72 76 65 72 } //5 ProxyServer
		$a_01_8 = {50 72 6f 78 79 45 6e 61 62 6c 65 } //5 ProxyEnable
		$a_00_9 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 } //5 Software\Microsoft\Windows\CurrentVersion\Internet Settings
	condition:
		((#a_01_0  & 1)*100+(#a_00_1  & 1)*50+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_00_9  & 1)*5) >=215
 
}