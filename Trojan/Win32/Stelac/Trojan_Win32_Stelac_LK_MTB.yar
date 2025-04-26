
rule Trojan_Win32_Stelac_LK_MTB{
	meta:
		description = "Trojan:Win32/Stelac.LK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c0 e3 04 c0 e8 02 0a c3 88 [0-13] 8a 9b ?? ?? ?? ?? c0 e3 06 0a 98 ?? ?? ?? ?? 83 c6 04 88 59 ?? 83 c1 03 3b ?? ?? 7c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}