
rule Trojan_BAT_Taskun_KAK_MTB{
	meta:
		description = "Trojan:BAT/Taskun.KAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {5d 91 61 13 ?? 11 ?? 06 07 17 58 08 5d 91 59 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}