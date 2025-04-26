
rule Trojan_BAT_SnakeKeylogger_RPD_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {00 00 06 6f 25 00 00 0a 0c 12 02 28 26 00 00 0a 23 00 00 00 00 00 00 34 40 fe 04 0b 07 2d e1 } //1
		$a_01_1 = {67 65 74 5f 45 6c 61 70 73 65 64 } //1 get_Elapsed
		$a_01_2 = {67 65 74 5f 54 6f 74 61 6c 53 65 63 6f 6e 64 73 } //1 get_TotalSeconds
		$a_01_3 = {57 65 62 52 65 71 75 65 73 74 } //1 WebRequest
		$a_01_4 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_01_5 = {54 61 73 6b 44 65 6c 61 79 } //1 TaskDelay
		$a_01_6 = {52 65 61 64 42 79 74 65 73 } //1 ReadBytes
		$a_01_7 = {53 74 6f 70 77 61 74 63 68 } //1 Stopwatch
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}