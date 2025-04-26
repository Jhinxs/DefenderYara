
rule VirTool_Win32_CeeInject_TX_bit{
	meta:
		description = "VirTool:Win32/CeeInject.TX!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8d 14 18 8a 12 80 f2 bd 8d 0c 18 88 11 } //1
		$a_01_1 = {8d 41 01 51 b9 ee 00 00 00 33 d2 f7 f1 59 03 ce 88 11 } //1
		$a_01_2 = {30 30 45 40 42 42 54 60 92 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule VirTool_Win32_CeeInject_TX_bit_2{
	meta:
		description = "VirTool:Win32/CeeInject.TX!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b f0 03 f3 73 05 e8 ?? ?? ?? ?? 8a 16 80 f2 4d 88 16 40 3d ?? ?? ?? ?? 75 e6 } //1
		$a_03_1 = {81 c3 a9 0a 00 00 73 05 e8 ?? ?? ?? ?? 89 5d fc ff 65 fc } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}