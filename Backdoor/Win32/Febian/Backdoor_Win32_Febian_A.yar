
rule Backdoor_Win32_Febian_A{
	meta:
		description = "Backdoor:Win32/Febian.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {64 3a 5c 6d 73 2e 74 78 74 00 } //1
		$a_01_1 = {5c 62 66 63 6f 6e 66 69 67 2e 74 78 74 } //1 \bfconfig.txt
		$a_01_2 = {42 69 61 6e 46 65 6e 67 42 61 63 6b 44 6f 6f 72 56 } //2 BianFengBackDoorV
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2) >=4
 
}