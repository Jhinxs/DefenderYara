
rule Trojan_BAT_AgentTesla_EKC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EKC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {07 16 fe 01 0c 08 2c 0c 06 07 b4 6f ?? ?? ?? 0a 00 00 2b 18 00 06 07 18 32 07 20 ff 00 00 00 2b 03 03 07 d8 b4 6f ?? ?? ?? 0a 00 00 07 17 d6 0b 00 07 1f 10 fe 04 0d 09 } //1
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 } //1 System.Reflection.Assembly
		$a_01_2 = {47 00 65 00 74 00 54 00 79 00 70 00 65 00 73 00 } //1 GetTypes
		$a_01_3 = {47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 73 00 } //1 GetMethods
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}