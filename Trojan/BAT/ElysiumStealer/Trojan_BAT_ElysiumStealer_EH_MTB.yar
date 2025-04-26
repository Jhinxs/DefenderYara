
rule Trojan_BAT_ElysiumStealer_EH_MTB{
	meta:
		description = "Trojan:BAT/ElysiumStealer.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0a 00 00 "
		
	strings :
		$a_81_0 = {64 64 64 64 64 73 73 73 64 61 73 2e 65 78 65 } //20 dddddsssdas.exe
		$a_81_1 = {64 64 64 64 64 64 61 73 2e 65 78 65 } //20 ddddddas.exe
		$a_81_2 = {64 66 67 68 64 66 67 67 64 66 67 64 66 } //20 dfghdfggdfgdf
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_81_4 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_5 = {44 65 63 6f 6d 70 72 65 73 73 } //1 Decompress
		$a_81_6 = {44 65 63 72 79 70 74 } //1 Decrypt
		$a_81_7 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //1 ReverseDecode
		$a_81_8 = {4c 7a 6d 61 44 65 63 6f 64 65 72 } //1 LzmaDecoder
		$a_81_9 = {52 65 73 6f 6c 76 65 } //1 Resolve
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=27
 
}