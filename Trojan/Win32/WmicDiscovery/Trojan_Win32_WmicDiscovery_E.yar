
rule Trojan_Win32_WmicDiscovery_E{
	meta:
		description = "Trojan:Win32/WmicDiscovery.E,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 32 00 05 00 00 "
		
	strings :
		$a_00_0 = {57 00 4d 00 49 00 43 00 } //10 WMIC
		$a_00_1 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 63 00 61 00 6c 00 6c 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //10 process call create
		$a_00_2 = {6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //10 lsass.exe
		$a_00_3 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 } //10 ProcessId
		$a_00_4 = {66 00 69 00 6e 00 64 00 } //10 find
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10) >=50
 
}