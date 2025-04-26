
rule Backdoor_Win32_Delf_NB{
	meta:
		description = "Backdoor:Win32/Delf.NB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6b 72 6e 6c 73 72 76 63 } //1 %SystemRoot%\System32\svchost.exe -k krnlsrvc
		$a_01_1 = {69 66 20 65 78 69 73 74 20 22 00 00 ff ff ff ff 0c 00 00 00 22 20 67 6f 74 6f 20 52 65 64 65 6c } //1
		$a_01_2 = {43 61 70 74 75 72 65 27 43 61 70 74 75 72 65 } //1 Capture'Capture
		$a_01_3 = {43 68 61 6e 67 65 53 65 72 76 69 63 65 43 6f 6e 66 69 67 41 } //1 ChangeServiceConfigA
		$a_01_4 = {73 65 74 73 6f 63 6b 6f 70 74 } //1 setsockopt
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}