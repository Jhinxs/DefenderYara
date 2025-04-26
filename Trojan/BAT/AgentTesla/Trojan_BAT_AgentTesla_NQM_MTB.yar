
rule Trojan_BAT_AgentTesla_NQM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 39 33 63 33 33 64 63 66 2d 66 35 66 30 2d 34 61 63 39 2d 61 66 63 35 2d 64 36 30 32 38 36 30 63 35 35 37 66 } //1 $93c33dcf-f5f0-4ac9-afc5-d602860c557f
		$a_01_1 = {4d 41 53 54 45 52 4d 49 4e 44 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 MASTERMIND.Properties.Resources.resource
		$a_01_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_4 = {54 6f 55 49 6e 74 33 32 } //1 ToUInt32
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}