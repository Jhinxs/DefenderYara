
rule PWS_Win32_Lolyda_AL{
	meta:
		description = "PWS:Win32/Lolyda.AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 78 63 79 79 73 68 61 68 61 } //1 dxcyyshaha
		$a_00_1 = {53 79 73 44 69 72 2e 64 61 74 00 } //1
		$a_01_2 = {5c 4c 50 4b 2e 64 6c 6c 00 } //1
		$a_01_3 = {68 04 c0 00 08 56 89 5d fc ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}