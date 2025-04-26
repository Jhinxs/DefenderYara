
rule Trojan_Win32_SmokeLoader_WW_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.WW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 ea 03 45 ?? 89 45 ?? 8b 45 ?? 03 55 ?? 03 c7 89 45 ?? 8b 45 ?? 31 45 ?? 31 55 ?? 8b 45 ?? 29 45 ?? 81 45 ec ?? ?? ?? ?? ff 4d ?? 89 35 ?? ?? ?? ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}