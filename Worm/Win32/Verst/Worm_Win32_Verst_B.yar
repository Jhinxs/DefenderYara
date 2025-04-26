
rule Worm_Win32_Verst_B{
	meta:
		description = "Worm:Win32/Verst.B,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 4d 53 72 74 6e 5c 76 61 6c 75 65 31 } //1 Software\Microsoft\Windows\CurrentVersion\MSrtn\value1
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_2 = {4b 41 45 4e 41 5f 48 4f 4f 4b } //1 KAENA_HOOK
		$a_01_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_4 = {5a 77 4f 70 65 6e 50 72 6f 63 65 73 73 } //1 ZwOpenProcess
		$a_01_5 = {61 00 55 00 74 00 6f 00 52 00 75 00 4e 00 2e 00 69 00 4e 00 46 00 } //1 aUtoRuN.iNF
		$a_01_6 = {73 00 72 00 74 00 73 00 65 00 72 00 76 00 } //1 srtserv
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}