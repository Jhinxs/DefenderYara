
rule Trojan_Win32_TurlaCarbonInjectedC2{
	meta:
		description = "Trojan:Win32/TurlaCarbonInjectedC2,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {46 61 69 6c 65 64 20 74 6f 20 70 61 72 73 65 20 62 65 61 63 6f 6e 20 72 65 73 70 6f 6e 73 65 2e 20 45 72 72 6f 72 20 63 6f 64 65 3a } //1 Failed to parse beacon response. Error code:
		$a_01_1 = {48 65 61 72 74 62 65 61 74 20 66 61 69 6c 65 64 2e 20 45 72 72 6f 72 20 63 6f 64 65 3a } //1 Heartbeat failed. Error code:
		$a_01_2 = {54 72 75 6e 63 61 74 65 64 20 70 69 70 65 20 73 65 72 76 65 72 20 6c 6f 67 20 66 69 6c 65 2e } //1 Truncated pipe server log file.
		$a_01_3 = {53 75 63 63 65 73 73 66 75 6c 6c 79 20 75 70 6c 6f 61 64 65 64 20 43 32 20 6c 6f 67 20 66 69 6c 65 2e } //1 Successfully uploaded C2 log file.
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 65 64 20 70 61 79 6c 6f 61 64 3a } //1 Downloaded payload:
		$a_01_5 = {44 69 73 63 6f 76 65 72 65 64 20 63 6f 6d 70 75 74 65 72 20 6e 61 6d 65 3a } //1 Discovered computer name:
		$a_01_6 = {53 65 74 20 69 6d 70 6c 61 6e 74 20 49 44 20 74 6f } //1 Set implant ID to
		$a_01_7 = {52 65 63 65 69 76 65 64 20 65 6d 70 74 79 20 69 6e 74 72 75 63 74 69 6f 6e 2e 20 57 69 6c 6c 20 66 6f 72 77 61 72 64 20 74 6f 20 65 78 65 63 75 74 6f 72 20 63 6c 69 65 6e 74 2e } //1 Received empty intruction. Will forward to executor client.
		$a_01_8 = {46 61 69 6c 65 64 20 74 6f 20 65 78 65 63 75 74 65 20 74 61 73 6b 2e 20 45 72 72 6f 72 20 63 6f 64 65 3a } //1 Failed to execute task. Error code:
		$a_01_9 = {63 68 65 63 6b 6d 61 74 65 4e 41 53 41 } //1 checkmateNASA
		$a_01_10 = {5b 00 45 00 52 00 52 00 4f 00 52 00 5d 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 77 00 61 00 69 00 74 00 20 00 66 00 6f 00 72 00 20 00 6d 00 75 00 74 00 65 00 78 00 2e 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 63 00 6f 00 64 00 65 00 3a 00 20 00 } //1 [ERROR] Failed to wait for mutex. Error code: 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}