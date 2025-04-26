
rule Trojan_BAT_RedLineStealer_MH_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {06 11 0d 16 06 6f ?? ?? ?? 0a 11 0e 6a 59 69 6f ?? ?? ?? 0a 26 11 0a 11 0d 16 06 6f ?? ?? ?? 0a 11 0e 6a 59 69 6f ?? ?? ?? 0a 13 10 7e ?? ?? ?? 04 11 10 16 11 10 8e 69 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 0b 07 16 6a } //1
		$a_01_1 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_4 = {49 00 73 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 50 00 72 00 65 00 73 00 65 00 6e 00 74 00 } //1 IsDebuggerPresent
		$a_01_5 = {4f 00 4c 00 4c 00 59 00 44 00 42 00 47 00 } //1 OLLYDBG
		$a_01_6 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //1 DynamicInvoke
		$a_01_7 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_8 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_9 = {48 69 64 65 50 63 69 74 75 72 65 } //1 HidePciture
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}