
rule TrojanDropper_O97M_GraceWire_CL_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6f 66 62 6c 20 3d 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 33 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 } //1 ofbl = Dialog4.TextBox3.ControlTipText
		$a_03_1 = {63 74 61 63 6b 50 75 70 20 3d 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 2b 20 22 5c [0-08] 22 } //1
		$a_03_2 = {63 74 61 63 6b 50 75 70 20 3d 20 63 74 61 63 6b 50 75 70 20 2b 20 22 [0-03] 2e 78 6c 73 78 22 } //1
		$a_01_3 = {63 74 61 63 6b 50 6f 70 20 3d 20 64 65 72 73 68 6c 65 70 20 26 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 33 2e 56 61 6c 75 65 } //1 ctackPop = dershlep & Dialog4.TextBox3.Value
		$a_01_4 = {46 69 6c 65 43 6f 70 79 20 63 74 61 63 6b 50 75 70 2c 20 63 74 61 63 6b 50 69 70 } //1 FileCopy ctackPup, ctackPip
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}