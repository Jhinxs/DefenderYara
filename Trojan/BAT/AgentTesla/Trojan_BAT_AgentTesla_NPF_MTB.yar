
rule Trojan_BAT_AgentTesla_NPF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {24 65 37 34 34 31 65 64 61 2d 61 36 37 66 2d 34 66 61 37 2d 62 34 33 65 2d 31 39 63 37 36 36 36 30 36 66 61 37 } //1 $e7441eda-a67f-4fa7-b43e-19c766606fa7
		$a_80_1 = {67 36 70 77 57 51 34 34 78 4b 68 43 58 48 73 76 53 6e 65 2e 43 4e 34 71 63 71 34 4d 63 6c 61 72 74 74 45 31 6e 64 67 } //g6pwWQ44xKhCXHsvSne.CN4qcq4MclarttE1ndg  1
		$a_01_2 = {50 6f 6c 6f 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Polo.Properties.Resources.resources
		$a_01_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_5 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_80_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}