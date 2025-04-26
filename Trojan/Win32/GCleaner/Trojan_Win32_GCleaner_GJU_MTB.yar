
rule Trojan_Win32_GCleaner_GJU_MTB{
	meta:
		description = "Trojan:Win32/GCleaner.GJU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 83 ec 0c 53 56 57 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 89 45 f8 8b 45 14 50 ff 15 ?? ?? ?? ?? e9 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}