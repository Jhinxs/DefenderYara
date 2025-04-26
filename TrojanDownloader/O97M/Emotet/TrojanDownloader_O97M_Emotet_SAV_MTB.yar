
rule TrojanDownloader_O97M_Emotet_SAV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {20 3d 20 22 5b 20 61 6e 20 5d 20 2b 72 6f 5b 20 61 6e 20 5d 20 2b 5b 20 61 6e 20 5d 20 2b 63 65 5b 20 61 6e 20 5d 20 2b 73 5b 20 61 6e 20 5d 20 2b 73 5b 20 61 6e 20 5d 20 2b 5b 20 61 6e 20 5d 20 2b 22 } //1  = "[ an ] +ro[ an ] +[ an ] +ce[ an ] +s[ an ] +s[ an ] +[ an ] +"
		$a_01_1 = {20 3d 20 22 5b 20 61 6e 20 5d 20 2b 3a 77 5b 20 61 6e 20 5d 20 2b 5b 20 61 6e 20 5d 20 2b 69 6e 5b 20 61 6e 20 5d 20 2b 33 5b 20 61 6e 20 5d 20 2b 32 5b 20 61 6e 20 5d 20 2b 5f 5b 20 61 6e 20 5d 20 2b 22 } //1  = "[ an ] +:w[ an ] +[ an ] +in[ an ] +3[ an ] +2[ an ] +_[ an ] +"
		$a_01_2 = {20 3d 20 22 77 5b 20 61 6e 20 5d 20 2b 69 6e 5b 20 61 6e 20 5d 20 2b 6d 5b 20 61 6e 20 5d 20 2b 67 6d 5b 20 61 6e 20 5d 20 2b 74 5b 20 61 6e 20 5d 20 2b 5b 20 61 6e 20 5d 20 2b 22 } //1  = "w[ an ] +in[ an ] +m[ an ] +gm[ an ] +t[ an ] +[ an ] +"
		$a_03_3 = {20 3d 20 52 65 70 6c 61 63 65 28 [0-25] 2c 20 22 5b 20 61 6e 20 5d 20 2b 22 2c 20 [0-25] 29 } //1
		$a_03_4 = {2e 43 72 65 61 74 65 20 [0-20] 2c 20 [0-20] 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}