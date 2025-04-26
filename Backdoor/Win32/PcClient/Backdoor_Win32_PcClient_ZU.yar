
rule Backdoor_Win32_PcClient_ZU{
	meta:
		description = "Backdoor:Win32/PcClient.ZU,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {80 e3 f7 80 f9 a0 72 13 80 f9 a3 77 0e } //1
		$a_01_1 = {83 ee 05 c6 00 e9 89 70 01 } //1
		$a_01_2 = {60 8b 85 98 ef ff ff 83 f8 00 74 17 } //2
		$a_00_3 = {43 3a 5c 6d 78 64 6f 73 2e 73 79 73 } //1 C:\mxdos.sys
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_00_3  & 1)*1) >=4
 
}