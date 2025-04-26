
rule Trojan_BAT_NjRat_NEBP_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 "
		
	strings :
		$a_01_0 = {0b 16 0c 08 b5 12 01 1f 64 14 13 04 12 04 1f 64 28 2c 00 00 06 2c 04 17 0a de 1a 08 17 d6 0c 08 1a 31 e0 de 0e } //10
		$a_01_1 = {55 00 30 00 56 00 46 00 58 00 30 00 31 00 42 00 55 00 30 00 74 00 66 00 54 00 6b 00 39 00 61 00 54 00 30 00 35 00 46 00 51 00 30 00 68 00 46 00 51 00 30 00 74 00 54 00 } //2 U0VFX01BU0tfTk9aT05FQ0hFQ0tT
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //2 Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=14
 
}