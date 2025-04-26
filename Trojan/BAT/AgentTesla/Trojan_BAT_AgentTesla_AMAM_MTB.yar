
rule Trojan_BAT_AgentTesla_AMAM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {09 1b 62 11 09 60 0d 11 04 1b d6 13 04 11 04 1e fe 04 16 fe 01 13 0c 11 0c 2c 1f 11 05 09 11 04 1e da 1f 1f 5f 63 20 ?? 00 00 00 5f b4 6f ?? 00 00 0a 00 11 04 1e da 13 04 00 00 00 11 07 17 d6 13 07 11 07 11 06 6f ?? 00 00 0a fe 04 13 0d 11 0d 3a } //4
		$a_80_1 = {4e 4d 56 58 48 4b 53 4c 55 4d 56 57 51 41 55 33 5a 4f 4e 32 47 4b 33 49 41 4b 52 5a 47 53 33 49 41 4b 4a 51 57 34 5a 44 50 4e 55 41 45 4d 33 33 53 4e 55 41 48 45 5a 4c 54 4e 35 32 58 45 59 33 46 4a 56 } //NMVXHKSLUMVWQAU3ZON2GK3IAKRZGS3IAKJQW4ZDPNUAEM33SNUAHEZLTN52XEY3FJV  1
	condition:
		((#a_03_0  & 1)*4+(#a_80_1  & 1)*1) >=5
 
}