
rule Trojan_Win32_Startpage_MM{
	meta:
		description = "Trojan:Win32/Startpage.MM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {69 00 6c 00 6c 00 61 00 3a 00 65 00 6e 00 2d 00 55 00 53 00 3a 00 6f 00 66 00 66 00 69 00 63 00 69 00 61 00 6c 00 00 00 00 00 1e 00 00 00 73 00 74 00 61 00 72 00 74 00 73 00 69 00 74 00 65 00 2e 00 63 00 6f 00 2e 00 6e 00 72 00 } //1
		$a_01_1 = {72 00 65 00 70 00 6c 00 53 00 74 00 61 00 72 00 74 00 50 00 61 00 67 00 65 00 2e 00 76 00 62 00 70 00 } //1 replStartPage.vbp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}