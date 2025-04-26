
rule TrojanDownloader_Win32_Stegvob_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Stegvob.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {42 48 75 f2 90 09 04 00 80 34 11 } //2
		$a_03_1 = {83 f8 20 7e 32 6a 01 8d 45 ?? b9 } //2
		$a_01_2 = {83 ea 57 03 c2 89 c3 ff d3 } //1
		$a_01_3 = {26 6f 6b 3d 31 } //1 &ok=1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}