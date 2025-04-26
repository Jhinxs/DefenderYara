
rule TrojanSpy_Win32_Banker_ANF{
	meta:
		description = "TrojanSpy:Win32/Banker.ANF,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {55 48 4a 76 64 6d 6c 6b 5a 58 49 39 55 31 46 4d 54 30 78 46 52 45 49 75 4d 54 74 51 59 58 4e 7a 64 32 39 79 5a 44 31 79 4d 6e 49 7a 4d 32 4e 77 62 } //1 UHJvdmlkZXI9U1FMT0xFREIuMTtQYXNzd29yZD1yMnIzM2Nwb
		$a_01_1 = {55 30 56 4f 53 45 45 3d 00 } //1
		$a_01_2 = {53 55 31 42 55 43 42 51 59 58 4e 7a 64 32 39 79 5a 44 6f 67 00 } //1
		$a_01_3 = {63 32 46 6c 65 48 42 6c 63 6d 6c 68 62 69 35 6a 62 77 3d 3d 00 } //1
		$a_01_4 = {45 72 72 6f 3a 20 4c 4f 47 49 4e 3a 20 00 } //1 牅潲›佌䥇㩎 
		$a_01_5 = {5b 49 4e 49 43 49 4f 5d 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}