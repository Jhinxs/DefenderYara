
rule Trojan_Win32_Guloader_SPLU_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SPLU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 65 73 73 65 6c 69 61 6e 2e 46 72 69 } //1 besselian.Fri
		$a_01_1 = {50 73 61 6c 6d 65 64 2e 69 6e 69 } //1 Psalmed.ini
		$a_01_2 = {41 6e 61 67 6f 67 79 2e 64 6c 6c } //1 Anagogy.dll
		$a_01_3 = {53 6b 61 74 74 65 64 65 70 61 72 74 65 6d 65 6e 74 65 74 } //1 Skattedepartementet
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}