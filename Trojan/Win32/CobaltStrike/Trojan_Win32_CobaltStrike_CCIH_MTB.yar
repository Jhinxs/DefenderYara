
rule Trojan_Win32_CobaltStrike_CCIH_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.CCIH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 c3 0f b6 44 05 ?? 32 04 39 8b 4d ?? 88 07 b8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}