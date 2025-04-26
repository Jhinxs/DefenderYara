
rule Trojan_BAT_AgentTesla_A{
	meta:
		description = "Trojan:BAT/AgentTesla.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {57 00 68 00 61 00 74 00 20 00 69 00 73 00 20 00 74 00 68 00 65 00 20 00 6c 00 65 00 6e 00 67 00 74 00 68 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 6c 00 65 00 66 00 74 00 20 00 73 00 69 00 64 00 65 00 } //1 What is the length of the left side
		$a_01_1 = {57 00 68 00 61 00 74 00 20 00 64 00 6f 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 } //1 What do you want to compute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}