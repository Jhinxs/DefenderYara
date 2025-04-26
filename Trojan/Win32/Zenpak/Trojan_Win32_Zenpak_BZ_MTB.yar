
rule Trojan_Win32_Zenpak_BZ_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.BZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 89 f8 50 8f 05 ?? ?? ?? ?? 83 c2 03 83 f0 05 8d 05 ?? ?? ?? ?? 01 30 e8 c7 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}