
rule Trojan_Win64_CobaltStrike_CBVO_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CBVO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 42 38 44 8b 42 04 48 83 c2 ?? 89 c5 89 c1 c1 e8 ?? c1 c5 ?? c1 c1 ?? 31 e9 44 89 c5 31 c8 8b 4a fc 03 4a 20 c1 cd ?? 01 c8 44 89 c1 41 c1 e8 03 c1 c1 0e 31 e9 44 31 c1 01 c8 89 42 3c 48 39 d7 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}