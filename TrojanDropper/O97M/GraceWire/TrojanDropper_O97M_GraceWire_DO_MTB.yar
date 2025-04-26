
rule TrojanDropper_O97M_GraceWire_DO_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.DO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {64 20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 45 78 63 65 6c 43 2c 20 22 45 78 65 22 20 2b 20 22 63 75 74 65 45 22 20 2b 20 22 78 63 65 6c 34 4d 61 63 72 6f 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 22 43 41 4c 22 20 2b 20 22 4c 28 22 20 2b 20 73 4f 66 62 6c 20 2b 20 22 [0-10] 22 22 2c 22 22 4a 22 22 29 22 29 } //1
		$a_01_1 = {73 4f 66 62 6c 20 3d 20 22 22 22 22 20 2b 20 73 4f 66 62 6c 20 26 } //1 sOfbl = """" + sOfbl &
		$a_01_2 = {64 65 72 73 68 6c 65 70 20 3d 20 22 22 20 2b 20 46 6f 72 6d 30 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 } //1 dershlep = "" + Form0.TextBox1.Tag
		$a_01_3 = {3d 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 31 2e 54 61 67 } //1 = UserForm1.Label11.Tag
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}