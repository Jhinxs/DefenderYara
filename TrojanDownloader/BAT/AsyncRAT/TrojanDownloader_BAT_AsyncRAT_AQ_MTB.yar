
rule TrojanDownloader_BAT_AsyncRAT_AQ_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 00 7a 00 66 00 6a 00 66 00 61 00 64 00 69 00 62 00 76 00 69 00 78 00 6a 00 6c 00 71 00 } //2 Izfjfadibvixjlq
		$a_01_1 = {48 00 6d 00 76 00 6e 00 69 00 6b 00 69 00 64 00 69 00 72 00 74 00 79 00 6b 00 76 00 62 00 } //2 Hmvnikidirtykvb
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {54 6f 41 72 72 61 79 } //1 ToArray
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}