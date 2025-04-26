
rule Trojan_Win32_SmokeLoader_KWL_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.KWL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c6 c1 e0 ?? 03 45 ?? 03 de 33 c3 33 45 ?? 50 8d 45 ?? 50 e8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 8d 45 ?? 50 e8 ?? ?? ?? ?? ff 4d ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}