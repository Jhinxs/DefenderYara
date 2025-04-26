
rule Trojan_BAT_Ainslot_MTB{
	meta:
		description = "Trojan:BAT/Ainslot!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 4f 68 43 48 79 77 62 49 72 57 4a 62 73 68 72 61 53 57 52 6a 61 55 62 48 } //1 ROhCHywbIrWJbshraSWRjaUbH
		$a_01_1 = {73 78 4c 6c 67 63 54 56 51 55 4c 62 55 4b 71 4a 59 68 78 47 49 46 65 69 6c 2e 52 65 73 6f 75 72 63 65 73 } //1 sxLlgcTVQULbUKqJYhxGIFeil.Resources
		$a_01_2 = {65 00 51 00 6b 00 70 00 4c 00 53 00 53 00 59 00 59 00 68 00 44 00 66 00 62 00 62 00 6f 00 55 00 71 00 63 00 49 00 70 00 61 00 43 00 77 00 50 00 5a 00 } //1 eQkpLSSYYhDfbboUqcIpaCwPZ
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}