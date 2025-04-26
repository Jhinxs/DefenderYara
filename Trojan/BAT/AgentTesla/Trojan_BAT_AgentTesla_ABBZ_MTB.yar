
rule Trojan_BAT_AgentTesla_ABBZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABBZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 08 00 00 "
		
	strings :
		$a_01_0 = {70 62 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 pbDebuggerPresent
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_2 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //1 GetManifestResourceStream
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_5 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_6 = {51 00 6b 00 35 00 44 00 54 00 6c 00 5a 00 44 00 56 00 6b 00 4e 00 59 00 53 00 45 00 6f 00 6b 00 } //3 Qk5DTlZDVkNYSEok
		$a_01_7 = {42 00 4e 00 43 00 4e 00 56 00 43 00 56 00 43 00 58 00 48 00 4a 00 24 00 } //3 BNCNVCVCXHJ$
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*3+(#a_01_7  & 1)*3) >=12
 
}