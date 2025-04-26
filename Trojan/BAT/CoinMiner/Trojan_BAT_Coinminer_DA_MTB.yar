
rule Trojan_BAT_Coinminer_DA_MTB{
	meta:
		description = "Trojan:BAT/Coinminer.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {57 6c 56 53 4d 56 4d 67 56 6d 46 73 62 33 4a 68 62 6e 51 67 53 47 46 6a 61 79 42 32 4d 53 34 32 } //1 WlVSMVMgVmFsb3JhbnQgSGFjayB2MS42
		$a_81_1 = {44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 DebuggerPresent
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {43 6f 70 79 43 6c 69 65 6e 74 } //1 CopyClient
		$a_81_4 = {5f 45 6e 63 72 79 70 74 65 64 24 } //1 _Encrypted$
		$a_81_5 = {43 6f 6e 6e 65 63 74 69 6f 6e 4c 69 73 74 } //1 ConnectionList
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}
rule Trojan_BAT_Coinminer_DA_MTB_2{
	meta:
		description = "Trojan:BAT/Coinminer.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 0a 00 00 "
		
	strings :
		$a_81_0 = {2d 77 61 74 63 68 64 6f 67 2e 65 78 65 } //20 -watchdog.exe
		$a_81_1 = {73 65 74 5f 49 73 42 61 63 6b 67 72 6f 75 6e 64 } //1 set_IsBackground
		$a_81_2 = {43 6f 6e 66 75 73 65 72 2e 43 6f 72 65 } //1 Confuser.Core
		$a_81_3 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
		$a_81_4 = {44 65 62 75 67 67 65 72 } //1 Debugger
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_6 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_7 = {46 61 69 6c 46 61 73 74 } //1 FailFast
		$a_81_8 = {67 65 74 5f 49 73 41 6c 69 76 65 } //1 get_IsAlive
		$a_81_9 = {47 65 74 53 74 72 69 6e 67 } //1 GetString
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=29
 
}