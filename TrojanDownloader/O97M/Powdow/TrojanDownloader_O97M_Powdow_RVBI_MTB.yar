
rule TrojanDownloader_O97M_Powdow_RVBI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 6e 65 77 3a 31 33 37 30 39 36 32 30 2d 43 32 37 39 2d 31 31 43 45 2d 41 34 39 45 2d 34 34 34 35 35 33 35 34 30 30 30 30 22 29 } //1 CreateObject("new:13709620-C279-11CE-A49E-444553540000")
		$a_01_1 = {2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 6f 62 6a 2e 47 45 54 4d 61 69 6e 53 65 72 76 69 63 65 32 2c 20 6f 62 6a 2e 47 45 54 4d 61 69 6e 53 65 72 76 69 63 65 2c 20 22 22 2c 20 22 22 2c 20 30 } //1 .ShellExecute obj.GETMainService2, obj.GETMainService, "", "", 0
		$a_01_2 = {43 61 65 73 61 72 5f 43 69 70 68 65 72 28 41 53 44 49 4f 55 57 44 4f 49 48 51 57 4b 44 57 51 2c 20 2d 31 30 29 } //1 Caesar_Cipher(ASDIOUWDOIHQWKDWQ, -10)
		$a_01_3 = {6f 62 6a 2e 41 64 64 20 22 72 64 64 7a 63 22 0d 0a 6f 62 6a 2e 41 64 64 20 22 3a 2f 2f 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}