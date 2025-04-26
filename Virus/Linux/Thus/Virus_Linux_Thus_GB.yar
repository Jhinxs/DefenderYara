
rule Virus_Linux_Thus_GB{
	meta:
		description = "Virus:Linux/Thus.GB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 79 43 6f 64 65 20 3d 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 56 42 50 72 6f 6a 65 63 74 2e 56 42 43 6f 6d 70 6f 6e 65 6e 74 73 28 31 29 2e 43 6f 64 65 4d 6f 64 75 6c 65 2e 4c 69 6e 65 73 28 31 2c 20 32 30 29 } //1 MyCode = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 20)
		$a_01_1 = {53 65 74 20 48 6f 73 74 20 3d 20 4e 6f 72 6d 61 6c 54 65 6d 70 6c 61 74 65 2e 56 42 50 72 6f 6a 65 63 74 2e 56 42 43 6f 6d 70 6f 6e 65 6e 74 73 28 31 29 2e 43 6f 64 65 4d 6f 64 75 6c 65 } //1 Set Host = NormalTemplate.VBProject.VBComponents(1).CodeModule
		$a_01_2 = {49 66 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 20 3d 20 4e 6f 72 6d 61 6c 54 65 6d 70 6c 61 74 65 20 54 68 65 6e } //1 If ThisDocument = NormalTemplate Then
		$a_01_3 = {49 66 20 2e 4c 69 6e 65 73 28 31 2c 20 31 29 } //1 If .Lines(1, 1)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}