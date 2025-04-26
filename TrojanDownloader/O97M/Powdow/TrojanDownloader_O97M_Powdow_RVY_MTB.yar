
rule TrojanDownloader_O97M_Powdow_RVY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 22 78 2e 76 62 73 22 2c 20 30 2c 20 46 61 6c 73 65 } //1 CreateObject("WScript.Shell").Run "x.vbs", 0, False
		$a_03_1 = {66 73 54 2e 57 72 69 74 65 54 65 78 74 20 28 47 65 74 48 54 4d 4c 53 6f 75 72 63 65 28 22 68 74 74 70 73 3a 2f 2f [0-28] 22 29 29 0d 0a 66 73 54 2e 53 61 76 65 54 6f 46 69 6c 65 20 22 78 2e 76 62 73 22 } //1
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 53 58 4d 4c 32 2e 58 6d 6c 48 74 74 70 22 29 0d 0a 20 20 20 20 78 6d 6c 48 74 74 70 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 73 55 52 4c 2c 20 46 61 6c 73 65 } //1
		$a_01_3 = {53 75 62 20 41 75 74 6f 5f 4f 70 65 6e 28 29 } //1 Sub Auto_Open()
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}