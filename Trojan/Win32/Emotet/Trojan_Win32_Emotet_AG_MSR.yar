
rule Trojan_Win32_Emotet_AG_MSR{
	meta:
		description = "Trojan:Win32/Emotet.AG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 6a 65 63 74 33 2e 65 78 65 } //1 Project3.exe
		$a_01_1 = {7a 63 44 44 46 76 68 6a 6e 6d 55 66 64 53 41 77 4b 4d 4e 62 } //1 zcDDFvhjnmUfdSAwKMNb
		$a_01_2 = {41 63 74 78 } //1 Actx
		$a_01_3 = {43 68 6f 6f 73 65 20 61 20 46 6f 6c 64 65 72 20 6f 72 20 43 72 65 61 74 65 20 61 20 4e 65 77 20 4f 6e 65 } //1 Choose a Folder or Create a New One
		$a_01_4 = {4e 6f 20 53 65 6c 65 63 74 69 6f 6e } //1 No Selection
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_Emotet_AG_MSR_2{
	meta:
		description = "Trojan:Win32/Emotet.AG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 66 78 4f 6c 64 57 6e 64 50 72 6f 63 34 32 33 } //1 AfxOldWndProc423
		$a_01_1 = {41 66 78 4f 6c 65 43 6f 6e 74 72 6f 6c 37 30 73 } //1 AfxOleControl70s
		$a_01_2 = {53 6b 65 74 63 68 20 44 6f 63 75 6d 65 6e 74 } //1 Sketch Document
		$a_01_3 = {41 66 78 4d 44 49 46 72 61 6d 65 37 30 73 } //1 AfxMDIFrame70s
		$a_01_4 = {4c 6f 63 61 6c 20 41 70 70 57 69 7a 61 72 64 2d 47 65 6e 65 72 61 74 65 64 20 41 70 70 6c 69 63 61 74 69 6f 6e 73 } //1 Local AppWizard-Generated Applications
		$a_01_5 = {53 00 6b 00 65 00 74 00 63 00 68 00 20 00 4d 00 46 00 43 00 20 00 41 00 70 00 70 00 6c 00 69 00 } //1 Sketch MFC Appli
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}