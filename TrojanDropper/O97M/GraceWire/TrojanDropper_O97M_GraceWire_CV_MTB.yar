
rule TrojanDropper_O97M_GraceWire_CV_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {76 61 72 52 65 73 31 20 3d 20 45 78 65 63 75 74 65 45 78 63 65 6c 34 4d 61 63 72 6f 28 22 43 41 4c 22 20 2b 20 22 4c 28 22 20 2b 20 73 4f 66 62 6c 20 2b 20 22 [0-10] 22 22 2c 22 22 4a 22 22 29 22 29 } //1
		$a_01_1 = {48 69 64 64 65 6e 45 45 34 4d 20 3d 20 4e 6f 74 20 48 69 64 64 65 6e 45 45 34 4d } //1 HiddenEE4M = Not HiddenEE4M
		$a_01_2 = {63 20 3d 20 4d 69 2e 64 24 28 43 6f 6d 6d 61 2e 6e 64 24 2c 20 69 2c 20 31 29 } //1 c = Mi.d$(Comma.nd$, i, 1)
		$a_01_3 = {43 68 44 69 72 20 28 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 29 } //1 ChDir (Dialog4.TextBox1.Tag)
		$a_03_4 = {44 6f 45 76 65 6e 74 73 90 0c 02 00 56 6f 6f 6f 6f 6f 68 65 61 64 90 0c 02 00 44 6f 45 76 65 6e 74 73 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}