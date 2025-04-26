
rule TrojanDownloader_O97M_Donoff_MXI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.MXI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 5e 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 } //2 = "^owershell.exe
		$a_01_1 = {24 74 3d 5b 53 79 73 74 65 6d 2e 54 65 78 74 2e 45 6e 63 6f 64 69 6e 67 5d 3a 3a 41 53 43 49 49 2e 47 65 74 53 74 72 69 6e 67 28 24 4d 6f 29 7c 49 45 58 } //2 $t=[System.Text.Encoding]::ASCII.GetString($Mo)|IEX
		$a_03_2 = {6d 69 7a 20 3d 20 52 65 70 6c 61 63 65 28 [0-10] 2c 20 22 5e 22 2c 20 22 50 22 29 } //2
		$a_01_3 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 37 32 22 20 26 20 4d 4d 4d 29 } //2 = GetObject("new:72" & MMM)
		$a_01_4 = {52 75 6e 20 73 20 26 20 6d 69 7a 2c 20 53 69 6e 28 30 2e 31 29 } //2 Run s & miz, Sin(0.1)
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=10
 
}
rule TrojanDownloader_O97M_Donoff_MXI_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.MXI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 CreateObject("WScript.Shell")
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 6d 69 63 72 6f 73 6f 66 74 2e 78 6d 6c 68 74 74 70 22 29 } //1 CreateObject("microsoft.xmlhttp")
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 CreateObject("Shell.Application")
		$a_01_3 = {53 61 76 65 54 6f 46 69 6c 65 20 53 4f 4c 2c 20 50 4f 4c 20 2b 20 50 4f 4c } //1 SaveToFile SOL, POL + POL
		$a_01_4 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 61 64 6f 64 62 2e 73 74 72 65 61 6d 22 29 } //1 CreateObject("adodb.stream")
		$a_01_5 = {57 73 68 53 68 65 6c 6c 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 4e 65 74 68 6f 6f 64 22 29 } //1 WshShell.SpecialFolders("Nethood")
		$a_01_6 = {53 74 61 74 75 73 20 3d 20 32 30 30 20 54 68 65 6e } //1 Status = 200 Then
		$a_01_7 = {47 6a 67 67 76 68 47 6a 66 64 6a 6b 4b 64 73 28 29 } //1 GjggvhGjfdjkKds()
		$a_01_8 = {41 73 20 53 74 72 69 6e 67 20 3d 20 22 7a 65 62 72 61 73 63 64 66 67 68 69 6a 6b 6c 6d 6e 6f 70 71 74 75 76 77 78 79 22 } //1 As String = "zebrascdfghijklmnopqtuvwxy"
		$a_01_9 = {41 73 20 53 74 72 69 6e 67 20 3d 20 22 5a 45 42 52 41 53 43 44 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 54 55 56 57 58 59 22 } //1 As String = "ZEBRASCDFGHIJKLMNOPQTUVWXY"
		$a_01_10 = {56 62 47 4a 64 6a 64 64 68 67 75 6b 73 28 30 29 } //1 VbGJdjddhguks(0)
		$a_01_11 = {4c 48 6c 79 67 79 74 72 64 79 74 64 64 72 58 79 74 72 55 64 72 28 30 29 } //1 LHlygytrdytddrXytrUdr(0)
		$a_01_12 = {42 48 4a 63 66 68 64 66 67 47 59 64 75 66 59 75 66 28 30 29 } //1 BHJcfhdfgGYdufYuf(0)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}