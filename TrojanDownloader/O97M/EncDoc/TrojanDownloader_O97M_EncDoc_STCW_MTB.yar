
rule TrojanDownloader_O97M_EncDoc_STCW_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.STCW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 20 62 65 74 74 65 72 20 63 68 6f 6f 73 65 20 73 6f 6d 65 77 68 61 74 20 72 61 6e 64 6f 6d 20 6e 61 6d 65 20 68 65 72 65 2c 20 61 73 20 74 68 65 20 70 6f 73 73 69 62 6c 65 20 73 63 72 69 70 74 20 6f 62 66 75 73 63 61 74 69 6f 6e } //1 You better choose somewhat random name here, as the possible script obfuscation
		$a_01_1 = {53 75 62 20 4d 61 6c 77 61 72 65 28 29 } //1 Sub Malware()
		$a_01_2 = {53 75 62 20 69 6d 63 6f 6f 6c 28 29 } //1 Sub imcool()
		$a_01_3 = {69 6d 67 73 72 63 20 3d 20 22 68 74 74 70 73 3a 2f 2f 66 69 6c 65 62 69 6e 2e 6e 65 74 2f 71 61 78 63 34 36 67 78 37 6d 75 64 39 62 61 6c 2f 69 6d 63 6f 6f 6c 2e 74 78 74 22 } //1 imgsrc = "https://filebin.net/qaxc46gx7mud9bal/imcool.txt"
		$a_01_4 = {22 43 3a 5c 55 73 65 72 73 5c 68 61 74 69 63 65 2e 6b 75 65 72 74 65 6e 5c 50 69 63 74 75 72 65 73 5c 74 65 73 74 2e 74 78 74 22 } //1 "C:\Users\hatice.kuerten\Pictures\test.txt"
		$a_01_5 = {22 43 3a 5c 55 73 65 72 73 5c 68 61 74 69 63 65 2e 6b 75 65 72 74 65 6e 5c 50 69 63 74 75 72 65 73 5c 74 65 73 74 2e 62 61 74 22 } //1 "C:\Users\hatice.kuerten\Pictures\test.bat"
		$a_01_6 = {73 65 74 6f 62 6a 77 6d 69 73 65 72 76 69 63 65 3d 67 65 74 6f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 5f 26 22 7b 69 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 6c 65 76 65 6c 3d 69 6d 70 65 72 73 6f 6e 61 74 65 7d 21 5c 5c 22 5f 26 73 74 72 63 6f 6d 70 75 74 65 72 26 22 5c 72 6f 6f 74 5c 63 69 6d 76 32 22 29 } //1 setobjwmiservice=getobject("winmgmts:"_&"{impersonationlevel=impersonate}!\\"_&strcomputer&"\root\cimv2")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}