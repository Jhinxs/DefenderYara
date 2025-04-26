
rule Backdoor_Win32_Agent_FP{
	meta:
		description = "Backdoor:Win32/Agent.FP,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d } //1 firewall set allowedprogram
		$a_01_1 = {22 73 65 63 75 72 65 73 79 73 74 64 22 } //1 "securesystd"
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 45 41 67 65 6e 74 } //1 SOFTWARE\Microsoft\IEAgent
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 73 79 73 74 69 6e 6b } //1 SOFTWARE\systink
		$a_01_4 = {70 72 69 76 65 6c 65 67 65 75 70 64 61 74 65 73 2e 69 6e 66 6f } //1 privelegeupdates.info
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}