
rule Trojan_Win64_CobaltStrike_ZL_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.ZL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {8a 04 3b 30 06 48 ff c6 48 ff c3 48 ff c9 80 fb 28 75 03 48 33 db 83 f9 00 7f } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_Win64_CobaltStrike_ZL_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.ZL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {48 8b 44 24 60 bb 03 00 00 00 48 8b 4c 24 70 31 ff be 00 80 00 00 49 89 f8 49 89 f9 49 89 fa e8 f2 b4 fc ff } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_ZL_MTB_3{
	meta:
		description = "Trojan:Win64/CobaltStrike.ZL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {49 ff c5 40 88 2c 30 48 ff c6 48 89 74 24 ?? 4d 39 ef 74 2d 44 89 e9 83 e1 ?? 42 0f b6 2c 21 42 32 2c 2f 48 3b 74 24 ?? 75 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}