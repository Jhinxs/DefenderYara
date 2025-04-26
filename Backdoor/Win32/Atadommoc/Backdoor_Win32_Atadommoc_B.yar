
rule Backdoor_Win32_Atadommoc_B{
	meta:
		description = "Backdoor:Win32/Atadommoc.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {74 16 6a 35 68 90 90 1f 00 00 57 ff 75 ?? 8b c8 e8 } //1
		$a_01_1 = {74 14 6a 35 68 91 1f 00 00 56 53 8b c8 e8 } //1
		$a_01_2 = {63 6f 6d 6d 6f 6e 2e 64 61 74 61 } //2 common.data
		$a_01_3 = {4a 6f 62 3a 3a 44 65 63 72 79 70 74 } //1 Job::Decrypt
		$a_01_4 = {43 4f 44 45 5f 53 4e 41 50 28 29 } //1 CODE_SNAP()
		$a_01_5 = {46 6f 72 6b 49 6e 53 70 6f 6f 6c 28 29 3a } //1 ForkInSpool():
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}