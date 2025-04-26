
rule Trojan_Win32_Emotet_PS{
	meta:
		description = "Trojan:Win32/Emotet.PS,SIGNATURE_TYPE_PEHSTR,28 00 28 00 06 00 00 "
		
	strings :
		$a_01_0 = {31 c9 41 83 ec 04 c1 e1 05 81 f9 98 00 00 00 } //10
		$a_01_1 = {81 cb 81 3a 00 00 43 46 81 ce 01 40 00 40 } //10
		$a_01_2 = {81 f1 b1 c2 ef 3c } //10
		$a_01_3 = {68 91 7f 09 00 68 de 7e d9 00 } //10
		$a_01_4 = {68 9f c3 79 00 } //10
		$a_01_5 = {68 ee fb 58 00 } //10
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=40
 
}