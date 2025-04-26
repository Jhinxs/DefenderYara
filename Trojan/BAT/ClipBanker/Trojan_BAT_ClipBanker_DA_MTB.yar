
rule Trojan_BAT_ClipBanker_DA_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 "
		
	strings :
		$a_03_0 = {7e 01 00 00 04 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 16 8c 14 00 00 01 14 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 2a } //5
		$a_03_1 = {72 b6 fa 01 70 72 ba fa 01 70 6f ?? ?? ?? 0a 72 be fa 01 70 72 c2 fa 01 70 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 80 01 00 00 04 2a } //5
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {43 6f 6e 76 65 72 74 } //1 Convert
		$a_81_4 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_5 = {43 6f 6e 73 6f 6c 65 41 70 70 31 } //1 ConsoleApp1
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=14
 
}