
rule TrojanDropper_O97M_GraceWire_BD_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 52 50 20 3d 20 22 25 22 20 26 20 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 } //1 PRP = "%" & UserForm6.TextBox1.Tag
		$a_01_1 = {55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 3d 20 41 63 74 69 76 65 48 6f 74 62 69 74 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 50 52 50 20 2b 20 22 25 22 29 } //1 UserForm6.TextBox1.Tag = ActiveHotbit.ExpandEnvironmentStrings(PRP + "%")
		$a_03_2 = {55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 3d 20 [0-08] 2e 43 68 65 63 6b 43 61 72 28 41 63 74 69 76 65 48 6f 74 62 69 74 2c 20 22 22 20 26 20 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 2b 20 22 22 29 90 0c 02 00 43 68 44 69 72 20 28 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 29 } //1
		$a_01_3 = {2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 22 20 2b } //1 .SpecialFolders("" +
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}