
rule Trojan_BAT_Quasar_NQU_MTB{
	meta:
		description = "Trojan:BAT/Quasar.NQU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 62 00 00 0a 28 ?? ?? 00 0a 6f ?? ?? 00 0a 25 72 ?? ?? 00 70 02 7b ?? ?? 00 04 6f ?? ?? 00 0a 8c ?? ?? 00 01 28 ?? ?? 00 0a 6f ?? ?? 00 0a 6f ?? ?? 00 0a 7d ?? ?? 00 04 02 7b ?? ?? 00 04 6f ?? ?? 00 0a 26 02 28 ?? ?? 00 06 02 7b ?? ?? 00 04 73 ?? ?? 00 06 25 72 ?? ?? 00 70 6f ?? ?? 00 06 6f ?? ?? 00 2b } //5
		$a_01_1 = {66 00 6f 00 75 00 72 00 2e 00 74 00 6b 00 6b 00 6b 00 6c 00 79 00 2e 00 78 00 79 00 7a 00 } //1 four.tkkkly.xyz
		$a_01_2 = {58 74 63 73 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Xtcs.Properties.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}