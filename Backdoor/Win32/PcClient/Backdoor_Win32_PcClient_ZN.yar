
rule Backdoor_Win32_PcClient_ZN{
	meta:
		description = "Backdoor:Win32/PcClient.ZN,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {25 73 3d 00 2e 73 79 73 00 00 00 00 64 72 69 76 65 72 73 5c 00 [0-05] 2e 6b 65 79 00 00 00 00 2e 65 78 65 [0-05] 2e 73 63 6f 00 00 00 00 2e 70 72 6f 00 00 00 00 2e 64 6c 6c } //4
		$a_00_1 = {6d 79 70 61 72 65 6e 74 74 68 72 65 61 64 69 64 00 } //1
		$a_00_2 = {47 6c 6f 62 61 6c 5c 70 73 } //1 Global\ps
		$a_00_3 = {6d 79 67 75 69 64 00 } //1
	condition:
		((#a_03_0  & 1)*4+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}