
rule Trojan_Win32_Obfuscator_RF_MTB{
	meta:
		description = "Trojan:Win32/Obfuscator.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {33 c0 8a 44 34 50 81 e1 ?? ?? ?? ?? 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 03 83 c4 ?? 8a 54 14 14 32 c2 88 03 43 4d 0f } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Obfuscator_RF_MTB_2{
	meta:
		description = "Trojan:Win32/Obfuscator.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 54 24 14 8d 5e a9 8b 44 24 24 03 d9 05 ?? ?? ?? ?? 8b f3 2b f7 a3 ?? ?? ?? ?? 89 02 83 ee 07 83 c2 04 ff 4c 24 18 89 54 24 14 0f } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Obfuscator_RF_MTB_3{
	meta:
		description = "Trojan:Win32/Obfuscator.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {89 45 fc 33 c0 89 45 ec 83 7d ec 00 ?? ?? 8b 45 ec 83 e0 ?? 85 c0 ?? ?? 8b 45 ec 8a 80 ?? ?? ?? ?? 34 d9 8b 55 fc 03 55 ec 88 02 eb } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}