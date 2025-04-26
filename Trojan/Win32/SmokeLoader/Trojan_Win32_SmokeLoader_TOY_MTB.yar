
rule Trojan_Win32_SmokeLoader_TOY_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.TOY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 c7 89 45 e4 8b 45 e8 c1 e8 05 89 45 ?? 8b 45 d4 01 45 ?? 8b 45 fc c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 f0 89 5d ?? 8b 45 e4 01 45 e8 8b 45 e8 31 45 f0 8b 45 f0 31 45 f8 2b 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}