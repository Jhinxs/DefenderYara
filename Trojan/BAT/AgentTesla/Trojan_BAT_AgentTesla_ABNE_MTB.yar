
rule Trojan_BAT_AgentTesla_ABNE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 19 11 06 5a 6f ?? ?? ?? 0a 13 07 11 07 1f 39 fe 02 13 09 11 09 2c 0d 11 07 1f 41 59 1f 0a 58 d1 13 07 2b 08 11 07 1f 30 59 d1 13 07 06 19 11 06 5a 17 58 6f ?? ?? ?? 0a 13 08 11 08 1f 39 fe 02 13 0a 11 0a 2c 0d 11 08 1f 41 59 1f 0a 58 d1 13 08 2b 08 11 08 1f 30 59 d1 13 08 08 11 06 1f 10 11 07 5a 11 08 58 d2 9c 00 11 06 17 58 13 06 11 06 07 fe 04 13 0b 11 0b 2d 84 } //5
		$a_01_1 = {42 00 6c 00 61 00 63 00 6b 00 6a 00 61 00 63 00 6b 00 5f 00 74 00 68 00 72 00 65 00 61 00 64 00 69 00 6e 00 67 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 43 00 53 00 } //1 Blackjack_threading.ResourceCS
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}