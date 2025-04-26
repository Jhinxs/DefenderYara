
rule TrojanDropper_O97M_GraceWire_BA_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 64 6c 6c 22 } //1 .dll"
		$a_03_1 = {3d 20 4a 6f 69 6e 28 41 72 72 61 79 28 55 73 65 72 46 6f 72 6d ?? 2e 54 65 78 74 42 6f 78 ?? 2e 54 61 67 2c 20 22 5c [0-15] 2e 78 6c 73 78 22 29 2c 20 22 22 29 } //1
		$a_03_2 = {55 73 65 72 46 6f 72 6d ?? 2e 54 65 78 74 42 6f 78 ?? 2e 56 61 6c 75 65 29 2c 20 22 22 29 } //1
		$a_01_3 = {22 2e 7a 69 70 22 29 2c 20 22 22 29 } //1 ".zip"), "")
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}