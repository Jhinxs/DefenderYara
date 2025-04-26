
rule Trojan_BAT_ClipBanker_ADL_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.ADL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {73 2e 00 00 0a 25 72 9a 0a 00 70 6f ?? ?? ?? 0a 25 72 aa 0a 00 70 28 ?? ?? ?? 06 72 00 0b 00 70 28 } //2
		$a_01_1 = {4f 00 66 00 66 00 53 00 6d 00 61 00 72 00 74 00 } //1 OffSmart
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}