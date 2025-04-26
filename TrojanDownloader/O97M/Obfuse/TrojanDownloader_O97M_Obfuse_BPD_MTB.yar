
rule TrojanDownloader_O97M_Obfuse_BPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.BPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {3d 63 68 72 28 35 30 29 2b 63 68 72 28 34 38 29 2b 63 68 72 28 34 38 29 [0-03] 77 73 68 73 68 65 6c 6c } //1
		$a_03_1 = {73 70 65 63 69 61 6c 70 61 74 68 3d 77 73 68 73 68 65 6c 6c 2e 73 70 65 63 69 61 6c 66 6f 6c 64 65 72 73 28 22 [0-0a] 22 29 64 69 6d } //1
		$a_01_2 = {3d 73 70 65 63 69 61 6c 70 61 74 68 2b 79 75 69 79 67 76 6a 68 76 68 74 66 68 6a 28 22 69 79 5c 5f 70 75 65 70 3b 6e 6e 22 29 75 6d 65 66 70 64 66 6d 72 63 } //1 =specialpath+yuiygvjhvhtfhj("iy\_puep;nn")umefpdfmrc
		$a_01_3 = {3d 73 70 65 63 69 61 6c 70 61 74 68 2b 6b 6e 6a 62 6a 67 67 6a 6b 6a 66 76 6b 28 22 69 5e 5f 71 6f 5c 7a 7a 7a 5c 3b 6e 6e 22 29 68 68 68 6a 63 66 6a 72 65 65 6d 68 69 } //1 =specialpath+knjbjggjkjfvk("i^_qo\zzz\;nn")hhhjcfjreemhi
		$a_03_4 = {26 63 68 72 28 61 73 63 28 6d 69 64 28 [0-d2] 2c [0-d2] 2c 31 29 29 2d 31 33 29 6e 65 78 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}