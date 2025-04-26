
rule TrojanDropper_O97M_GraceWire_EK_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.EK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {6f 66 62 6c 20 3d 20 6f 66 62 6c 20 2b 20 22 5c 6c 69 62 52 65 71 22 } //1 ofbl = ofbl + "\libReq"
		$a_01_1 = {6c 69 71 75 69 64 4f 6e 65 20 3d 20 46 6f 72 6d 30 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 2b 20 22 5c 61 63 61 64 65 6d 22 } //1 liquidOne = Form0.TextBox1.Tag + "\academ"
		$a_01_2 = {56 69 73 74 61 51 20 6c 69 71 75 69 64 4f 6e 65 } //1 VistaQ liquidOne
		$a_01_3 = {46 69 6c 65 43 6f 70 79 20 53 6f 75 72 63 65 3a 3d 6c 69 71 75 69 64 4f 6e 65 2c 20 44 65 73 74 69 6e 61 74 69 6f 6e 3a 3d 63 74 61 63 6b 50 69 70 } //1 FileCopy Source:=liquidOne, Destination:=ctackPip
		$a_01_4 = {4c 72 69 67 61 74 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 31 2e 43 61 70 74 69 6f 6e } //1 Lrigat = UserForm1.Label11.Caption
		$a_01_5 = {44 65 73 74 69 6e 61 74 69 6f 6e 4b 61 74 2e 43 6f 70 79 48 65 72 65 20 68 61 72 76 65 73 74 2e 49 74 65 6d 73 2e 49 74 65 6d 28 22 22 20 2b 20 4c 72 69 67 61 74 29 } //1 DestinationKat.CopyHere harvest.Items.Item("" + Lrigat)
		$a_01_6 = {52 61 6e 67 65 28 22 45 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 24 30 22 } //1 Range("E2").Formula = "$0"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}