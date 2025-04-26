
rule TrojanDownloader_O97M_Obfuse_PAM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 45 6e 76 69 72 6f 6e 28 [0-10] 29 } //1
		$a_01_1 = {3d 20 53 70 6c 69 74 28 22 6d 73 68 74 61 2e 65 78 65 7c 69 6e 2e 63 6f 6d 7c 69 6e 2e 68 74 6d 6c 22 2c 20 22 7c 22 29 } //1 = Split("mshta.exe|in.com|in.html", "|")
		$a_03_2 = {28 22 77 69 6e 22 20 26 20 22 64 69 72 22 29 20 26 20 [0-10] 20 26 20 22 73 79 73 74 65 22 20 26 20 22 6d 33 32 22 20 26 20 [0-10] 20 26 20 [0-10] 28 30 29 } //1
		$a_03_3 = {28 22 74 65 22 20 26 20 22 6d 70 22 29 20 26 20 [0-10] 20 26 20 [0-10] 28 31 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}