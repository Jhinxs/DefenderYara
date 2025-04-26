
rule Trojan_BAT_AgentTesla_SYI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SYI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {11 06 17 58 20 ff 00 00 00 5f 13 06 11 07 09 11 06 95 58 20 ff 00 00 00 5f 13 07 02 09 11 06 8f 62 00 00 01 09 11 07 8f 62 00 00 01 28 80 00 00 06 09 11 06 95 09 11 07 95 58 20 ff 00 00 00 5f 13 0a 11 04 13 0b 06 11 0b 91 09 11 0a 95 13 0c 11 0c 61 13 0d 08 11 0b 11 0d d2 9c 11 04 17 58 13 04 11 04 6e 08 8e 69 6a 32 95 } //1
		$a_81_1 = {38 4b 41 4a 34 43 43 4f 48 41 37 46 35 41 38 59 47 37 38 35 52 4f } //1 8KAJ4CCOHA7F5A8YG785RO
	condition:
		((#a_00_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}