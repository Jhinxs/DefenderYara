
rule Trojan_BAT_Taskun_AMMC_MTB{
	meta:
		description = "Trojan:BAT/Taskun.AMMC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {6a 5d d4 91 07 06 69 1f ?? 5d 6f ?? 00 00 0a 61 11 ?? 59 20 00 01 00 00 58 20 00 01 00 00 5d 13 ?? 08 06 09 6a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}