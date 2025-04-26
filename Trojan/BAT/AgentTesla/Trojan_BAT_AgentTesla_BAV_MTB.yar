
rule Trojan_BAT_AgentTesla_BAV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 06 18 6f ?? 00 00 0a 06 6f ?? 00 00 0a 0c 02 0d 08 09 16 09 8e b7 6f ?? 00 00 0a 13 04 dd } //2
		$a_01_1 = {6d 70 72 7a 72 75 6c 6d 65 6d 74 70 6f 61 6a 2e 52 65 73 6f 75 72 63 65 } //1 mprzrulmemtpoaj.Resource
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}