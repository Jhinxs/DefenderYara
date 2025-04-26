
rule VirTool_Win32_VBInject_Z{
	meta:
		description = "VirTool:Win32/VBInject.Z,SIGNATURE_TYPE_PEHSTR_EXT,22 00 21 00 07 00 00 "
		
	strings :
		$a_01_0 = {77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 } //10 winmgmts:
		$a_01_1 = {58 00 2d 00 43 00 52 00 20 00 4c 00 69 00 67 00 68 00 74 00 } //10 X-CR Light
		$a_01_2 = {6d 6f 64 52 43 34 } //1 modRC4
		$a_01_3 = {6d 6f 64 41 6e 56 4d } //1 modAnVM
		$a_01_4 = {6d 6f 64 41 6e 53 42 } //1 modAnSB
		$a_01_5 = {6d 6f 64 4d 65 6d 45 78 65 63 } //1 modMemExec
		$a_01_6 = {46 69 6e 64 52 65 73 6f 75 72 63 65 41 } //10 FindResourceA
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*10) >=33
 
}