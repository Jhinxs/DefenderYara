
rule Trojan_Win32_Qakbot_DC_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b7 4d fc 2b c1 a3 ?? ?? ?? ?? 0f b7 55 fc 0f af 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 66 89 55 fc a1 ?? ?? ?? ?? 05 04 b0 01 01 a3 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 03 4d f8 8b 15 ?? ?? ?? ?? 89 91 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_DC_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {6c 3f 30 41 50 49 40 53 63 53 63 72 69 70 74 40 40 49 41 45 40 41 41 56 45 6e 67 69 6e 65 40 31 40 48 40 5a } //1 l?0API@ScScript@@IAE@AAVEngine@1@H@Z
		$a_01_1 = {6c 3f 30 42 72 65 61 6b 70 6f 69 6e 74 49 6e 66 6f 40 53 63 53 63 72 69 70 74 40 40 51 41 45 40 41 42 56 30 31 40 40 5a } //1 l?0BreakpointInfo@ScScript@@QAE@ABV01@@Z
		$a_01_2 = {6c 3f 30 44 65 62 75 67 67 65 72 40 53 63 53 63 72 69 70 74 40 40 51 41 45 40 41 42 56 30 31 40 40 5a } //1 l?0Debugger@ScScript@@QAE@ABV01@@Z
		$a_01_3 = {6c 3f 30 48 69 6c 69 74 65 41 50 49 40 53 63 53 63 72 69 70 74 40 40 41 41 45 40 41 41 56 45 6e 67 69 6e 65 40 31 40 40 5a } //1 l?0HiliteAPI@ScScript@@AAE@AAVEngine@1@@Z
		$a_01_4 = {6c 3f 5f 37 56 61 6c 69 64 61 74 65 44 61 74 61 40 53 63 53 63 72 69 70 74 40 40 36 42 40 } //1 l?_7ValidateData@ScScript@@6B@
		$a_01_5 = {6c 5f 69 73 55 49 6e 74 65 67 65 72 40 44 61 74 61 50 6f 6f 6c 40 53 63 53 63 72 69 70 74 40 40 41 42 45 5f 4e 48 40 5a } //1 l_isUInteger@DataPool@ScScript@@ABE_NH@Z
		$a_01_6 = {6e 65 78 74 } //1 next
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}