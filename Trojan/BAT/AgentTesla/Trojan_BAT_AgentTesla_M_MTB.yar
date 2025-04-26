
rule Trojan_BAT_AgentTesla_M_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {07 0c 02 08 8f ?? ?? ?? 01 25 71 ?? ?? ?? 01 7e ?? ?? ?? 04 07 1f 10 5d 91 61 d2 81 ?? ?? ?? 01 07 17 58 0b 2b c9 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_M_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {01 0b 07 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 14 1a 8d ?? ?? ?? 01 25 d0 ?? ?? ?? 04 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 18 8d ?? ?? ?? 01 25 17 03 a2 14 14 28 ?? ?? ?? 0a 26 72 ?? ?? ?? ?? 0c 2b 00 08 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AgentTesla_M_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 "
		
	strings :
		$a_02_0 = {01 57 15 02 08 09 01 ?? ?? ?? fa 01 33 00 16 00 00 01 ?? ?? ?? 2a ?? ?? ?? 06 ?? ?? ?? 03 ?? ?? ?? 0e } //3
		$a_81_1 = {5a 6c 61 66 6d } //3 Zlafm
		$a_81_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //3 get_CurrentDomain
		$a_81_3 = {67 65 74 5f 46 75 6c 6c 4e 61 6d 65 } //3 get_FullName
		$a_81_4 = {47 65 74 44 6f 6d 61 69 6e } //3 GetDomain
	condition:
		((#a_02_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3) >=15
 
}
rule Trojan_BAT_AgentTesla_M_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 08 00 00 "
		
	strings :
		$a_81_0 = {01 57 15 a2 09 09 01 00 00 00 10 00 01 00 00 00 00 01 00 00 00 2b 00 00 00 06 00 00 00 04 00 00 00 0f 00 00 00 02 00 00 00 2e 00 00 00 17 00 00 00 09 } //3
		$a_81_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 53 65 74 74 69 6e 67 73 42 61 73 65 } //3 ApplicationSettingsBase
		$a_81_2 = {53 6d 61 72 74 41 73 73 65 6d 62 6c 79 2e 41 74 74 72 69 62 75 74 65 73 } //3 SmartAssembly.Attributes
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //3 DebuggerNonUserCodeAttribute
		$a_81_4 = {73 65 74 5f 53 65 63 75 72 69 74 79 50 72 6f 74 6f 63 6f 6c } //3 set_SecurityProtocol
		$a_81_5 = {53 65 63 75 72 69 74 79 50 72 6f 74 6f 63 6f 6c 54 79 70 65 } //3 SecurityProtocolType
		$a_81_6 = {53 74 6f 70 77 61 74 63 68 } //3 Stopwatch
		$a_81_7 = {57 65 62 52 65 71 75 65 73 74 } //3 WebRequest
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3+(#a_81_7  & 1)*3) >=24
 
}