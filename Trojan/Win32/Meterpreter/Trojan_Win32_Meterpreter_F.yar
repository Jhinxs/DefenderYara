
rule Trojan_Win32_Meterpreter_F{
	meta:
		description = "Trojan:Win32/Meterpreter.F,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 7d dc 0d 7d 0d 8b 45 dc 80 74 28 ef ?? ff 45 dc eb ed } //1
		$a_00_1 = {6a 00 6a 04 8d 45 8c 50 6a 07 68 ff ff ff ff ff 55 94 83 7d 8c 00 0f 84 0a 00 00 00 6a 00 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}