
rule Trojan_BAT_Barys_PTEU_MTB{
	meta:
		description = "Trojan:BAT/Barys.PTEU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 6c 03 00 00 28 ?? 00 00 2b 13 0c 1f 19 13 30 1f 31 13 38 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}