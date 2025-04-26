
rule Trojan_BAT_LokiBot_CPD_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CPD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 3f 00 00 0a 25 26 7e ?? ?? ?? ?? 02 06 6f ?? ?? ?? ?? 25 26 0b 07 28 40 00 00 0a } //5
		$a_03_1 = {06 07 6f 20 00 00 0a 0c 1f 61 6a 08 28 ?? ?? ?? ?? 25 26 0d 09 28 21 00 00 0a } //5
		$a_81_2 = {52 6e 62 61 63 63 6a 77 6c 24 } //1 Rnbaccjwl$
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_81_2  & 1)*1) >=11
 
}