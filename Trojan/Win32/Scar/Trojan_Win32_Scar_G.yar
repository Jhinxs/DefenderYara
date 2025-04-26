
rule Trojan_Win32_Scar_G{
	meta:
		description = "Trojan:Win32/Scar.G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {6d 79 5f 77 6f 72 6b 65 72 5f 77 69 6e 64 6f 77 00 } //1
		$a_00_1 = {65 78 65 2e 65 78 65 00 66 75 6e 63 31 00 66 75 6e 63 32 00 73 74 61 72 74 00 } //1
		$a_03_2 = {6a 00 6a 00 68 00 04 00 00 (ff 35 ?? ?? ?? ?? e8 ?? ?? 00 00|a1 ?? ?? ?? ?? 50 e8 ?? ?? 00 00 5f 5e 5b 8b e5 5d) c2 10 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}