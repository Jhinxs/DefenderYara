
rule Trojan_Win32_CryptInject_L{
	meta:
		description = "Trojan:Win32/CryptInject.L,SIGNATURE_TYPE_PEHSTR,03 00 02 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 57 69 6e 64 6f 77 73 2e 4c 4e 4b } //1 Start Menu\Programs\Startup\Windows.LNK
		$a_01_1 = {54 65 73 74 5f 46 6f 6c 64 65 72 5c 52 65 73 6f 75 72 63 65 73 } //1 Test_Folder\Resources
		$a_01_2 = {49 74 27 73 20 47 6f 6f 64 } //1 It's Good
		$a_01_3 = {54 65 6d 70 5f 54 65 73 74 2e 74 65 73 74 65 72 } //1 Temp_Test.tester
		$a_01_4 = {43 3a 5c 55 73 65 72 73 5c 6c 65 6e 6f 76 6f 5c 73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 4a 75 6e 6b 5f 43 6f 64 65 5f 4c 6f 73 74 5f 46 69 6c 65 73 } //1 C:\Users\lenovo\source\repos\Junk_Code_Lost_Files
		$a_01_5 = {44 00 6f 00 6e 00 61 00 6c 00 64 00 20 00 54 00 72 00 75 00 6d 00 70 00 73 00 20 00 48 00 61 00 69 00 72 00 20 00 4c 00 69 00 6e 00 65 00 } //1 Donald Trumps Hair Line
		$a_01_6 = {53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 2e 00 65 00 78 00 65 00 } //1 SecurityUpdater.exe.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=2
 
}