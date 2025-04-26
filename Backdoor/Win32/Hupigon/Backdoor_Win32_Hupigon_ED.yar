
rule Backdoor_Win32_Hupigon_ED{
	meta:
		description = "Backdoor:Win32/Hupigon.ED,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {3c 07 77 07 83 e0 7f 0f 03 } //1
		$a_01_1 = {44 65 76 69 63 65 5c 50 68 79 73 69 63 61 6c 4d 65 6d } //1 Device\PhysicalMem
		$a_01_2 = {28 57 69 6e 44 69 72 29 5c 33 36 30 2e 63 6f 6d } //2 (WinDir)\360.com
		$a_01_3 = {64 65 6c 20 25 30 } //1 del %0
		$a_01_4 = {c9 cf cf df b7 d6 d7 e9 } //1
		$a_01_5 = {c9 cf cf df d6 f7 bb fa } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}