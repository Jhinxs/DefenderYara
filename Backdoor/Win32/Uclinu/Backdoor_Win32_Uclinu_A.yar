
rule Backdoor_Win32_Uclinu_A{
	meta:
		description = "Backdoor:Win32/Uclinu.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {55 55 55 53 55 55 51 55 ff 15 ?? ?? ?? ?? a0 14 56 40 00 b9 ff 01 00 00 88 84 24 98 02 00 00 33 c0 8d bc 24 99 02 00 00 8b 54 24 2c f3 ab 66 8b 0d ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 66 ab aa 66 89 8c 24 98 0a 00 00 b9 ff 03 00 00 33 c0 8d bc 24 9a 0a 00 00 f3 ab 88 1d 00 56 40 00 66 ab ff 15 } //1
		$a_01_1 = {8d 7c 24 50 33 c0 f3 a5 66 a5 b9 73 00 00 00 8d bc 24 8a 00 00 00 f3 ab 6a 00 66 ab ff 15 } //1
		$a_01_2 = {5c 00 74 00 61 00 73 00 6b 00 73 00 5c 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 \tasks\taskmgr.exe
		$a_00_3 = {77 77 77 2e 69 6c 73 63 6e 75 2e 6f 72 67 2e 66 69 6e 64 68 65 72 65 2e 6f 72 67 } //1 www.ilscnu.org.findhere.org
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}