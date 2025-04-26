
rule TrojanDropper_O97M_GraceWire_AE_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.AE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 6c 57 2e 72 69 74 65 28 6f 75 74 66 70 2c } //1 Call lW.rite(outfp,
		$a_01_1 = {6f 75 74 70 75 74 2e 72 61 77 22 } //1 output.raw"
		$a_01_2 = {46 4d 4f 44 5f 45 72 72 6f } //1 FMOD_Erro
		$a_01_3 = {2e 43 6f 70 79 48 65 72 65 20 6f 62 6a 46 6f 6c 64 65 72 2e 49 74 65 6d 73 2e } //1 .CopyHere objFolder.Items.
		$a_03_4 = {2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 55 73 65 72 46 6f 72 6d ?? 2e 54 65 78 74 42 6f 78 ?? 2e 54 61 67 29 } //1
		$a_01_5 = {23 49 66 20 56 42 41 37 20 54 68 65 6e } //1 #If VBA7 Then
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}