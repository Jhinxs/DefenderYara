
rule Trojan_BAT_SnakeKeylogger_MQ_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 "
		
	strings :
		$a_01_0 = {0d 09 07 16 07 8e 69 6f 1d 00 00 0a 13 04 28 16 00 00 0a 11 04 6f 1e 00 00 0a 13 05 dd 0d 00 00 00 26 7e 0c 00 00 0a 13 05 dd } //10
		$a_01_1 = {54 00 54 00 52 00 44 00 5a 00 42 00 57 00 49 00 69 00 6d 00 6a 00 4a 00 5a 00 72 00 47 00 } //2 TTRDZBWIimjJZrG
		$a_01_2 = {47 00 6f 00 74 00 69 00 63 00 32 00 2e 00 47 00 6f 00 74 00 69 00 63 00 32 00 } //2 Gotic2.Gotic2
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=14
 
}