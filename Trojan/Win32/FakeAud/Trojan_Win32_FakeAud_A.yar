
rule Trojan_Win32_FakeAud_A{
	meta:
		description = "Trojan:Win32/FakeAud.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {80 38 00 74 ?? 80 78 01 00 74 ?? 80 78 02 00 74 ?? 80 78 03 00 75 } //2
		$a_00_1 = {eb 0b 61 75 78 4d 65 73 73 61 67 65 00 } //1
		$a_00_2 = {eb 0b 6d 6f 64 4d 65 73 73 61 67 65 00 } //1
		$a_00_3 = {5c 53 79 73 74 65 6d 5c 6e 70 64 72 6d 76 32 2e 6a 70 67 } //1 \System\npdrmv2.jpg
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}