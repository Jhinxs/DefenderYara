
rule Trojan_Win32_Blackmoon_CA_MTB{
	meta:
		description = "Trojan:Win32/Blackmoon.CA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {8d 7c 24 2c 83 c9 ff 33 c0 f2 ae f7 d1 49 03 ce 42 83 fa 04 8a 4c 11 ff 88 4c 14 17 7c e2 } //1
		$a_01_1 = {57 6f 57 45 6d 75 48 61 63 6b 65 72 } //1 WoWEmuHacker
		$a_01_2 = {57 6f 77 2e 65 78 65 } //1 Wow.exe
		$a_01_3 = {77 77 77 2e 64 79 77 74 2e 63 6f 6d 2e 63 6e } //1 www.dywt.com.cn
		$a_01_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 65 79 75 79 61 6e 2e 63 6f 6d } //1 http://www.eyuyan.com
		$a_01_5 = {73 65 72 76 69 63 65 40 64 79 77 74 2e 63 6f 6d 2e 63 6e } //1 service@dywt.com.cn
		$a_01_6 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //1 GetTickCount
		$a_01_7 = {51 75 65 72 79 50 65 72 66 6f 72 6d 61 6e 63 65 43 6f 75 6e 74 65 72 } //1 QueryPerformanceCounter
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}