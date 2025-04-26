
rule VirTool_Win32_CeeInject_AAQ_bit{
	meta:
		description = "VirTool:Win32/CeeInject.AAQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c7 ff 75 ?? c1 e8 05 03 45 ?? 8b cf c1 e1 04 03 4d ?? 8b d6 33 c1 8d 0c 3e 33 c1 29 45 ?? 8b 4d } //1
		$a_01_1 = {8b 45 0c 01 45 fc 8b c1 c1 e0 04 03 45 08 03 ca 33 c1 33 45 fc } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}