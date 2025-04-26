
rule TrojanDropper_O97M_Obfuse_RS_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.RS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 49 6e 74 28 [0-07] 20 2a 20 31 30 30 29 } //1
		$a_03_1 = {20 3d 20 22 5c 73 76 63 68 6f 73 74 22 20 2b 20 53 74 72 28 [0-07] 29 20 2b 20 22 2e 65 78 65 22 } //1
		$a_00_2 = {45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 74 6d 70 66 69 6c 65 } //1 Environ("USERPROFILE") & tmpfile
		$a_03_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 28 ?? 2c 20 22 6f 70 65 6e 22 2c 20 66 69 6c 65 6e 61 6d 65 2c 20 22 22 2c 20 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 2c 20 ?? 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}