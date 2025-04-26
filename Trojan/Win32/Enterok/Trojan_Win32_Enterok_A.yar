
rule Trojan_Win32_Enterok_A{
	meta:
		description = "Trojan:Win32/Enterok.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {61 76 2e 64 6c 6c 00 00 61 73 64 73 76 63 2e 65 78 65 } //1
		$a_00_1 = {72 65 73 74 6f 72 65 20 65 6e 74 65 72 20 6f 6b 2e 2e 2e } //1 restore enter ok...
		$a_00_2 = {63 6d 64 2e 65 78 65 00 2f 63 20 64 65 6c 20 2f 71 20 25 73 } //1
		$a_03_3 = {8b 4d fc 8d 3c 08 8b 55 08 8a 0c 37 3a 0c 16 75 ?? 46 3b f3 72 ?? 3b f3 74 ?? 40 3b 45 0c } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}