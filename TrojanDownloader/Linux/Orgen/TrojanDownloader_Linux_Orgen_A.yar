
rule TrojanDownloader_Linux_Orgen_A{
	meta:
		description = "TrojanDownloader:Linux/Orgen.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {53 75 62 20 76 34 35 28 29 0d 0a 44 69 6d 20 64 76 49 5a 35 31 20 41 73 20 53 74 72 69 6e 67 } //1
		$a_00_1 = {73 75 6b 61 20 3d 20 22 68 74 74 70 3a 2f 2f } //1 suka = "http://
		$a_02_2 = {2e 77 72 69 74 65 20 72 30 38 4c 6c 2e 72 65 73 70 6f 6e 73 65 42 6f 64 79 0d 0a 2e 53 61 76 65 54 6f 46 69 6c 65 20 64 76 49 5a 35 31 20 26 20 22 5c [0-0a] 2e 73 63 72 22 2c 20 32 } //1
		$a_00_3 = {72 30 38 4c 6c 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 73 75 6b 61 2c 20 46 61 6c 73 65 } //1 r08Ll.Open "GET", suka, False
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}