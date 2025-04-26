
rule Trojan_BAT_Bladabindi_PSMS_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.PSMS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {6f 43 00 00 0a 26 72 1f 00 00 70 28 ?? ?? ?? 0a 00 28 06 00 00 06 6f ?? ?? ?? 0a 72 43 00 00 70 72 1f 00 00 70 6f ?? ?? ?? 0a 00 73 ?? ?? ?? 0a 0c 08 6f ?? ?? ?? 0a 72 1f 00 00 70 6f ?? ?? ?? 0a 00 08 6f ?? ?? ?? 0a 26 72 1f 00 00 70 28 44 00 00 0a 00 2a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}