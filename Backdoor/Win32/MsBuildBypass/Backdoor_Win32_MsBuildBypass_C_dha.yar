
rule Backdoor_Win32_MsBuildBypass_C_dha{
	meta:
		description = "Backdoor:Win32/MsBuildBypass.C!dha,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_00_0 = {6d 00 73 00 62 00 75 00 69 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //10 msbuild.exe
		$a_00_1 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 68 00 65 00 6c 00 70 00 5c 00 } //1 c:\windows\help\
		$a_00_2 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 64 00 65 00 62 00 75 00 67 00 5c 00 } //1 c:\windows\debug\
		$a_00_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 69 00 6e 00 66 00 5c 00 } //1 c:\windows\inf\
		$a_00_4 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6d 00 65 00 64 00 69 00 61 00 5c 00 } //1 c:\windows\media\
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=11
 
}