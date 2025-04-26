
rule TrojanDownloader_BAT_Vidar_C_MTB{
	meta:
		description = "TrojanDownloader:BAT/Vidar.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 00 2f 00 74 00 69 00 6e 00 79 00 2e 00 6f 00 6e 00 65 00 2f 00 62 00 64 00 68 00 73 00 78 00 68 00 75 00 39 00 } //5 //tiny.one/bdhsxhu9
		$a_01_1 = {47 44 64 68 6a 64 72 56 65 } //1 GDdhjdrVe
		$a_01_2 = {46 63 6d 68 65 74 66 } //1 Fcmhetf
		$a_01_3 = {43 6f 6e 63 61 74 53 74 61 74 65 } //1 ConcatState
		$a_01_4 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
		$a_01_5 = {46 6f 72 6d 31 } //1 Form1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=10
 
}