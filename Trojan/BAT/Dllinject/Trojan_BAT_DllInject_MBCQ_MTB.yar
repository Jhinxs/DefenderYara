
rule Trojan_BAT_DllInject_MBCQ_MTB{
	meta:
		description = "Trojan:BAT/DllInject.MBCQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 06 59 17 58 6f ?? 00 00 0a 13 07 11 05 11 07 1b 8d ?? 00 00 01 13 0a 11 0a 16 72 3d 01 00 70 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}