
rule Trojan_Win32_KillDisk_L{
	meta:
		description = "Trojan:Win32/KillDisk.L,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 50 48 59 53 49 43 41 4c 44 52 49 56 45 30 } //2 \\.\PHYSICALDRIVE0
		$a_01_1 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //1 AdjustTokenPrivileges
		$a_01_2 = {45 52 52 4f 52 20 52 45 42 4f 4f 54 00 } //1
		$a_03_3 = {8d 15 1b 30 40 00 6a 00 51 68 00 ?? 00 00 52 53 e8 } //3
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*3) >=7
 
}