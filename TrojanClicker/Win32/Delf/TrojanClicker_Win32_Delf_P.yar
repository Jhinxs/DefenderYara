
rule TrojanClicker_Win32_Delf_P{
	meta:
		description = "TrojanClicker:Win32/Delf.P,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {ff ff ff ff 07 00 00 00 73 76 77 2e 65 78 65 00 ff ff ff ff 2e 00 00 00 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 ff ff ff ff 04 00 00 00 6e 65 74 77 00 00 00 00 } //1
		$a_01_1 = {57 65 62 42 72 6f 77 73 65 72 31 44 6f 63 75 6d 65 6e 74 43 6f 6d 70 6c 65 74 65 } //1 WebBrowser1DocumentComplete
		$a_01_2 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //1 Internet Explorer_Server
		$a_01_3 = {53 78 65 6d 61 31 20 4b 6c 69 6b 61 74 20 6e 65 20 62 75 64 65 6d 21 20 55 7a 65 20 65 73 74 20 } //1 Sxema1 Klikat ne budem! Uze est 
		$a_01_4 = {6b 6c 69 6b 61 65 6d 20 6e 61 20 74 72 65 69 64 65 72 61 } //1 klikaem na treidera
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}