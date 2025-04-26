
rule TrojanDownloader_BAT_AsyncRAT_AL_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 07 11 01 02 11 07 18 5a 18 6f ?? 00 00 0a 6f ?? 00 00 0a 9c 38 ?? ff ff ff 11 03 6f ?? 00 00 0a 13 07 38 } //2
		$a_01_1 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_01_2 = {67 65 74 5f 55 54 46 38 } //1 get_UTF8
		$a_01_3 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}