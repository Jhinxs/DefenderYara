
rule TrojanClicker_Win32_Agent_FB_dll{
	meta:
		description = "TrojanClicker:Win32/Agent.FB!dll,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 79 73 79 73 67 72 6f 75 70 33 } //1 mysysgroup3
		$a_01_1 = {75 2e 67 6f 67 6c 65 2e 63 6e 2f } //1 u.gogle.cn/
		$a_01_2 = {63 68 65 63 6b 2e 70 61 74 68 74 6f 6d 65 2e 63 6f 6d 2f } //1 check.pathtome.com/
		$a_01_3 = {5c 6e 65 74 68 6f 6d 65 33 32 2e 64 6c 6c 2e 75 70 } //1 \nethome32.dll.up
		$a_01_4 = {5c 6d 69 63 72 6f 69 6e 66 6f 5c 6d 69 63 72 6f 69 6e 66 6f 2e 64 6c 6c 2e 75 70 } //1 \microinfo\microinfo.dll.up
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}