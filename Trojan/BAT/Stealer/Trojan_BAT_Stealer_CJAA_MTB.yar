
rule Trojan_BAT_Stealer_CJAA_MTB{
	meta:
		description = "Trojan:BAT/Stealer.CJAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {59 91 61 28 ?? ?? 00 0a ?? 08 20 8a 10 00 00 58 20 89 10 00 00 59 ?? 8e 69 5d 91 59 20 fd 00 00 00 58 19 58 20 00 01 00 00 5d d2 9c 08 17 58 0c } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}