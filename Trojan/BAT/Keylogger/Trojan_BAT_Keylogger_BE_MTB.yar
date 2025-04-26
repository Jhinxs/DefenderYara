
rule Trojan_BAT_Keylogger_BE_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 5c 6b 65 79 6c 6f 67 5c 6b 65 79 6c 6f 67 5c 6f 62 6a 5c 44 65 62 75 67 5c 6b 65 79 6c 6f 67 2e 70 64 62 } //1 Intern\keylog\keylog\obj\Debug\keylog.pdb
		$a_01_1 = {24 66 30 36 64 63 33 63 61 2d 37 32 63 62 2d 34 32 62 61 2d 61 39 36 66 2d 37 65 30 34 39 30 39 61 34 64 36 33 } //1 $f06dc3ca-72cb-42ba-a96f-7e04909a4d63
		$a_01_2 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6b 00 65 00 79 00 2e 00 74 00 78 00 74 00 } //1 c:\windows\key.txt
		$a_01_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 2e 00 65 00 78 00 65 00 } //1 c:\windows\keylog.exe
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 } //1 SOFTWARE\keylog
		$a_01_5 = {46 6f 72 6d 31 5f 4c 6f 61 64 } //1 Form1_Load
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}