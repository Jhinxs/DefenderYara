
rule Trojan_BAT_AgentTesla_BAB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {13 04 09 11 04 16 11 04 8e 69 6f ?? ?? ?? 0a 00 09 6f ?? ?? ?? 0a 00 07 6f ?? ?? ?? 0a 13 05 28 ?? ?? ?? 0a 11 05 16 11 05 8e 69 } //2
		$a_01_1 = {55 00 6d 00 56 00 6e 00 61 00 58 00 4e 00 30 00 5a 00 58 00 49 00 67 00 61 00 47 00 46 00 7a 00 49 00 47 00 4a 00 6c 00 5a 00 57 00 34 00 67 00 63 00 33 00 56 00 6a 00 59 00 32 00 56 00 7a 00 63 00 32 00 5a 00 31 00 62 00 43 00 45 00 } //1 UmVnaXN0ZXIgaGFzIGJlZW4gc3VjY2Vzc2Z1bCE
		$a_01_2 = {46 55 43 4b 5f 49 53 5f 41 4c 57 41 59 53 5f 52 45 41 4c } //1 FUCK_IS_ALWAYS_REAL
		$a_01_3 = {64 65 63 72 79 70 74 5f 73 74 72 69 6e 67 } //1 decrypt_string
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}