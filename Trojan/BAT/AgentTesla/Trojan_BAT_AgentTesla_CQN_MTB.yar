
rule Trojan_BAT_AgentTesla_CQN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CQN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2d 03 26 2b 03 0b 2b 00 06 16 73 ?? ?? ?? 0a 73 ?? ?? ?? 0a ?? 2d 03 26 2b 03 0c 2b 00 08 07 6f ?? ?? ?? 0a de 07 08 6f ?? ?? ?? 0a dc 07 6f ?? ?? ?? 0a 0d de 0e 07 6f ?? ?? ?? 0a dc } //1
		$a_01_1 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_01_2 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //1 ClassLibrary
		$a_01_3 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}