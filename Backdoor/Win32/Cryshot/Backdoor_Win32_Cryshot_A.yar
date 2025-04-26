
rule Backdoor_Win32_Cryshot_A{
	meta:
		description = "Backdoor:Win32/Cryshot.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 61 6b 65 73 63 72 65 65 6e 73 68 6f 74 3a 3a 64 6f 6e 65 20 73 63 72 65 65 6e 73 68 6f 74 20 69 6e 20 6d 65 6d 6f 72 79 } //1 takescreenshot::done screenshot in memory
		$a_01_1 = {6d 61 69 6e 3a 3a 66 61 69 6c 65 64 20 74 6f 20 74 61 6b 65 20 73 63 72 65 65 6e 73 68 6f 74 } //1 main::failed to take screenshot
		$a_01_2 = {2e 6e 6e 2d 67 72 6f 75 70 2e 63 6f 2f 72 65 71 } //10 .nn-group.co/req
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*10) >=12
 
}