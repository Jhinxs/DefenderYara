
rule Trojan_BAT_BitRat_A_MTB{
	meta:
		description = "Trojan:BAT/BitRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {43 72 65 61 74 65 } //1 Create
		$a_81_1 = {68 74 74 70 73 3a 2f 2f 75 73 64 70 65 64 71 70 7a 2e 63 6f 6d 2f 36 38 36 } //1 https://usdpedqpz.com/686
		$a_80_2 = {77 65 62 52 65 71 75 65 73 74 } //webRequest  1
		$a_81_3 = {47 65 74 52 65 73 70 6f 6e 73 65 } //1 GetResponse
		$a_81_4 = {43 6f 70 79 54 6f } //1 CopyTo
		$a_81_5 = {53 65 63 75 72 69 74 79 50 72 6f 74 6f 63 6f 6c 54 79 70 65 } //1 SecurityProtocolType
		$a_81_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_7 = {53 6c 65 65 70 } //1 Sleep
		$a_00_8 = {11 04 11 05 11 04 11 05 91 20 ae 02 00 00 59 d2 9c 00 11 05 17 58 13 05 11 05 11 04 8e 69 fe 04 13 06 11 06 2d d9 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_80_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}