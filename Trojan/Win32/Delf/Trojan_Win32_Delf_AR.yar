
rule Trojan_Win32_Delf_AR{
	meta:
		description = "Trojan:Win32/Delf.AR,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //1 SOFTWARE\Borland\Delphi
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 63 6f 6f 6c 6d 65 6c 69 66 65 2e 63 6f 6d } //1 http://www.coolmelife.com
		$a_01_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 53 00 65 00 63 00 74 00 75 00 62 00 76 00 79 00 20 00 42 00 65 00 68 00 61 00 76 00 65 00 } //1 Microsoft Sectubvy Behave
		$a_01_3 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 6d 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}