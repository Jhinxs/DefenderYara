
rule TrojanDownloader_O97M_Powdow_PR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {46 69 6c 65 6f 75 74 78 2e 57 72 69 74 65 20 28 22 57 73 68 53 68 65 6c 6c 2e 52 75 6e } //1 Fileoutx.Write ("WshShell.Run
		$a_02_1 = {72 6f 64 2e 4f 70 65 6e 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c [0-05] 2e 76 62 73 } //1
		$a_00_2 = {28 22 70 6f 77 65 72 73 68 65 6c 6c 20 2d 6e 6f 65 78 69 74 20 2d 65 6e 63 } //1 ("powershell -noexit -enc
		$a_00_3 = {41 47 55 41 63 77 42 70 41 47 51 41 50 51 42 47 41 44 67 41 4f 41 41 32 41 44 63 41 4e 41 41 77 41 44 67 41 51 51 42 46 41 45 59 41 52 41 41 78 41 44 51 41 4e 77 41 33 41 43 55 41 4d 67 41 78 41 44 4d 41 4e 41 41 79 41 44 41 41 4a 67 42 68 41 48 55 41 64 41 42 6f 41 47 73 41 } //1 AGUAcwBpAGQAPQBGADgAOAA2ADcANAAwADgAQQBFAEYARAAxADQANwA3ACUAMgAxADMANAAyADAAJgBhAHUAdABoAGsA
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}