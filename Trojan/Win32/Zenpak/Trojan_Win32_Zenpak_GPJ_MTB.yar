
rule Trojan_Win32_Zenpak_GPJ_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.GPJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 1c 31 8b 4d ?? 32 1c 11 8b 55 ?? 88 1c 32 c7 05 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}