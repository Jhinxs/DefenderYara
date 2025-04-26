
rule Trojan_Win32_Begravost_C{
	meta:
		description = "Trojan:Win32/Begravost.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 00 42 00 6f 00 74 00 56 00 65 00 72 00 3d 00 } //1 sBotVer=
		$a_01_1 = {3c 00 63 00 61 00 70 00 65 00 72 00 72 00 2f 00 3e 00 } //1 <caperr/>
		$a_01_2 = {63 00 61 00 70 00 61 00 6e 00 73 00 77 00 65 00 72 00 } //1 capanswer
		$a_01_3 = {68 00 72 00 45 00 78 00 65 00 63 00 3d 00 30 00 78 00 } //1 hrExec=0x
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}