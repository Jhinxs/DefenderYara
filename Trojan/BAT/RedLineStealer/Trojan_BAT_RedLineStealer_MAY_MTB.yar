
rule Trojan_BAT_RedLineStealer_MAY_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {06 11 0d 16 06 6f ?? ?? ?? 0a 25 26 11 0e 6a 59 69 6f ?? ?? ?? 0a 25 26 26 11 0a 11 0d 16 06 6f ?? ?? ?? 0a 25 26 11 0e 6a 59 69 6f ?? ?? ?? 0a 25 26 13 10 7e ?? ?? ?? 04 11 10 16 11 10 28 ?? ?? ?? 06 25 26 69 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 0b 07 16 6a 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 0c 11 04 1e 5f 39 } //1
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {44 65 6c 65 74 65 57 69 6e 64 6f 77 } //1 DeleteWindow
		$a_01_3 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_4 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_6 = {54 72 61 6e 73 66 6f 72 6d 42 6c 6f 63 6b } //1 TransformBlock
		$a_01_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_8 = {50 75 62 6c 69 73 68 51 75 65 75 65 } //1 PublishQueue
		$a_01_9 = {52 75 6e 50 45 } //1 RunPE
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}