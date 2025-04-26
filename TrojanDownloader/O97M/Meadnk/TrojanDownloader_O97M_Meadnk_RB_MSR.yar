
rule TrojanDownloader_O97M_Meadnk_RB_MSR{
	meta:
		description = "TrojanDownloader:O97M/Meadnk.RB!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_01_1 = {22 57 73 22 } //1 "Ws"
		$a_01_2 = {22 43 3a 5c 55 73 65 72 73 5c 70 75 62 6c 69 63 22 20 26 20 22 5c 52 65 61 64 4d 65 2e 74 78 74 2e 6c 6e 6b 22 } //1 "C:\Users\public" & "\ReadMe.txt.lnk"
		$a_01_3 = {26 20 22 63 72 22 } //1 & "cr"
		$a_01_4 = {26 20 22 69 70 22 } //1 & "ip"
		$a_01_5 = {26 20 22 74 2e 53 68 22 } //1 & "t.Sh"
		$a_01_6 = {26 20 22 65 6c 6c 22 } //1 & "ell"
		$a_01_7 = {3d 20 73 2e 43 72 65 61 74 65 53 68 6f 72 74 63 75 74 28 } //1 = s.CreateShortcut(
		$a_01_8 = {2e 54 61 72 67 65 74 50 61 74 68 20 3d 20 22 6d 73 68 74 61 2e 65 78 65 22 } //1 .TargetPath = "mshta.exe"
		$a_01_9 = {2e 53 61 76 65 } //1 .Save
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}