
rule Trojan_BAT_RedLineStealer_MV_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {0a fe 0e 01 00 fe 0c 00 00 39 81 00 00 00 fe 0c 00 00 8e 39 77 00 00 00 fe 0c 00 00 73 ?? 00 00 0a fe 0e 02 00 fe 0c 02 00 20 00 00 00 00 73 ?? 00 00 0a fe 0e 03 00 fe 0c 03 00 73 ?? 00 00 0a fe 0e 04 00 fe 0c 04 00 6f ?? ?? ?? 0a fe 0e 01 00 dd 39 00 00 00 fe 0c 04 00 39 09 00 00 00 fe 0c 04 00 6f ?? ?? ?? 0a dc } //1
		$a_81_1 = {42 55 59 20 43 52 59 50 } //1 BUY CRYP
		$a_81_2 = {40 50 75 6c 73 61 72 43 72 79 70 74 65 72 5f 62 6f 74 } //1 @PulsarCrypter_bot
		$a_81_3 = {44 65 63 6f 6d 70 72 65 73 73 53 74 72 69 6e 67 } //1 DecompressString
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_6 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_81_7 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_81_8 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}