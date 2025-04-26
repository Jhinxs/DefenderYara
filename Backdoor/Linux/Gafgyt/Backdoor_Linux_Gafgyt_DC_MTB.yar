
rule Backdoor_Linux_Gafgyt_DC_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.DC!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {61 74 74 61 63 6b 5f 70 61 72 73 65 72 } //1 attack_parser
		$a_00_1 = {74 63 70 5f 66 6c 6f 6f 64 } //1 tcp_flood
		$a_00_2 = {75 64 70 70 6c 61 69 6e 5f 66 6c 6f 6f 64 } //1 udpplain_flood
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}