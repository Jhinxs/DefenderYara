
rule Worm_Win32_Antimane_A{
	meta:
		description = "Worm:Win32/Antimane.A,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 "
		
	strings :
		$a_00_0 = {3c 44 69 72 65 63 74 6f 72 79 20 56 69 72 74 75 61 6c 3d 22 44 6f 77 6e 6c 6f 61 64 20 46 6f 6c 64 65 72 22 3e } //10 <Directory Virtual="Download Folder">
		$a_00_1 = {5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //10 \SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_02_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 70 72 6f 63 6f 6e 73 75 6c 2e 63 6f 6d 2e 72 6f 2f 66 6c 6f 72 69 6e 2f [0-20] 2e 6d 70 33 } //1
		$a_00_3 = {41 64 72 69 61 6e 20 4d 69 6e 75 6e 65 } //1 Adrian Minune
		$a_02_4 = {31 32 37 2e 30 2e 30 2e 31 [0-10] 77 77 77 2e 6d 61 6e 65 6c 65 34 75 2e 6f 72 67 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1) >=22
 
}