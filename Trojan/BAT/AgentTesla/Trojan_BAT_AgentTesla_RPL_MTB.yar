
rule Trojan_BAT_AgentTesla_RPL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RPL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {58 00 74 00 7a 00 6f 00 6f 00 6c 00 67 00 65 00 6a 00 6f 00 73 00 63 00 62 00 78 00 78 00 6a 00 69 00 } //1 Xtzoolgejoscbxxji
		$a_01_1 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 } //1 cdn.discordapp.com
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_01_3 = {2d 00 65 00 6e 00 63 00 20 00 59 00 77 00 42 00 74 00 41 00 47 00 51 00 41 00 49 00 41 00 41 00 76 00 41 00 47 00 4d 00 41 00 49 00 41 00 42 00 30 00 41 00 47 00 6b 00 41 00 62 00 51 00 42 00 6c 00 41 00 47 00 38 00 41 00 64 00 51 00 42 00 30 00 41 00 43 00 41 00 41 00 4d 00 67 00 41 00 77 00 41 00 41 00 } //1 -enc YwBtAGQAIAAvAGMAIAB0AGkAbQBlAG8AdQB0ACAAMgAwAA
		$a_01_4 = {45 00 4e 00 51 00 55 00 49 00 52 00 59 00 5f 00 30 00 32 00 30 00 33 00 32 00 30 00 32 00 32 00 2e 00 6a 00 70 00 67 00 } //1 ENQUIRY_02032022.jpg
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_BAT_AgentTesla_RPL_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.RPL!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 17 13 07 16 13 08 2b 10 11 07 20 00 01 00 00 5a 13 07 11 08 17 58 13 08 11 08 11 06 fe 04 13 0b 11 0b 2d e4 11 05 11 07 07 11 06 91 5a 58 13 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}