
rule VirTool_Win32_CeeInject_gen_AR{
	meta:
		description = "VirTool:Win32/CeeInject.gen!AR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 48 34 8b 95 ?? ?? ff ff 03 4a 28 89 8d ?? ?? ff ff } //1
		$a_03_1 = {73 2d 8b 8d ?? ?? ff ff 8b 54 0d 0c 89 55 fc 8b 45 fc 33 45 08 89 45 fc 6a 04 } //1
		$a_03_2 = {66 8b 51 06 39 95 ?? ?? ff ff 0f 83 ?? ?? 00 00 8b 85 ?? ?? ff ff 8b 48 3c 8b 95 ?? ?? ff ff 6b d2 28 03 55 08 } //1
		$a_03_3 = {83 c1 01 89 8d ?? ?? ff ff 8b 95 ?? ?? ff ff 0f b7 42 06 39 85 ?? ?? ff ff 7d 51 8b 8d ?? ?? ff ff 8b 51 3c 8b 85 ?? ?? ff ff 6b c0 28 03 45 } //1
		$a_03_4 = {6a 40 68 00 30 00 00 8b 95 ?? ?? ff ff 8b 42 50 50 8b 8d ?? ?? ff ff 8b 51 34 52 8b 85 ?? ?? ff ff 50 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}