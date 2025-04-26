
rule Trojan_Win32_Zenpak_SPUK_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.SPUK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 45 0c 8a 4d 08 88 0d ?? ?? ?? ?? a2 ?? ?? ?? ?? 30 c8 a2 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 89 d6 81 c6 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}