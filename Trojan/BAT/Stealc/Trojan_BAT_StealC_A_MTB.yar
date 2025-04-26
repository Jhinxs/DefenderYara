
rule Trojan_BAT_StealC_A_MTB{
	meta:
		description = "Trojan:BAT/StealC.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 0b 07 8e 69 1f ?? 28 ?? ?? 00 06 2e ?? 08 15 31 ?? 07 28 ?? 00 00 2b 28 ?? 00 00 2b 0b 28 ?? ?? 00 06 07 28 ?? ?? 00 06 0d 07 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}