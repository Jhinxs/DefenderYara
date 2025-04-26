
rule Trojan_Win32_DarkLetoh_SA{
	meta:
		description = "Trojan:Win32/DarkLetoh.SA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 58 50 30 30 30 2e 54 4d 50 5c 73 72 64 66 71 6d 2e 65 78 65 } //1 IXP000.TMP\srdfqm.exe
		$a_01_1 = {6d 61 72 6b 65 74 2e 70 77 73 6d 62 78 2e 63 6f 6d } //1 market.pwsmbx.com
		$a_01_2 = {2f 33 57 33 73 36 2f 65 64 67 65 73 69 64 65 2e 70 68 70 } //1 /3W3s6/edgeside.php
		$a_01_3 = {77 69 6e 70 74 5f 6e 2e 78 6d 6c } //1 winpt_n.xml
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}