
rule TrojanDropper_O97M_GraceWire_ED_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.ED!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 62 65 6d 61 78 20 4c 69 62 20 22 72 67 6f 63 31 2e 64 6c 6c 22 20 28 29 20 41 73 20 49 6e 74 65 67 65 72 } //1 Public Declare Function bemax Lib "rgoc1.dll" () As Integer
		$a_01_1 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 62 65 6d 61 78 20 4c 69 62 20 22 72 67 6f 63 32 2e 64 6c 6c 22 20 28 29 20 41 73 20 49 6e 74 65 67 65 72 } //1 Public Declare PtrSafe Function bemax Lib "rgoc2.dll" () As Integer
		$a_01_2 = {6f 66 62 6c 20 3d 20 6f 66 62 6c 20 2b 20 22 5c 72 67 6f 63 22 } //1 ofbl = ofbl + "\rgoc"
		$a_01_3 = {64 65 72 73 68 6c 65 70 20 3d 20 22 22 20 26 20 46 6f 72 6d 30 2e 54 65 78 74 42 6f 78 33 2e 54 61 67 } //1 dershlep = "" & Form0.TextBox3.Tag
		$a_01_4 = {52 61 6e 67 65 28 22 45 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 24 30 22 } //1 Range("E2").Formula = "$0"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}