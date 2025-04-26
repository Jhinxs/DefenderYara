
rule Trojan_BAT_Coinminer_MF_MTB{
	meta:
		description = "Trojan:BAT/Coinminer.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {0a d4 8d 58 00 00 01 2b 0e 02 06 16 06 8e 69 6f ?? ?? ?? 0a 26 2b 03 0a 2b ef 06 2a } //1
		$a_01_1 = {54 6f 43 68 61 72 41 72 72 61 79 } //1 ToCharArray
		$a_01_2 = {62 61 73 65 36 34 45 6e 63 6f 64 65 64 44 61 74 61 } //1 base64EncodedData
		$a_01_3 = {52 65 6d 6f 76 65 52 65 70 65 61 74 65 64 } //1 RemoveRepeated
		$a_01_4 = {42 61 73 65 36 34 44 65 63 6f 64 65 } //1 Base64Decode
		$a_01_5 = {49 41 73 79 6e 63 53 74 61 74 65 4d 61 63 68 69 6e 65 } //1 IAsyncStateMachine
		$a_01_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_8 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_9 = {47 65 74 44 72 69 76 65 73 } //1 GetDrives
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}