
rule Trojan_Win32_NtRootKit_A_MTB{
	meta:
		description = "Trojan:Win32/NtRootKit.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 53 c1 e0 ?? 8b 5d 08 c1 e3 ?? 0b c3 03 d2 03 d2 0b c2 0b c1 } //2
		$a_01_1 = {4d 79 50 73 70 61 64 64 72 65 73 73 20 69 73 3a } //2 MyPspaddress is:
		$a_01_2 = {44 72 69 76 65 72 20 55 6e 6c 6f 61 64 } //2 Driver Unload
		$a_01_3 = {50 49 44 20 69 73 3a } //2 PID is:
		$a_01_4 = {43 72 65 61 74 65 20 44 65 76 69 63 65 20 53 75 63 63 65 73 73 } //2 Create Device Success
		$a_01_5 = {43 72 65 61 74 65 20 53 79 6d 62 6f 6c 69 63 4c 69 6e 6b 20 53 75 63 63 65 73 73 } //2 Create SymbolicLink Success
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=12
 
}