
rule Trojan_Win32_Vidar_SPDB_MTB{
	meta:
		description = "Trojan:Win32/Vidar.SPDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {69 c0 fd 43 03 00 05 ?? ?? ?? ?? a3 ?? ?? ?? ?? 8a 0d ?? ?? ?? ?? 30 0c 33 83 ff 0f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
rule Trojan_Win32_Vidar_SPDB_MTB_2{
	meta:
		description = "Trojan:Win32/Vidar.SPDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 44 24 0c 69 c9 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 30 14 30 83 ff 0f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}