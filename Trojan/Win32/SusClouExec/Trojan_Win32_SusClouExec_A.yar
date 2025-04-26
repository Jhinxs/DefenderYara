
rule Trojan_Win32_SusClouExec_A{
	meta:
		description = "Trojan:Win32/SusClouExec.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 [0-10] 2f 00 63 00 } //1
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_00_2 = {77 00 67 00 65 00 74 00 } //1 wget
		$a_02_3 = {68 00 74 00 74 00 70 00 [0-50] 2e 00 63 00 6c 00 6f 00 75 00 64 00 2d 00 78 00 69 00 70 00 2e 00 69 00 6f 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}