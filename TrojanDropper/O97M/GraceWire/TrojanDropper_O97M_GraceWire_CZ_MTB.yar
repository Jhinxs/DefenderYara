
rule TrojanDropper_O97M_GraceWire_CZ_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 65 72 73 68 6c 65 70 20 3d 20 22 22 20 2b 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 } //1 dershlep = "" + Dialog4.TextBox1.Tag
		$a_01_1 = {73 4f 66 62 6c 20 3d 20 6f 66 62 6c 20 2b 20 66 6c 61 79 53 74 72 69 6e 67 20 2b 20 22 2e 64 6c 6c 22 } //1 sOfbl = ofbl + flayString + ".dll"
		$a_01_2 = {6c 69 71 75 69 64 4f 6e 65 20 3d 20 6c 69 71 75 69 64 4f 6e 65 20 2b 20 22 6c 2e 78 6c 73 78 22 } //1 liquidOne = liquidOne + "l.xlsx"
		$a_01_3 = {43 6f 6d 70 6f 73 69 74 69 6f 6e 20 64 65 72 73 68 6c 65 70 20 2b 20 22 22 20 2b 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 2e 54 61 67 20 2b 20 22 22 20 2b 20 22 22 2c 20 73 4f 66 62 6c 2c 20 4e 75 6d 42 46 6f 72 52 65 61 64 2c 20 73 65 6e 64 69 6e 67 73 } //1 Composition dershlep + "" + UserForm1.Label1.Tag + "" + "", sOfbl, NumBForRead, sendings
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}