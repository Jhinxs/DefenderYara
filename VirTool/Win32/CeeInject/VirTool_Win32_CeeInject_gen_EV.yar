
rule VirTool_Win32_CeeInject_gen_EV{
	meta:
		description = "VirTool:Win32/CeeInject.gen!EV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {50 57 ff 55 ?? 50 ff 55 ?? 8b 4e 08 } //1
		$a_03_1 = {8b 7b 3c 8b 54 1f 50 8b 45 fc 83 c4 14 6a 00 03 fb 52 53 8b 5d 08 53 50 ff 15 ?? ?? ?? ?? 8b 4f 28 03 cb ff d1 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}