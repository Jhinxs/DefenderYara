
rule TrojanDownloader_Win95_NeutrinoEK_gen_G{
	meta:
		description = "TrojanDownloader:Win95/NeutrinoEK.gen!G,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2f 00 2f 00 42 00 20 00 2f 00 2f 00 45 00 3a 00 4a 00 53 00 63 00 72 00 69 00 70 00 74 00 20 00 [0-02] 33 00 32 00 2e 00 74 00 6d 00 70 00 20 00 22 00 [0-20] 22 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2f 00 3f 00 } //1
		$a_01_1 = {22 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 35 00 2e 00 30 00 20 00 28 00 } //1 "Mozilla/5.0 (
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDownloader_Win95_NeutrinoEK_gen_G_2{
	meta:
		description = "TrojanDownloader:Win95/NeutrinoEK.gen!G,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 00 74 00 6d 00 70 00 20 00 26 00 26 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 77 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 2f 00 2f 00 42 00 20 00 2f 00 2f 00 45 00 3a 00 4a 00 53 00 63 00 72 00 69 00 70 00 74 00 20 00 } //1 .tmp && start wscript //B //E:JScript 
		$a_01_1 = {22 00 20 00 22 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 35 00 2e 00 30 00 20 00 28 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 36 00 2e 00 31 00 3b 00 20 00 } //1 " "Mozilla/5.0 (Windows NT 6.1; 
		$a_01_2 = {3d 00 22 00 50 00 45 00 5c 00 78 00 30 00 30 00 5c 00 78 00 30 00 30 00 22 00 } //1 ="PE\x00\x00"
		$a_01_3 = {3d 00 30 00 3b 00 32 00 35 00 36 00 } //1 =0;256
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}