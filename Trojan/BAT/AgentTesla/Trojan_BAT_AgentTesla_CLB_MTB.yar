
rule Trojan_BAT_AgentTesla_CLB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CLB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 28 ?? ?? ?? 0a 7e ?? ?? ?? 04 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0c 06 08 6f ?? ?? ?? 0a 06 18 6f ?? ?? ?? 0a 02 6f ?? ?? ?? 0a 0d 06 6f ?? ?? ?? 0a 09 16 09 8e 69 6f } //1
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_3 = {00 43 6c 61 73 73 4c 69 62 72 61 72 79 00 } //1 䌀慬獳楌牢牡y
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}