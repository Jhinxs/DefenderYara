
rule Trojan_BAT_AgentTesla_COW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.COW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 06 16 73 ?? ?? ?? 0a 73 ?? ?? ?? 0a 0c 08 07 6f ?? ?? ?? 0a dd ?? ?? ?? ?? 08 39 ?? ?? ?? ?? 08 6f ?? ?? ?? 0a dc 07 6f ?? ?? ?? 0a 0d dd ?? ?? ?? ?? 07 39 ?? ?? ?? ?? 07 6f ?? ?? ?? 0a dc } //1
		$a_01_1 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_2 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //1 CompressionMode
		$a_01_3 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //1 ClassLibrary
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}