
rule TrojanDownloader_BAT_Pstinb_AF_bit{
	meta:
		description = "TrojanDownloader:BAT/Pstinb.AF!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f 59 5a 62 76 46 77 6a 58 } //1 https://pastebin.com/raw/YZbvFwjX
		$a_01_1 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e 00 43 6f 6e 63 61 74 00 4c 6f 61 64 00 } //1 敧彴畃牲湥䑴浯楡n潃据瑡䰀慯d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}