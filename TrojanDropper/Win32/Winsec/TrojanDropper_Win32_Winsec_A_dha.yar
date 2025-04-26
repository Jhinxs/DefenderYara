
rule TrojanDropper_Win32_Winsec_A_dha{
	meta:
		description = "TrojanDropper:Win32/Winsec.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {89 44 24 24 8a 4c 24 ?? 33 d2 0f be b9 [0-10] 4c 24 ?? 0f be 09 33 f9 } //1
		$a_00_1 = {3a 45 0a 64 65 6c 20 2f 61 20 64 2e 62 61 74 00 } //2
		$a_00_2 = {25 73 20 69 73 20 61 6e 20 65 73 73 65 6e 74 69 61 6c 20 65 6c 65 6d 65 6e 74 20 69 6e 20 57 69 6e 64 6f 77 73 20 53 79 73 74 65 6d 20 63 6f 6e 66 69 67 75 72 61 74 69 6f 6e 20 61 6e 64 20 6d 61 6e 61 67 65 6d 65 6e 74 2e 20 25 } //1 %s is an essential element in Windows System configuration and management. %
		$a_00_3 = {25 73 20 2f 63 20 6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 25 73 22 20 64 69 72 3d 69 6e 20 61 63 74 69 6f 6e 3d 61 6c 6c 6f 77 20 73 65 72 76 69 63 65 3d 22 25 73 22 20 65 6e 61 62 6c 65 3d 79 65 73 } //1 %s /c netsh advfirewall firewall add rule name="%s" dir=in action=allow service="%s" enable=yes
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}