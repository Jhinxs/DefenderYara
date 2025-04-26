
rule TrojanDownloader_O97M_Qakbot_PBC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.PBC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 65 74 20 46 53 4f 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 Set FSO = CreateObject("Scripting.FileSystemObject")
		$a_00_1 = {46 53 4f 2e 43 6f 70 79 46 69 6c 65 20 61 30 66 44 54 6c 2c 20 61 72 65 56 68 36 2c 20 31 } //1 FSO.CopyFile a0fDTl, areVh6, 1
		$a_00_2 = {61 56 76 74 51 55 20 3d 20 53 70 6c 69 74 28 61 75 36 76 73 54 28 66 72 6d 2e 70 61 74 68 73 2e 74 65 78 74 29 2c 20 22 7c 22 29 } //1 aVvtQU = Split(au6vsT(frm.paths.text), "|")
		$a_00_3 = {44 69 6d 20 61 77 43 53 44 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c } //1 Dim awCSD As New Shell32.Shell
		$a_00_4 = {43 61 6c 6c 20 61 77 43 53 44 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 61 4a 74 54 64 57 2c 20 61 47 42 4d 6c 4b 2c 20 22 20 22 2c 20 53 57 5f 48 49 44 45 29 } //1 Call awCSD.ShellExecute(aJtTdW, aGBMlK, " ", SW_HIDE)
		$a_00_5 = {61 70 36 45 31 20 3d 20 61 75 36 76 73 54 28 66 72 6d 2e 70 61 79 6c 6f 61 64 2e 74 65 78 74 29 } //1 ap6E1 = au6vsT(frm.payload.text)
		$a_00_6 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 61 57 6f 31 49 33 22 2c 20 61 72 65 56 68 36 2c 20 61 46 33 75 79 70 20 26 20 22 6d 61 74 20 3a 20 22 22 22 20 26 20 61 31 5a 4d 79 55 20 26 20 22 22 22 22 } //1 Application.Run "aWo1I3", areVh6, aF3uyp & "mat : """ & a1ZMyU & """"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}