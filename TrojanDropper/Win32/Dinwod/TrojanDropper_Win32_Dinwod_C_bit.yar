
rule TrojanDropper_Win32_Dinwod_C_bit{
	meta:
		description = "TrojanDropper:Win32/Dinwod.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {8b 01 ba ff fe fe 7e 03 d0 83 f0 ff 33 c2 83 c1 04 a9 00 01 01 81 74 e8 } //2
		$a_03_1 = {5c 54 72 6f 6a 61 6e 5c 53 76 63 68 6f 73 74 [0-30] 5c 53 76 63 68 6f 73 74 [0-30] 2e 70 64 62 } //3
		$a_00_2 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 4e 00 65 00 74 00 4b 00 65 00 79 00 2e 00 64 00 6c 00 6c 00 } //2 C:\WINDOWS\NetKey.dll
		$a_01_3 = {5c 4e 65 74 57 6f 72 6b 5c 64 61 74 2e 64 6c 6c } //2 \NetWork\dat.dll
		$a_01_4 = {5c 4e 65 74 57 6f 72 6b 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //2 \NetWork\svchost.exe
		$a_01_5 = {3a 64 65 6c 66 69 6c 65 0d 0a 65 63 68 6f 20 64 65 6c 65 74 69 6e 67 2e 2e 2e 0d 0a 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 0d 0a 64 65 6c 20 22 25 73 22 0d 0a } //3
		$a_01_6 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 5f 00 4e 00 65 00 74 00 5f 00 5f 00 74 00 68 00 69 00 6e 00 } //2 Global\_Net__thin
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*3+(#a_00_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*3+(#a_01_6  & 1)*2) >=5
 
}