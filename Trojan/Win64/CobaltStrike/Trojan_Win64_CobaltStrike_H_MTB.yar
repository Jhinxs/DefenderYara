
rule Trojan_Win64_CobaltStrike_H_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {4c 8b 44 24 ?? 48 8d 44 24 ?? 48 8b 4c 24 ?? 45 33 c9 ba 10 66 00 00 48 89 44 24 20 ff 15 ?? ?? ?? 00 85 c0 75 ?? ff 15 ?? ?? ?? 00 8b d0 48 8d 0d } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}