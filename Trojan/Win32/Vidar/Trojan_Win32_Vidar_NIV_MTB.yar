
rule Trojan_Win32_Vidar_NIV_MTB{
	meta:
		description = "Trojan:Win32/Vidar.NIV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {89 cf 8d 4d ?? 89 f2 e8 14 14 00 00 39 df 74 ?? 0f b7 07 8d 4f ?? 89 c2 0f b7 f0 81 e2 } //5
		$a_01_1 = {63 6d 64 2f 43 69 63 61 63 6c 73 2f 73 65 74 69 6e 74 65 67 72 69 74 79 6c 65 76 65 6c 68 69 67 68 } //1 cmd/Cicacls/setintegritylevelhigh
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}