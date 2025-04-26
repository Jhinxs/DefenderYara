
rule Trojan_Win64_CobaltStrike_MBK_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.MBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 e2 03 8a 54 15 [0-01] 41 32 14 04 88 14 03 48 ff c0 39 f8 89 c2 7c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}