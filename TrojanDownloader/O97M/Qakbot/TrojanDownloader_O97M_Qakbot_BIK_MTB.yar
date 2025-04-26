
rule TrojanDownloader_O97M_Qakbot_BIK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.BIK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 61 39 34 36 38 75 22 2c 20 61 6a 6e 7a 63 57 2c 20 61 43 6d 51 31 20 26 20 22 6d 61 74 20 3a 20 22 20 26 20 61 7a 4d 66 55 20 26 20 61 7a 57 31 58 20 26 20 61 7a 4d 66 55 } //1 Application.Run "a9468u", ajnzcW, aCmQ1 & "mat : " & azMfU & azW1X & azMfU
		$a_01_1 = {43 61 6c 6c 20 61 62 37 39 4d 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 61 73 4b 6c 72 68 2c 20 61 70 76 6d 63 2c 20 22 20 22 2c 20 53 57 5f 48 49 44 45 29 } //1 Call ab79M.ShellExecute(asKlrh, apvmc, " ", SW_HIDE)
		$a_01_2 = {3d 20 53 70 6c 69 74 28 61 39 48 36 34 28 66 72 6d 2e 70 61 74 68 73 2e 74 65 78 74 29 2c 20 22 7c 22 29 } //1 = Split(a9H64(frm.paths.text), "|")
		$a_01_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 = CreateObject("Scripting.FileSystemObject")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}