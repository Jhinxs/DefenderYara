
rule Trojan_Win32_Emotet_SU_MSR{
	meta:
		description = "Trojan:Win32/Emotet.SU!MSR,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 50 6c 61 6e 65 74 43 70 70 2e 63 6f 6d } //1 http://www.PlanetCpp.com
		$a_01_1 = {50 6c 61 6e 65 74 43 70 70 20 72 69 63 68 65 64 69 74 20 65 78 61 6d 70 6c 65 2e } //1 PlanetCpp richedit example.
		$a_01_2 = {41 6e 6f 74 68 65 72 20 70 72 6f 67 72 61 6d 20 69 73 20 75 73 69 6e 67 20 74 68 65 20 63 6c 69 70 62 6f 61 72 64 2c 20 70 6c 65 61 73 65 20 77 61 69 74 20 75 6e 74 69 6c 20 74 68 61 74 20 70 72 6f 67 72 61 6d 20 66 69 6e 69 73 68 65 73 2e } //1 Another program is using the clipboard, please wait until that program finishes.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}