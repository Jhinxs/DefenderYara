
rule Backdoor_Win32_Agent_LV{
	meta:
		description = "Backdoor:Win32/Agent.LV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 54 68 69 73 20 69 73 20 50 57 44 5d 20 20 20 20 20 20 } //1 [This is PWD]      
		$a_01_1 = {5b 48 4f 53 54 20 20 20 20 20 20 20 3a 5d 20 25 73 0d 0a 5b 50 4f 52 54 20 20 20 20 20 20 20 3a 5d 20 25 73 0d 0a 5b 50 41 53 53 20 20 20 20 20 20 20 3a 5d 20 25 73 } //1
		$a_00_2 = {4d 6f 76 65 20 27 25 73 27 20 54 6f 20 27 25 73 27 20 53 75 63 63 65 73 73 66 75 6c 6c 79 } //1 Move '%s' To '%s' Successfully
		$a_00_3 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}