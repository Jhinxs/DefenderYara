
rule Trojan_BAT_Taskun_AMBE_MTB{
	meta:
		description = "Trojan:BAT/Taskun.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {5d 91 61 06 07 17 58 09 5d 91 59 20 00 01 00 00 58 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Taskun_AMBE_MTB_2{
	meta:
		description = "Trojan:BAT/Taskun.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8e 69 6a 5d d4 91 61 [0-0e] 6a 5d d4 91 28 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_BAT_Taskun_AMBE_MTB_3{
	meta:
		description = "Trojan:BAT/Taskun.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 11 05 07 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 11 ?? 61 13 ?? 07 11 ?? 07 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}