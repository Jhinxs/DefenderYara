
rule Trojan_Win32_Smokeloader_GZD_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {6b 00 65 00 c7 05 ?? ?? ?? ?? 72 00 6e 00 c7 05 ?? ?? ?? ?? 65 00 6c 00 c7 05 ?? ?? ?? ?? 33 00 32 00 c7 05 ?? ?? ?? ?? 2e 00 64 00 c7 05 ?? ?? ?? ?? 6c 00 6c 00 66 a3 ?? ?? ?? ?? ff 15 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Smokeloader_GZD_MTB_2{
	meta:
		description = "Trojan:Win32/Smokeloader.GZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 c7 89 45 ?? 8b 45 ?? c1 e8 ?? 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 33 d2 c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 ?? 89 55 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 31 45 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}