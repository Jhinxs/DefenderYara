
rule TrojanSpy_Win32_Sycomder_A{
	meta:
		description = "TrojanSpy:Win32/Sycomder.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8d 45 d0 50 e8 ?? ?? ?? ?? 6a 00 ff 75 08 6a 00 6a 00 68 ?? ?? 00 00 68 ?? ?? 00 00 6a 6b 68 ?? ?? 00 00 68 00 00 0a 00 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a 00 e8 ?? ?? ?? ?? 89 45 b0 6a 01 } //1
		$a_00_1 = {44 65 74 65 63 74 69 76 65 } //1 Detective
		$a_00_2 = {44 49 54 34 3e 20 25 54 45 4d 50 25 } //1 DIT4> %TEMP%
		$a_02_3 = {3e 3e 20 25 54 45 4d 50 25 5c [0-08] 2e 5f 65 67 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}