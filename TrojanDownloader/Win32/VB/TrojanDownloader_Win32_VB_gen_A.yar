
rule TrojanDownloader_Win32_VB_gen_A{
	meta:
		description = "TrojanDownloader:Win32/VB.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 } //1 .com.br/
		$a_02_1 = {2e 00 72 00 75 00 2f 00 [0-40] 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_2 = {00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 } //1 唀䱒潄湷潬摡潔楆敬A
		$a_00_3 = {00 5f 5f 76 62 61 46 72 65 65 56 61 72 00 } //1 开癟慢牆敥慖r
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}