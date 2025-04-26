
rule Backdoor_Win32_PowerSpider_N{
	meta:
		description = "Backdoor:Win32/PowerSpider.N,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 "
		
	strings :
		$a_01_0 = {6d 65 72 72 79 63 68 72 69 73 74 6d 61 73 } //1 merrychristmas
		$a_01_1 = {2f 6d 79 72 75 6e 6e 65 72 5f 75 70 2e 65 78 65 } //1 /myrunner_up.exe
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 4d 53 69 70 79 } //1 SOFTWARE\Classes\MSipy
		$a_01_3 = {25 73 5c 7e 7e 7e 30 38 64 25 30 32 64 25 64 2e 74 6d 70 } //1 %s\~~~08d%02d%d.tmp
		$a_01_4 = {50 41 53 53 20 25 73 } //1 PASS %s
		$a_01_5 = {5c 6d 73 70 62 68 6f 6f 6b 2e 64 6c 6c } //1 \mspbhook.dll
		$a_01_6 = {5f 65 78 65 2e } //1 _exe.
		$a_01_7 = {61 68 61 30 31 25 } //1 aha01%
		$a_01_8 = {70 6f 77 65 72 30 30 31 2e 65 78 65 } //1 power001.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}