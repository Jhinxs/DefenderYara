
rule Trojan_BAT_AgentTesla_EGJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EGJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 07 95 28 ?? ?? ?? 0a 0c 16 0d 2b 14 00 7e ?? ?? ?? 04 07 1a 5a 09 58 08 09 91 9c 00 09 17 58 0d 09 08 8e 69 fe 04 13 04 11 04 2d e0 00 07 17 58 0b } //1
		$a_01_1 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //1 䘀潲䉭獡㙥匴牴湩g
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}