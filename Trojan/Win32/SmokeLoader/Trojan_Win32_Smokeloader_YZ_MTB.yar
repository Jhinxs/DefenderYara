
rule Trojan_Win32_Smokeloader_YZ_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.YZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 83 c0 ?? 89 45 ?? 83 6d ?? ?? 8b 45 ?? 8a 4d ?? 03 c6 30 08 83 fb ?? 75 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}