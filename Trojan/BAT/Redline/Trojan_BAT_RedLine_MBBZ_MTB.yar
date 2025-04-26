
rule Trojan_BAT_RedLine_MBBZ_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MBBZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {04 06 18 28 ?? ?? ?? 06 7e ?? 01 00 04 06 28 ?? 01 00 06 0d 7e ?? 01 00 04 09 02 16 02 8e 69 28 ?? 01 00 06 2a 73 97 00 00 0a 38 62 ff ff ff } //1
		$a_01_1 = {6e 6e 6f 53 6b 64 66 6b 65 63 72 6a 63 } //1 nnoSkdfkecrjc
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}