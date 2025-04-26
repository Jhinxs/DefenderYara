
rule TrojanDownloader_BAT_BitRAT_J_MTB{
	meta:
		description = "TrojanDownloader:BAT/BitRAT.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 00 6f ?? 00 00 0a 13 03 38 0d 00 00 00 11 01 18 6f ?? 00 00 0a 38 28 00 00 00 11 01 11 03 6f ?? 00 00 0a 38 e5 ff ff ff 11 01 6f 22 00 00 0a 11 04 16 11 04 8e 69 6f ?? 00 00 0a 13 05 38 08 00 00 00 02 13 04 38 } //2
		$a_01_1 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_2 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_3 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_4 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}