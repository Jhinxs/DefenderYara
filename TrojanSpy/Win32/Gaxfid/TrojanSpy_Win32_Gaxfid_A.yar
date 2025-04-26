
rule TrojanSpy_Win32_Gaxfid_A{
	meta:
		description = "TrojanSpy:Win32/Gaxfid.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 25 64 2e 25 63 25 63 25 63 } //3 %c:\Program Files\%d.%c%c%c
		$a_01_1 = {25 63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 74 6d 70 2e 64 61 74 } //3 %c:\Program Files\tmp.dat
		$a_01_2 = {26 30 31 32 34 66 67 47 61 78 66 64 46 64 78 26 } //4 &0124fgGaxfdFdx&
		$a_01_3 = {25 63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 25 64 2e 6a 70 67 } //5 %c:\Program Files\%d.jpg
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*4+(#a_01_3  & 1)*5) >=15
 
}