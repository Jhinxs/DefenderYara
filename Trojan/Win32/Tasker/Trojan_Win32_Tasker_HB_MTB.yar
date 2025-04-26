
rule Trojan_Win32_Tasker_HB_MTB{
	meta:
		description = "Trojan:Win32/Tasker.HB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 46 00 69 00 6c 00 65 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 50 00 72 00 6f 00 78 00 79 00 } //1 Windows File System Proxy
		$a_01_1 = {53 65 63 75 72 65 41 6e 79 77 68 65 72 65 20 6e 65 65 64 73 20 74 6f 20 72 65 62 6f 6f 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 } //1 SecureAnywhere needs to reboot your computer
		$a_01_2 = {6b 41 6b 64 6e 49 6c 72 61 69 67 53 62 } //1 kAkdnIlraigSb
		$a_01_3 = {6b 65 79 6c 6f 67 67 65 72 73 2c 20 73 63 72 65 65 6e 2d 67 72 61 62 62 65 72 73 2c 20 63 6c 69 70 62 6f 61 72 64 20 73 74 65 61 6c 65 72 73 } //1 keyloggers, screen-grabbers, clipboard stealers
		$a_01_4 = {57 69 6e 64 6f 77 73 20 46 69 72 65 77 61 6c 6c 20 69 73 20 63 75 72 72 65 6e 74 6c 79 20 64 69 73 61 62 6c 65 64 } //1 Windows Firewall is currently disabled
		$a_01_5 = {45 6e 61 62 6c 65 20 45 6e 68 61 6e 63 65 64 20 52 6f 6f 74 6b 69 74 20 44 65 74 65 63 74 69 6f 6e } //1 Enable Enhanced Rootkit Detection
		$a_01_6 = {44 69 73 61 62 6c 65 20 41 64 76 61 6e 63 65 64 20 48 65 75 72 69 73 74 69 63 73 } //1 Disable Advanced Heuristics
		$a_01_7 = {43 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 } //1 CDebugger detected
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}