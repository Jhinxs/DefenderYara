
rule Trojan_Win64_Coinminer_NCA_MTB{
	meta:
		description = "Trojan:Win64/Coinminer.NCA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {45 33 c0 41 8d 50 ?? 33 c9 48 8b 03 ff 15 61 17 00 00 e8 68 06 00 00 48 8b d8 } //5
		$a_03_1 = {33 d2 48 8d 0d ?? ?? ?? ?? e8 f6 dc ff ff 8b d8 e8 c3 07 00 00 84 c0 74 50 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}