
rule TrojanDropper_O97M_GraceWire_DL_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.DL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {43 6f 22 20 2b 20 22 70 79 22 20 2b 20 22 48 65 72 65 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 68 61 72 76 65 73 74 2e 49 74 65 6d 73 2e 49 74 65 6d 28 4c 72 69 67 61 74 29 } //1 Co" + "py" + "Here", VbMethod, harvest.Items.Item(Lrigat)
		$a_01_1 = {52 61 6e 67 65 28 22 41 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 24 30 22 } //1 Range("A2").Formula = "$0"
		$a_01_2 = {52 61 6e 67 65 28 22 4e 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 30 25 22 } //1 Range("N2").Formula = "0%"
		$a_01_3 = {74 6d 70 20 3d 20 53 70 6c 69 74 28 72 73 2c 20 22 3b 22 29 } //1 tmp = Split(rs, ";")
		$a_01_4 = {44 69 6d 20 74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 49 20 41 73 20 42 6f 6f 6c 65 61 6e } //1 Dim tooolsetChunkI As Boolean
		$a_01_5 = {44 69 6d 20 74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 51 20 41 73 20 42 6f 6f 6c 65 61 6e } //1 Dim tooolsetChunkQ As Boolean
		$a_01_6 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 56 6f 6f 6f 6f 6f 68 65 61 64 28 29 } //1 Public Function Vooooohead()
		$a_01_7 = {47 65 74 50 2e 61 72 61 6d 20 3d 20 22 22 } //1 GetP.aram = ""
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}