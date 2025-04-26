
rule Trojan_BAT_Scarsi_NCS_MTB{
	meta:
		description = "Trojan:BAT/Scarsi.NCS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 30 00 00 0a 6f ?? ?? 00 0a 07 1f 10 8d ?? ?? 00 01 25 d0 ?? ?? 00 04 28 ?? ?? 00 0a 6f ?? ?? 00 0a 06 07 6f ?? ?? 00 0a 17 73 ?? ?? 00 0a 25 02 16 02 8e 69 6f ?? ?? 00 0a 6f ?? ?? 00 0a 06 28 ?? ?? 00 06 28 ?? ?? 00 06 2a } //5
		$a_01_1 = {4f 6b 76 74 62 65 6b } //1 Okvtbek
		$a_01_2 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 31 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 WindowsFormsApp1.Properties.Resources.resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}