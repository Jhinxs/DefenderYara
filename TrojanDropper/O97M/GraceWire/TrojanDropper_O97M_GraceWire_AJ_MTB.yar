
rule TrojanDropper_O97M_GraceWire_AJ_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.AJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e } //1 #If Win64 Then
		$a_01_1 = {46 4d 4f 44 5f 4f 4b 20 54 68 65 6e } //1 FMOD_OK Then
		$a_01_2 = {44 65 62 75 67 2e 50 72 69 6e 74 20 22 45 72 72 6f 72 20 6f 63 63 75 72 65 64 20 77 68 65 6e 20 74 72 79 20 74 6f 20 73 61 76 65 20 22 20 26 20 77 42 6f 6f 6b 2e 4e 61 6d 65 } //1 Debug.Print "Error occured when try to save " & wBook.Name
		$a_01_3 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 42 6f 78 57 53 4c 20 5f } //1 Private Declare PtrSafe Function BoxWSL _
		$a_01_4 = {46 4d 4f 44 5f 53 79 73 2e 74 65 6d 5f 49 6e 69 74 } //1 FMOD_Sys.tem_Init
		$a_01_5 = {3d 20 4d 69 64 24 28 43 6f 6d 6d 61 6e 64 24 2c 20 69 2c 20 31 29 } //1 = Mid$(Command$, i, 1)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}