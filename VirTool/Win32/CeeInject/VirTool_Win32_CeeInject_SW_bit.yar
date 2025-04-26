
rule VirTool_Win32_CeeInject_SW_bit{
	meta:
		description = "VirTool:Win32/CeeInject.SW!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 10 00 00 8b 45 ?? 8b 08 51 6a 00 ff 55 } //1
		$a_03_1 = {52 6a 04 8d 85 ?? ?? ?? ?? 50 8b 8d ?? ?? ?? ?? 83 c1 08 51 8b 95 ?? ?? ?? ?? 52 ff 15 } //1
		$a_01_2 = {56 57 ff d0 5f 5e 8b dd 5d 8b 4d 10 55 8b eb 81 f9 00 01 00 00 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}