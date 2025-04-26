
rule TrojanDownloader_O97M_IcedID_RVD_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {4f 70 65 6e 20 61 65 52 50 66 6a 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 Open aeRPfj For Output As #1
		$a_00_1 = {61 6a 73 64 52 4a 28 53 70 6c 69 74 28 61 6d 45 34 46 5a 2c 20 22 2c 22 29 29 } //1 ajsdRJ(Split(amE4FZ, ","))
		$a_00_2 = {50 72 69 6e 74 20 23 31 2c 20 61 6a 78 50 69 } //1 Print #1, ajxPi
		$a_00_3 = {61 4d 35 77 55 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 61 49 43 46 6c 35 2c 20 61 7a 65 54 38 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c } //1 aM5wU.ShellExecute aICFl5, azeT8, " ", SW_SHOWNORMAL
		$a_00_4 = {61 63 75 34 57 38 20 26 20 43 68 72 28 61 6e 36 41 65 72 28 61 66 36 79 72 4e 29 20 58 6f 72 20 34 29 } //1 acu4W8 & Chr(an6Aer(af6yrN) Xor 4)
		$a_00_5 = {61 68 32 59 39 42 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 } //1 ah2Y9B = ActiveDocument.Content
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}