
rule TrojanDownloader_O97M_Dridex_DA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.DA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {6e 75 6d 6d 20 3d 20 53 70 6c 69 74 28 7a 6f 6f 2c 20 22 3d 22 29 3a } //1 numm = Split(zoo, "="):
		$a_00_1 = {3d 20 52 65 70 6c 61 63 65 28 45 75 72 6f 70 65 2c 20 76 2c 20 55 4b 29 3a } //1 = Replace(Europe, v, UK):
		$a_00_2 = {44 65 62 75 67 2e 50 72 69 6e 74 20 76 20 26 } //1 Debug.Print v &
		$a_00_3 = {45 78 65 63 75 74 65 45 78 63 65 6c 34 4d 61 63 72 6f 28 22 22 20 26 20 61 66 66 69 6c 69 61 74 65 73 29 } //1 ExecuteExcel4Macro("" & affiliates)
		$a_00_4 = {3d 20 53 70 6c 69 74 28 63 69 74 79 6f 6e 65 2c 20 22 21 22 29 } //1 = Split(cityone, "!")
		$a_00_5 = {3d 20 64 65 6c 69 76 65 72 73 28 75 6e 64 6f 6f 29 3a } //1 = delivers(undoo):
		$a_00_6 = {3d 20 53 70 6c 69 74 28 6e 75 6d 6d 28 30 29 2c 20 22 21 22 29 3a } //1 = Split(numm(0), "!"):
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}