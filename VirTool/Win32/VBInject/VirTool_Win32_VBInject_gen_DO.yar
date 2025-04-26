
rule VirTool_Win32_VBInject_gen_DO{
	meta:
		description = "VirTool:Win32/VBInject.gen!DO,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {94 7c fc 1c 00 6c 20 fe aa fd 69 ?? ?? f5 01 00 00 00 6c b8 fc } //2
		$a_03_1 = {aa 71 9c fd 90 09 0a 00 94 ?? ?? 1c 00 94 90 1b 01 10 00 } //2
		$a_01_2 = {94 70 fc 1c 00 94 70 fc 10 00 aa 30 9c fd } //2
		$a_03_3 = {fb 12 fc 0d 6c 6c ff 80 0c 00 fc a0 [0-03] 6c 6c ff 6c 5c ff e0 1c } //1
		$a_03_4 = {ae f5 05 00 00 00 ae 71 ?? ff 90 09 03 00 6c 90 1b 00 ff } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}