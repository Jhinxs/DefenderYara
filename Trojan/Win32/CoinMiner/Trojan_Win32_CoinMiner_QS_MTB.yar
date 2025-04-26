
rule Trojan_Win32_CoinMiner_QS_MTB{
	meta:
		description = "Trojan:Win32/CoinMiner.QS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {5c 50 4f 57 52 } //3 \POWR
		$a_81_1 = {6e 65 77 4d 69 6e 65 72 50 72 6f 78 79 2f 70 72 6f 78 79 } //3 newMinerProxy/proxy
		$a_81_2 = {66 47 78 61 6b 7a 56 79 64 74 65 6a 57 53 73 4f 4e 50 35 62 38 41 3d 3d } //3 fGxakzVydtejWSsONP5b8A==
		$a_81_3 = {45 4e 44 20 50 52 49 56 41 54 45 20 4b 45 59 } //3 END PRIVATE KEY
		$a_81_4 = {70 72 6f 78 79 2e 70 72 6f 63 65 73 73 } //3 proxy.process
		$a_81_5 = {53 65 74 50 72 6f 63 65 73 73 50 72 69 6f 72 69 74 79 42 6f 6f 73 74 } //3 SetProcessPriorityBoost
		$a_81_6 = {43 72 65 61 74 65 57 61 69 74 61 62 6c 65 54 69 6d 65 72 45 78 57 } //3 CreateWaitableTimerExW
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}