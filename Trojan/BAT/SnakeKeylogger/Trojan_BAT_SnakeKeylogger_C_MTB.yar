
rule Trojan_BAT_SnakeKeylogger_C_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {00 00 01 25 16 1f ?? 9d 6f ?? 01 00 0a 90 09 06 00 00 00 06 17 8d } //2
		$a_03_1 = {08 11 07 72 ?? ?? ?? 70 28 ?? ?? 00 0a 72 ?? ?? ?? 70 20 00 01 00 00 14 14 18 8d ?? 00 00 01 25 16 07 11 07 9a a2 25 17 1f 10 8c ?? 00 00 01 a2 6f ?? ?? 00 0a a5 ?? 00 00 01 9c 11 07 17 58 } //2
		$a_03_2 = {00 00 01 25 16 1f ?? 9d 6f ?? 01 00 0a 90 09 06 00 00 00 04 17 8d } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}