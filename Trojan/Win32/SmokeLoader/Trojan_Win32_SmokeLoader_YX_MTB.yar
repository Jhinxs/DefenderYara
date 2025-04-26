
rule Trojan_Win32_SmokeLoader_YX_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.YX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b1 b1 4a 94 a1 ?? ?? ?? ?? 32 0c 46 5a 5a 02 b1 ?? ?? ?? ?? ae b5 ?? 56 05 ?? ?? ?? ?? 30 14 03 b1 5f 28 b4 b1 ?? ?? ?? ?? ac a5 a5 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}