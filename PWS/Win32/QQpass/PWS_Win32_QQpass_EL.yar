
rule PWS_Win32_QQpass_EL{
	meta:
		description = "PWS:Win32/QQpass.EL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {b8 67 66 66 66 f7 e9 c1 fa 02 8b ?? c1 ?? 1f 03 } //1
		$a_00_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 25 73 20 2f 74 } //1 taskkill /f /im %s /t
		$a_00_2 = {57 69 6e 64 6f 77 73 20 ce c4 bc fe b1 a3 bb a4 } //1
		$a_00_3 = {6d 6f 76 65 20 25 73 20 25 73 0d 0a 64 65 6c 20 25 73 0d 0a 6d 6f 76 65 } //1
		$a_00_4 = {68 70 69 67 5f 57 53 32 2e 64 61 74 } //1 hpig_WS2.dat
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}