
rule Trojan_Win32_CobaltStrike_YBD_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.YBD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 d1 8a 4c 24 1b 81 e2 ?? ?? ?? ?? 02 d9 88 5c 24 14 8a 54 14 ?? 32 d1 8b 4c 24 14 81 e1 ?? ?? ?? ?? 88 14 28 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}