
rule Trojan_BAT_SnakeKeylogger_NZB_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NZB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 52 30 35 33 36 00 73 65 74 5f 52 30 35 33 36 00 52 30 35 33 35 00 63 63 63 00 52 30 35 33 37 00 42 69 74 6d 61 70 00 52 30 35 33 38 } //1 敧彴げ㌵6敳彴げ㌵6げ㌵5捣cげ㌵7楂浴灡刀㔰㠳
		$a_81_1 = {52 30 35 33 39 } //1 R0539
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}