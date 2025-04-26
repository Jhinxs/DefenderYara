
rule Trojan_BAT_AsyncRAT_NC_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.NC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {fe 06 51 00 00 06 73 ?? ?? 00 0a 0c 72 ?? ?? 00 70 28 ?? ?? 00 0a 0d 06 08 09 6f ?? ?? 00 0a 7d ?? ?? 00 04 } //5
		$a_01_1 = {54 69 66 66 79 2e 54 64 39 6e 79 2e 72 65 73 6f 75 72 63 65 73 } //1 Tiffy.Td9ny.resources
		$a_01_2 = {45 63 6f 6e 6f 63 37 69 63 73 } //1 Econoc7ics
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}