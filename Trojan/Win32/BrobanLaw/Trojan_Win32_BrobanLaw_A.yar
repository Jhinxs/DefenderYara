
rule Trojan_Win32_BrobanLaw_A{
	meta:
		description = "Trojan:Win32/BrobanLaw.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {6c 00 76 00 65 00 70 00 61 00 65 00 61 00 6e 00 6a 00 66 00 62 00 73 00 6d 00 73 00 } //1 lvepaeanjfbsms
		$a_01_1 = {b8 01 02 00 00 e8 b0 94 e8 ff 05 ce 77 00 00 50 e8 f5 1c e9 ff e8 a8 64 ff ff 33 c0 5a 59 59 64 89 10 68 55 b2 57 00 c3 e9 4d ac e8 ff eb f8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_Win32_BrobanLaw_A_2{
	meta:
		description = "Trojan:Win32/BrobanLaw.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {64 ff 35 00 00 00 00 64 89 25 00 00 00 00 58 c3 e9 90 09 05 00 68 } //1
		$a_03_1 = {8b f9 8b f2 4e 85 f6 7c (15|16) 46 33 d2 8b e8 03 ea [0-04] 8b df 2a cb 88 4d 00 42 4e 75 (|) ed ee } //1
		$a_03_2 = {ba c4 06 00 00 e8 ?? ?? ?? ?? b8 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? ba 3c 00 00 00 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}