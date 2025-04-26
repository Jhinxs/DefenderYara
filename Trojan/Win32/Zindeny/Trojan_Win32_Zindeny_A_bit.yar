
rule Trojan_Win32_Zindeny_A_bit{
	meta:
		description = "Trojan:Win32/Zindeny.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {64 72 69 76 65 72 73 5c 7a 64 70 61 73 73 63 64 2e 73 79 73 } //1 drivers\zdpasscd.sys
		$a_01_1 = {25 73 5c 6d 73 6e 61 6d 65 2e 64 6c 6c } //1 %s\msname.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}