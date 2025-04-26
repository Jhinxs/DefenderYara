
rule TrojanDropper_O97M_GraceWire_BP_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 68 65 63 6b 43 61 72 20 3d 20 63 61 72 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 22 20 2b 20 44 72 69 76 65 29 } //1 CheckCar = car.SpecialFolders("" + Drive)
		$a_01_1 = {76 53 70 65 65 64 20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 6f 72 6b 73 68 65 65 74 46 75 6e 63 74 69 6f 6e 2e 4d 61 78 28 76 53 70 65 65 64 2c 20 2d 31 30 30 29 } //1 vSpeed = Application.WorksheetFunction.Max(vSpeed, -100)
		$a_03_2 = {43 61 73 65 20 30 [0-15] 73 20 3d 20 22 4e 6f 20 68 65 61 6c 74 68 20 70 72 6f 62 6c 65 6d 73 22 } //1
		$a_01_3 = {2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 3d 20 63 61 72 2e 43 68 65 63 6b 43 61 72 28 41 63 74 69 76 65 48 6f 74 62 69 74 2c 20 22 22 20 26 } //1 .TextBox3.Tag = car.CheckCar(ActiveHotbit, "" &
		$a_01_4 = {2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 26 20 22 22 29 } //1 .TextBox3.Tag & "")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}