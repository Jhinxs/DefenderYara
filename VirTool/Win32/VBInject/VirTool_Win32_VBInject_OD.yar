
rule VirTool_Win32_VBInject_OD{
	meta:
		description = "VirTool:Win32/VBInject.OD,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_01_0 = {5b 00 2a 00 4c 00 6f 00 61 00 64 00 5f 00 53 00 74 00 75 00 62 00 5f 00 48 00 65 00 72 00 65 00 2a 00 5d 00 } //4 [*Load_Stub_Here*]
		$a_01_1 = {52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 } //2 RtlMoveMemory
		$a_01_2 = {5a 77 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 ZwUnmapViewOfSection
		$a_01_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_4 = {5c 00 56 00 42 00 5c 00 50 00 61 00 6e 00 64 00 6f 00 72 00 61 00 73 00 20 00 42 00 6f 00 78 00 5c 00 } //3 \VB\Pandoras Box\
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*3) >=11
 
}