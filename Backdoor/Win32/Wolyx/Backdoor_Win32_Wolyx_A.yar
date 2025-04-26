
rule Backdoor_Win32_Wolyx_A{
	meta:
		description = "Backdoor:Win32/Wolyx.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_00_0 = {7b 41 46 41 46 42 32 45 45 2d 38 33 37 43 2d 34 45 41 35 2d 42 39 33 33 2d 39 39 38 46 39 34 41 45 43 36 35 34 7d } //1 {AFAFB2EE-837C-4EA5-B933-998F94AEC654}
		$a_00_1 = {4b 75 6e 6d 69 6e 67 20 57 75 68 75 61 20 44 69 73 74 72 69 63 74 20 59 61 6e 58 69 6e 67 20 54 65 63 68 6e 6f 6c 6f 67 79 20 53 61 6c 65 73 20 44 65 70 61 72 74 6d 65 6e 74 } //1 Kunming Wuhua District YanXing Technology Sales Department
		$a_01_2 = {46 8b c6 66 05 87 69 } //1
		$a_01_3 = {3d c9 04 00 00 75 09 33 db eb 05 bb 01 00 00 00 } //3
		$a_01_4 = {83 fa 10 7f 0f 74 61 4a 74 1c 4a 74 27 83 ea 04 74 1b eb 40 81 ea 11 01 00 00 } //3
		$a_01_5 = {8b 95 b4 fe ff ff 89 55 e0 8b 95 b8 fe ff ff 89 55 e4 } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=7
 
}