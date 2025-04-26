
rule Backdoor_Win32_Xifos_A{
	meta:
		description = "Backdoor:Win32/Xifos.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 68 65 71 75 69 63 6b 62 72 6f 77 6e 66 78 6a 6d 70 73 76 61 6c 7a 79 64 67 00 } //10
		$a_01_1 = {78 78 78 78 78 3a 20 25 64 21 0a 00 } //1
		$a_01_2 = {3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}