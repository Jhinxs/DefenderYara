
rule TrojanDropper_O97M_GraceWire_CI_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 52 50 20 3d 20 22 25 22 20 26 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 } //1 PRP = "%" & Dialog4.TextBox1.Tag
		$a_01_1 = {44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 3d 20 63 61 72 2e 43 68 65 63 6b 43 61 72 28 72 65 64 6f 4d 6f 63 68 75 70 2c 20 44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 33 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 26 20 22 22 29 } //1 Dialog4.TextBox3.Tag = car.CheckCar(redoMochup, Dialog4.TextBox3.ControlTipText & "")
		$a_01_2 = {44 69 61 6c 6f 67 34 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 3d 20 72 65 64 6f 4d 6f 63 68 75 70 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 50 52 50 20 2b 20 22 25 22 29 } //1 Dialog4.TextBox1.Tag = redoMochup.ExpandEnvironmentStrings(PRP + "%")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}