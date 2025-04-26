
rule Trojan_Win64_Cobaltstrike_DP_MTB{
	meta:
		description = "Trojan:Win64/Cobaltstrike.DP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 89 ca f6 d2 89 cb f6 d3 41 89 d2 41 80 e2 ?? 41 80 e1 ?? 45 08 d1 08 da 80 e3 ?? 80 e1 ?? 08 d9 44 30 c9 f6 d2 08 ca 88 54 24 ?? 0f b6 4c 24 ?? 0f b6 5c 24 ?? 89 da f6 d2 20 ca f6 d1 20 d9 08 d1 88 4c 24 ?? 80 44 24 2a 01 0f b6 4c 24 ?? 48 8b 54 24 ?? 88 0a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}