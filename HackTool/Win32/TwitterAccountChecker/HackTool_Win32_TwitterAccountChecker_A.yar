
rule HackTool_Win32_TwitterAccountChecker_A{
	meta:
		description = "HackTool:Win32/TwitterAccountChecker.A,SIGNATURE_TYPE_PEHSTR,64 00 64 00 02 00 00 "
		
	strings :
		$a_01_0 = {54 77 69 74 74 65 72 20 41 63 63 6f 75 6e 74 20 43 68 65 63 6b 65 72 } //1 Twitter Account Checker
		$a_01_1 = {73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 25 00 35 00 42 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 5f 00 6f 00 72 00 5f 00 65 00 6d 00 61 00 69 00 6c 00 25 00 35 00 44 00 3d 00 7b 00 30 00 7d 00 26 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 25 00 35 00 42 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 25 00 35 00 44 00 3d 00 7b 00 31 00 7d 00 26 00 61 00 75 00 74 00 68 00 65 00 6e 00 74 00 69 00 63 00 69 00 74 00 79 00 5f 00 74 00 6f 00 6b 00 65 00 6e 00 3d 00 7b 00 32 00 7d 00 } //1 session%5Busername_or_email%5D={0}&session%5Bpassword%5D={1}&authenticity_token={2}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=100
 
}