
rule Backdoor_Win32_PcClient_ZR{
	meta:
		description = "Backdoor:Win32/PcClient.ZR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_02_0 = {3d 00 00 20 03 73 ?? 6a 02 6a 00 6a 00 ?? ff 15 } //2
		$a_02_1 = {8a 14 01 80 f2 ?? 88 10 40 4d 75 f4 } //2
		$a_02_2 = {6a 00 6a 00 6a 00 6a 00 6a ?? (eb|ff) } //2
		$a_00_3 = {73 79 73 6c 6f 67 2e 64 61 74 } //1 syslog.dat
		$a_00_4 = {25 64 2e 62 61 6b } //1 %d.bak
		$a_00_5 = {25 32 64 25 32 64 25 32 64 25 32 64 25 32 64 25 32 64 } //1 %2d%2d%2d%2d%2d%2d
		$a_00_6 = {72 61 73 70 68 6f 6e 65 2e 70 62 6b } //1 rasphone.pbk
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}