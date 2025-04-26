
rule Trojan_O97M_Donoff_SB_MSR{
	meta:
		description = "Trojan:O97M/Donoff.SB!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 06 00 00 "
		
	strings :
		$a_00_0 = {31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 } //2 1Normal.ThisDocument
		$a_00_1 = {3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 22 22 20 26 20 4e 65 72 6f 70 } //5 = Application.StartupPath & "" & Nerop
		$a_00_2 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 20 22 5c 70 70 3a 62 72 22 } //5 = ActiveDocument.AttachedTemplate.Path & "\pp:br"
		$a_00_3 = {45 78 65 63 75 74 65 } //1 Execute
		$a_00_4 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Private Sub Document_Open()
		$a_00_5 = {70 6f 77 65 72 } //1 power
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=9
 
}