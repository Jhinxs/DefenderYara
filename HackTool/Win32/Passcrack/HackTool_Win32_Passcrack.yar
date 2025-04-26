
rule HackTool_Win32_Passcrack{
	meta:
		description = "HackTool:Win32/Passcrack,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 34 64 2d 25 30 32 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 } //1 %4d-%02d-%02d %02d:%02d:%02d
		$a_01_1 = {55 73 61 67 65 3a 63 72 61 63 6b 20 20 75 73 65 72 2e 74 78 74 20 70 61 73 73 2e 74 78 74 } //1 Usage:crack  user.txt pass.txt
		$a_01_2 = {55 73 65 72 3a 25 73 20 50 61 73 73 3a 25 73 20 44 6f 6d 69 61 6e 3a 25 73 } //1 User:%s Pass:%s Domian:%s
		$a_01_3 = {4c 6f 61 64 69 6e 67 20 75 73 65 72 20 6e 61 6d 65 20 70 61 73 73 77 6f 72 64 20 64 69 63 74 69 6f 6e 61 72 79 } //1 Loading user name password dictionary
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}