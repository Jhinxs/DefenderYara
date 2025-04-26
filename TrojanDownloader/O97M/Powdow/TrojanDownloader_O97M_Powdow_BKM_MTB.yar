
rule TrojanDownloader_O97M_Powdow_BKM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.BKM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 61 6c 6c 31 20 3d 20 22 57 69 6e 64 6f 77 73 50 6f 22 20 2b 20 22 77 65 72 53 68 65 6c 6c 5c 76 31 2e 30 5c 70 6f 77 22 20 2b 20 22 65 72 73 68 65 6c 6c 2e 65 78 65 22 } //1 call1 = "WindowsPo" + "werShell\v1.0\pow" + "ershell.exe"
		$a_01_1 = {73 74 61 72 74 20 2f 4d 49 4e 20 43 3a 5c 57 69 6e 64 6f 22 20 2b 20 22 77 73 5c 53 79 73 57 4f 57 36 34 5c 22 20 2b 20 63 61 6c 6c 31 20 2b 20 22 20 2d 77 69 6e 20 31 20 2d 65 6e 63 20 22 20 2b 20 65 6e 63 } //1 start /MIN C:\Windo" + "ws\SysWOW64\" + call1 + " -win 1 -enc " + enc
		$a_03_2 = {62 61 74 63 68 20 3d 20 22 [0-1e] 2e 62 61 74 22 } //1
		$a_01_3 = {69 20 3d 20 53 68 65 6c 6c 28 62 61 74 63 68 2c 20 30 29 } //1 i = Shell(batch, 0)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}