
rule Trojan_BAT_LokiBot_CLO_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CLO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 72 d7 03 00 70 6f ?? ?? ?? ?? 74 ?? ?? ?? ?? 17 8d ?? ?? ?? ?? 25 16 1f 2d 9d 6f ?? ?? ?? ?? 0b 07 8e 69 8d ?? ?? ?? ?? 0c 16 13 05 2b 17 } //5
		$a_03_1 = {08 11 05 07 11 05 9a 1f 10 28 ?? ?? ?? ?? 9c 00 11 05 17 58 13 05 11 05 07 8e 69 fe 04 13 06 11 06 2d dc } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}