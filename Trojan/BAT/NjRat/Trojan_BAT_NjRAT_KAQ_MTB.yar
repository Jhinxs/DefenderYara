
rule Trojan_BAT_NjRAT_KAQ_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.KAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {57 00 02 08 6f ?? 00 00 0a 1f 30 59 02 08 17 59 6f ?? 00 00 0a 1f 30 59 18 5a 58 02 08 18 59 6f ?? 00 00 0a 1f 30 59 1a 5a 58 02 08 19 59 6f ?? 00 00 0a 1f 30 59 1e 5a 58 0d 06 07 25 17 59 0b 12 03 ?? ?? ?? ?? ?? 28 ?? 00 00 0a 16 6f ?? 00 00 0a 9d 00 08 1a 59 0c } //1
		$a_03_1 = {19 00 07 08 06 08 9a 28 ?? 00 00 06 1f 10 28 ?? 00 00 0a d2 9c 00 08 17 58 0c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}