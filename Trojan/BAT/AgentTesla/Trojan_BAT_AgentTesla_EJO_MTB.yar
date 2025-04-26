
rule Trojan_BAT_AgentTesla_EJO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EJO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {06 02 07 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0a de 03 26 de 08 07 17 58 0b 07 03 31 df } //1
		$a_01_1 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //1 䘀潲䉭獡㙥匴牴湩g
		$a_01_2 = {00 67 65 74 5f 73 39 39 39 39 39 39 39 39 00 } //1
		$a_01_3 = {73 00 39 00 39 00 39 00 39 00 39 00 39 00 39 00 39 00 } //1 s99999999
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}