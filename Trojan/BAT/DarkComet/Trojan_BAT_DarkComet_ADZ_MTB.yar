
rule Trojan_BAT_DarkComet_ADZ_MTB{
	meta:
		description = "Trojan:BAT/DarkComet.ADZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {08 06 17 da 02 03 06 91 03 06 17 da 91 65 b5 6f ?? ?? ?? 06 9c 06 15 d6 0a 06 17 2f e3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}