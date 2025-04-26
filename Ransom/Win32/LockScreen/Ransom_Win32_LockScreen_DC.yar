
rule Ransom_Win32_LockScreen_DC{
	meta:
		description = "Ransom:Win32/LockScreen.DC,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 42 49 20 4f 6e 6c 69 6e 65 20 41 67 65 6e 74 20 76 } //1 FBI Online Agent v
		$a_00_1 = {75 6e 75 61 74 68 6f 72 69 7a 65 64 20 63 79 62 65 72 61 63 74 69 76 69 74 79 } //1 unuathorized cyberactivity
		$a_00_2 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 } //1 䍜牵敲瑮敖獲潩屮畒n
		$a_00_3 = {5c 66 6c 61 73 68 70 6c 61 79 65 72 5c 73 79 73 5c 23 6c 6f 63 61 6c 5c 00 } //1
		$a_00_4 = {25 73 25 64 2d 25 64 2d 25 64 5f 25 64 } //1 %s%d-%d-%d_%d
		$a_00_5 = {3a 2f 2f 6c 6f 63 61 6c 2f 31 32 33 2e 73 77 66 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}