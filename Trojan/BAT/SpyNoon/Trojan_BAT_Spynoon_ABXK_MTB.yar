
rule Trojan_BAT_Spynoon_ABXK_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.ABXK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 02 16 02 8e 69 6f ?? 00 00 0a 0a 2b 00 06 2a 90 0a 19 00 7e ?? 00 00 04 6f } //2
		$a_01_1 = {53 00 75 00 70 00 65 00 72 00 41 00 72 00 61 00 6e 00 65 00 69 00 64 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 SuperAraneid.Properties.Resources
		$a_01_2 = {44 00 61 00 74 00 61 00 42 00 61 00 73 00 65 00 50 00 72 00 61 00 63 00 74 00 69 00 63 00 61 00 6c 00 4a 00 6f 00 62 00 } //1 DataBasePracticalJob
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}