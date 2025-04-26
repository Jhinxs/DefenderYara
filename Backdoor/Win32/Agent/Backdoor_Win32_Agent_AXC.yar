
rule Backdoor_Win32_Agent_AXC{
	meta:
		description = "Backdoor:Win32/Agent.AXC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {ff d6 50 e8 ?? ?? ?? ?? 83 c4 08 90 09 0a 00 68 ?? ?? ?? ?? 68 } //1
		$a_00_1 = {8b 45 3c 8b bc 24 28 01 00 00 03 c5 8b 70 78 8b 40 7c } //1
		$a_00_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 35 33 31 31 34 30 2e 63 6f 6d 2f } //1 http://www.531140.com/
		$a_00_3 = {00 5c 72 65 6c 65 61 73 65 2e 74 6d 70 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}