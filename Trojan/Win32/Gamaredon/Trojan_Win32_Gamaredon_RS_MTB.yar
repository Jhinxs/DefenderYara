
rule Trojan_Win32_Gamaredon_RS_MTB{
	meta:
		description = "Trojan:Win32/Gamaredon.RS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 50 6f 77 65 72 4d 6f 64 75 6c 65 2e 65 78 65 } //1 %USERPROFILE%\PowerModule.exe
		$a_00_1 = {6d 73 68 74 61 20 76 62 73 63 72 69 70 74 3a 45 78 65 63 75 74 65 } //1 mshta vbscript:Execute
		$a_02_2 = {43 72 65 61 74 65 53 68 6f 72 74 63 75 74 28 [0-10] 5c 53 79 73 74 65 6d 20 56 6f 6c 75 6d 65 20 49 6e 66 6f 72 6d 61 74 69 6f 6e 2e 6c 6e 6b } //1
		$a_00_3 = {73 70 72 65 61 64 2d 73 73 2e 72 75 } //1 spread-ss.ru
		$a_02_4 = {64 65 6c 20 2f 66 20 2f 71 20 [0-10] 5c 6e 74 75 73 65 72 2e 69 6e 69 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}