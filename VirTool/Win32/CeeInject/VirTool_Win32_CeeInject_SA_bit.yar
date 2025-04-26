
rule VirTool_Win32_CeeInject_SA_bit{
	meta:
		description = "VirTool:Win32/CeeInject.SA!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8b ca 33 c1 8b d2 c7 45 fc 00 00 00 00 8b d2 01 45 fc } //1
		$a_03_1 = {ff 75 fc b8 ?? ?? ?? ?? 48 50 ff 75 ?? ff 75 ?? a1 ?? ?? ?? ?? ff d0 } //1
		$a_03_2 = {1b c9 f7 d9 90 09 1d 00 8b 15 ?? ?? ?? ?? 81 ea ?? ?? ?? ?? 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 39 05 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}