
rule VirTool_Win32_VBInject_gen_ID{
	meta:
		description = "VirTool:Win32/VBInject.gen!ID,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {70 00 68 00 61 00 70 00 6f 00 65 00 73 00 6b 00 65 00 65 00 7a 00 6d 00 2e 00 76 00 62 00 70 00 } //2 phapoeskeezm.vbp
		$a_03_1 = {68 c2 8c 10 c5 68 [0-02] 40 00 } //1
		$a_03_2 = {68 d0 37 10 f2 68 [0-02] 40 00 } //1
		$a_03_3 = {68 c8 46 4a c5 68 [0-02] 40 00 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}