
rule Trojan_Win64_CobaltStrike_CCIG_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CCIG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 00 00 73 c6 85 ?? 03 00 00 25 c6 85 ?? 03 00 00 72 c6 85 ?? 03 00 00 29 c6 85 ?? 03 00 00 54 c6 85 ?? 03 00 00 4f c6 85 ?? 03 00 00 52 c6 85 ?? 03 00 00 33 c6 85 ?? 03 00 00 63 c6 85 ?? 03 00 00 31 c6 85 ?? 03 00 00 4c c6 85 ?? 03 00 00 73 c6 85 ?? 03 00 00 4e c6 85 ?? 03 00 00 52 c6 85 ?? 03 00 00 38 c6 85 ?? 03 00 00 30 c6 85 ?? 03 00 00 5a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}