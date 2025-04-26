
rule TrojanDropper_O97M_GraceWire_EC_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.EC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 52 65 64 42 75 74 74 6f 6e 28 64 49 6d 6d 65 72 20 41 73 20 44 6f 75 62 6c 65 29 } //1 Public Function RedButton(dImmer As Double)
		$a_01_1 = {44 69 6d 20 53 70 65 63 69 61 6c 50 61 74 68 20 41 73 20 53 74 72 69 6e 67 } //1 Dim SpecialPath As String
		$a_03_2 = {54 42 54 20 3d 20 50 52 50 90 0c 02 00 54 42 54 20 3d 20 54 42 54 20 2b } //1
		$a_01_3 = {54 42 54 20 3d 20 54 53 50 49 50 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 54 42 54 29 } //1 TBT = TSPIP.ExpandEnvironmentStrings(TBT)
		$a_01_4 = {43 68 44 69 72 20 28 46 6f 72 6d 30 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 2b 20 22 22 29 } //1 ChDir (Form0.TextBox1.Tag + "")
		$a_01_5 = {43 61 6c 6c 20 45 72 72 2e 52 61 69 73 65 28 39 39 39 39 2c 20 2c 20 4d 65 73 73 61 67 65 29 } //1 Call Err.Raise(9999, , Message)
		$a_01_6 = {43 61 6c 6c 20 43 68 65 63 6b 28 53 68 65 6c 2e 6c 33 32 2e 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 2c 20 62 28 31 29 2e 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 29 } //1 Call Check(Shel.l32.CurrentDirectory, b(1).CurrentDirectory)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDropper_O97M_GraceWire_EC_MTB_2{
	meta:
		description = "TrojanDropper:O97M/GraceWire.EC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 63 6f 64 65 32 20 4c 69 62 20 22 6b 65 72 6e 65 6c 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 53 65 74 44 65 66 61 75 6c 74 44 6c 6c 44 69 72 65 63 74 6f 72 69 65 73 22 20 28 42 79 56 61 6c 20 44 69 72 65 63 74 6f 72 79 46 6c 61 67 73 20 41 73 20 4c 6f 6e 67 29 20 41 73 20 4c 6f 6e 67 } //1 Public Declare Function code2 Lib "kernel32.dll" Alias "SetDefaultDllDirectories" (ByVal DirectoryFlags As Long) As Long
		$a_03_1 = {41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 53 61 76 65 41 73 20 57 68 65 72 65 54 6f 47 6f 2c 20 4c 6f 63 61 6c 3a 3d 46 61 6c 73 65 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 33 20 2a 20 37 20 2b 20 33 20 2a 20 37 20 2b 20 39 [0-08] 44 6f 45 76 65 6e 74 73 [0-08] 44 6f 45 76 65 6e 74 73 [0-08] 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 43 6c 6f 73 65 90 0c 02 00 44 6f 45 76 65 6e 74 73 } //1
		$a_01_2 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 45 78 43 68 61 6e 67 65 4d 6f 6e 65 79 28 29 } //1 Public Function ExChangeMoney()
		$a_01_3 = {4c 72 69 67 61 74 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 31 2e 54 61 67 } //1 Lrigat = UserForm1.Label11.Tag
		$a_01_4 = {52 61 6e 67 65 28 22 4c 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 24 30 22 } //1 Range("L2").Formula = "$0"
		$a_01_5 = {52 61 6e 67 65 28 22 4d 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 30 22 } //1 Range("M2").Formula = "0"
		$a_01_6 = {52 61 6e 67 65 28 22 4e 32 22 29 2e 46 6f 72 6d 75 6c 61 20 3d 20 22 30 25 22 } //1 Range("N2").Formula = "0%"
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}