
rule HackTool_Win32_DUBrute_A{
	meta:
		description = "HackTool:Win32/DUBrute.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {5b 50 61 73 73 77 6f 72 64 5d [0-10] 5b 4c 6f 67 69 6e 5d [0-10] 25 75 73 65 72 6e 61 6d 65 25 } //1
		$a_00_1 = {50 75 73 68 41 64 64 50 61 73 73 28 29 } //1 PushAddPass()
		$a_00_2 = {44 55 42 72 75 74 65 5f 76 } //1 DUBrute_v
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}