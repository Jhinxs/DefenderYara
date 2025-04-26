
rule Backdoor_Win32_Zegost_DE{
	meta:
		description = "Backdoor:Win32/Zegost.DE,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8a 1c 38 8b d1 81 e2 ff ff 00 00 8a 54 54 0c 32 da 41 88 1c 38 40 3b c6 72 de 5f 5b } //1
		$a_03_1 = {5c c6 44 24 ?? 6f c6 44 24 ?? 75 c6 44 24 ?? 72 c6 44 24 ?? 6c c6 44 24 ?? 6f c6 44 24 ?? 67 c6 44 24 ?? 2e c6 44 24 ?? 64 c6 44 24 ?? 61 c6 44 24 ?? 74 c6 44 24 ?? 00 ff } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Backdoor_Win32_Zegost_DE_2{
	meta:
		description = "Backdoor:Win32/Zegost.DE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8a 11 32 54 ?? ?? 8b ?? ?? 03 ?? ?? 88 10 66 8b ?? ?? 66 83 c1 01 66 89 ?? ?? eb } //2
		$a_00_1 = {c6 45 f4 5c c6 45 f5 6f c6 45 f6 75 c6 45 f7 72 c6 45 f8 6c c6 45 f9 6f c6 45 fa 67 c6 45 fb 2e c6 45 fc 64 c6 45 fd 61 c6 45 fe 74 c6 45 ff 00 } //1
		$a_03_2 = {fb ff ff 5c c6 85 ?? fb ff ff 6f c6 85 ?? fb ff ff 75 c6 85 ?? fb ff ff 72 c6 85 ?? fb ff ff 6c c6 85 ?? fb ff ff 6f c6 85 ?? fb ff ff 67 c6 85 ?? fb ff ff 2e c6 85 ?? fb ff ff 64 c6 85 ?? fb ff ff 61 c6 85 ?? fb ff ff 74 c6 85 ?? fb ff ff 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}