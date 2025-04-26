
rule Trojan_Win32_NetWire_DW_MTB{
	meta:
		description = "Trojan:Win32/NetWire.DW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 4c 6f 67 20 53 74 61 72 74 65 64 5d } //1 [Log Started]
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4e 65 74 57 69 72 65 } //1 SOFTWARE\NetWire
		$a_01_2 = {49 6e 73 74 61 6c 6c 20 44 61 74 65 } //1 Install Date
		$a_01_3 = {25 73 5c 25 73 2e 62 61 74 } //1 %s\%s.bat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}