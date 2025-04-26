
rule Worm_Win32_Hamweq_CM{
	meta:
		description = "Worm:Win32/Hamweq.CM,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {30 38 42 30 45 35 43 30 2d 34 46 43 42 2d 31 31 43 46 2d 41 41 58 35 2d 39 30 34 30 31 43 36 30 38 35 31 32 } //1 08B0E5C0-4FCB-11CF-AAX5-90401C608512
		$a_01_1 = {74 61 73 73 77 65 71 2e 63 6f 6d } //1 tassweq.com
		$a_01_2 = {69 73 65 2e 65 78 65 } //1 ise.exe
		$a_01_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_4 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //1 gethostbyname
		$a_01_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}