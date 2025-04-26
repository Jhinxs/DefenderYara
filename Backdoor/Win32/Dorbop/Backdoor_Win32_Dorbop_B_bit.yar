
rule Backdoor_Win32_Dorbop_B_bit{
	meta:
		description = "Backdoor:Win32/Dorbop.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {47 68 30 73 74 [0-3f] 53 65 72 76 65 72 2e 70 64 62 } //1
		$a_01_1 = {63 3a 5c 57 69 6e 64 6f 77 73 5c 25 73 2e 65 78 65 } //1 c:\Windows\%s.exe
		$a_03_2 = {64 6f 6f 72 6e 61 6d 65 3d 22 63 68 61 72 20 [0-1f] 5b 5d 20 3d 20 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}