
rule Backdoor_Win32_Touasper_B{
	meta:
		description = "Backdoor:Win32/Touasper.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {50 49 44 3d 25 64 2c 20 50 61 72 65 6e 74 50 49 44 3d 25 64 2c 20 50 72 69 6f 72 69 74 79 43 6c 61 73 73 3d 25 64 2c 20 54 68 72 65 61 64 73 3d 25 64 2c 20 48 65 61 70 73 3d 25 64 } //1 PID=%d, ParentPID=%d, PriorityClass=%d, Threads=%d, Heaps=%d
		$a_03_1 = {c6 45 f9 3a c6 45 fa 5c c6 45 fb 5c c6 45 fc 00 8b 45 08 89 45 ?? c7 45 ?? 00 00 00 00 68 03 80 00 00 ff 15 ?? ?? ?? ?? c7 45 ?? 01 00 00 00 eb 09 8b 4d 90 1b 03 83 c1 01 89 4d 90 1b 03 83 7d 90 1b 03 1a 0f 8d ?? ?? 00 00 8b 55 90 1b 03 83 c2 41 88 55 f8 8d 45 f8 50 ff 15 ?? ?? ?? ?? 89 45 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}