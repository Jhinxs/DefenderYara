
rule Trojan_BAT_RedLine_MBCG_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MBCG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0d 1a 2c 5e 09 28 ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 13 04 73 ?? 00 00 0a 13 05 11 05 11 04 6f ?? 00 00 0a 11 05 18 6f ?? 00 00 0a 1e 2c 39 11 05 18 } //1
		$a_03_1 = {1b 2c c8 26 18 2c bf 20 80 96 98 00 28 ?? ?? ?? 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}