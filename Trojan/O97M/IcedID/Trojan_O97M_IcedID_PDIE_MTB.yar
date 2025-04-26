
rule Trojan_O97M_IcedID_PDIE_MTB{
	meta:
		description = "Trojan:O97M/IcedID.PDIE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 73 74 72 72 65 76 65 72 73 65 28 61 63 74 69 76 65 64 6f 63 75 6d 65 6e 74 2e 63 75 73 74 6f 6d 64 6f 63 75 6d 65 6e 74 70 72 6f 70 65 72 74 69 65 73 28 73 74 72 69 6e 70 75 74 29 29 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 28 } //1 =strreverse(activedocument.customdocumentproperties(strinput))endfunctionfunction(
		$a_01_1 = {2e 72 65 6d 6f 76 65 28 76 7a 6c 64 63 64 6c 39 61 28 22 69 71 71 69 72 75 32 22 29 29 28 29 2e } //1 .remove(vzldcdl9a("iqqiru2"))().
		$a_01_2 = {2e 72 65 6d 6f 76 65 28 6c 61 6d 74 37 77 31 66 71 39 28 22 73 7a 6a 77 79 6b 62 32 22 29 29 28 29 2e } //1 .remove(lamt7w1fq9("szjwykb2"))().
		$a_01_3 = {6f 79 68 62 6d 68 62 6c 22 29 2c 76 62 67 65 74 2c 76 7a 6c 64 63 64 6c 39 61 28 22 7a 75 64 6c 66 32 74 62 65 22 29 29 } //1 oyhbmhbl"),vbget,vzldcdl9a("zudlf2tbe"))
		$a_01_4 = {62 73 61 70 70 75 6a 79 77 22 29 2c 76 62 67 65 74 2c 6c 61 6d 74 37 77 31 66 71 39 28 22 68 62 61 37 6a 61 65 22 29 } //1 bsappujyw"),vbget,lamt7w1fq9("hba7jae")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}