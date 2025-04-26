
rule Trojan_O97M_Donoff_SD_MSR{
	meta:
		description = "Trojan:O97M/Donoff.SD!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,11 00 11 00 09 00 00 "
		
	strings :
		$a_00_0 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 } //2 ActiveDocument.AttachedTemplate.Path &
		$a_00_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 } //2 Application.StartupPath &
		$a_03_2 = {43 61 6c 6c 42 79 4e 61 6d 65 ?? 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 20 26 20 22 2e 22 20 26 20 [0-10] 29 } //5
		$a_00_3 = {44 65 62 75 67 2e 50 72 69 6e 74 } //1 Debug.Print
		$a_00_4 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 54 65 78 74 } //1 ActiveDocument.Content.Text
		$a_00_5 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Private Sub Document_Open()
		$a_00_6 = {31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 } //5 1Normal.ThisDocument
		$a_00_7 = {45 78 65 63 75 74 65 } //1 Execute
		$a_00_8 = {70 6f 77 65 72 } //1 power
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_03_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*5+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=17
 
}