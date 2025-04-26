
rule TrojanDownloader_O97M_Donoff_AY{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AY,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {54 68 65 6e 20 47 6f 54 6f 20 44 65 63 72 79 70 74 } //1 Then GoTo Decrypt
		$a_02_1 = {26 20 43 68 72 24 28 41 73 63 28 4d 69 64 24 28 [0-0f] 2c 20 49 2c 20 31 29 29 20 2b 20 41 73 63 28 4d 69 64 24 28 [0-0f] 2c 20 4a 2c 20 31 29 29 29 } //1
		$a_00_2 = {2e 53 61 76 65 54 6f 46 69 6c 65 } //1 .SaveToFile
		$a_00_3 = {2e 4d 6f 64 65 20 3d 20 33 } //1 .Mode = 3
		$a_00_4 = {57 73 68 53 68 65 6c 6c 2e 52 75 6e } //1 WshShell.Run
		$a_00_5 = {3d 20 57 73 68 53 68 65 6c 6c 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 } //1 = WshShell.ExpandEnvironmentStrings(
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}