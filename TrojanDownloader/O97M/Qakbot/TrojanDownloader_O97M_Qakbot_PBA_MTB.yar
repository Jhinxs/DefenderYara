
rule TrojanDownloader_O97M_Qakbot_PBA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.PBA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {53 65 74 20 46 53 4f 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 Set FSO = CreateObject("Scripting.FileSystemObject")
		$a_00_1 = {46 53 4f 2e 43 6f 70 79 46 69 6c 65 20 61 45 38 6d 4d 2c 20 61 39 68 79 49 2c 20 31 } //1 FSO.CopyFile aE8mM, a9hyI, 1
		$a_00_2 = {61 33 46 6b 67 20 3d 20 53 70 6c 69 74 28 61 57 59 4a 6a 28 66 72 6d 2e 70 61 74 68 73 2e 74 65 78 74 29 2c 20 22 7c 22 29 } //1 a3Fkg = Split(aWYJj(frm.paths.text), "|")
		$a_00_3 = {43 61 6c 6c 20 61 75 30 44 77 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 61 6b 64 5a 33 2c 20 61 6a 65 57 6c 2c 20 22 20 22 2c 20 53 57 5f 48 49 44 45 29 } //1 Call au0Dw.ShellExecute(akdZ3, ajeWl, " ", SW_HIDE)
		$a_00_4 = {61 35 56 6c 54 72 20 3d 20 61 57 59 4a 6a 28 66 72 6d 2e 70 61 79 6c 6f 61 64 2e 74 65 78 74 29 } //1 a5VlTr = aWYJj(frm.payload.text)
		$a_00_5 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 61 62 66 35 43 22 2c 20 61 39 68 79 49 2c 20 61 4d 59 36 76 58 20 26 20 22 6d 61 74 20 3a 20 22 22 22 20 26 20 61 38 34 6f 46 20 26 20 22 22 22 22 } //1 Application.Run "abf5C", a9hyI, aMY6vX & "mat : """ & a84oF & """"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}