
rule TrojanDropper_O97M_GraceWire_DY_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.DY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {44 69 6d 20 53 70 65 63 69 61 6c 50 61 74 68 20 41 73 20 53 74 72 69 6e 67 } //1 Dim SpecialPath As String
		$a_01_1 = {53 65 74 20 63 61 72 20 3d 20 4e 65 77 20 4c 75 6d 65 6e 65 } //1 Set car = New Lumene
		$a_01_2 = {53 65 74 20 54 53 50 49 50 20 3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c } //1 Set TSPIP = New IWshRuntimeLibrary.WshShell
		$a_01_3 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 52 65 64 42 75 74 74 6f 6e 28 64 49 6d 6d 65 72 20 41 73 20 44 6f 75 62 6c 65 29 } //1 Public Function RedButton(dImmer As Double)
		$a_01_4 = {73 20 3d 20 22 4d 69 6e 6f 72 20 68 65 61 6c 74 68 20 70 72 6f 62 6c 65 6d 73 22 } //1 s = "Minor health problems"
		$a_01_5 = {43 20 3d 20 4d 69 2e 64 24 28 43 6f 6d 6d 61 2e 6e 64 24 2c 20 49 2c 20 31 29 } //1 C = Mi.d$(Comma.nd$, I, 1)
		$a_01_6 = {74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 49 20 3d 20 46 61 6c 73 65 } //1 tooolsetChunkI = False
		$a_01_7 = {74 6f 6f 6f 6c 73 65 74 43 68 75 6e 6b 51 20 3d 20 46 61 6c 73 65 } //1 tooolsetChunkQ = False
		$a_01_8 = {47 65 74 50 2e 61 72 61 6d 20 3d 20 22 22 } //1 GetP.aram = ""
		$a_01_9 = {64 65 72 73 68 6c 65 70 20 2b 20 22 22 20 2b 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 2e 54 61 67 } //1 dershlep + "" + UserForm1.Label1.Tag
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}