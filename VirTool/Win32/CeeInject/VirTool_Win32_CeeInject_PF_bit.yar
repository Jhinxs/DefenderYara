
rule VirTool_Win32_CeeInject_PF_bit{
	meta:
		description = "VirTool:Win32/CeeInject.PF!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8a 1f 49 88 1a 42 47 85 c9 75 f5 } //1
		$a_03_1 = {83 c1 08 51 ff 75 ?? a3 ?? ?? ?? ?? ff d0 90 09 0d 00 8d 4d ?? 51 6a 04 8d 4d ?? 51 8b 4d } //1
		$a_01_2 = {8b 45 10 8d 0c 30 8a 04 33 30 01 8a 01 30 04 33 8a 04 33 30 01 4b ff 45 10 8b c3 2b 45 10 83 f8 01 7d d5 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}