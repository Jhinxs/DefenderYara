
rule Trojan_Win64_Rozena_RA_MTB{
	meta:
		description = "Trojan:Win64/Rozena.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {48 b9 5c 41 70 70 44 61 74 61 48 89 08 48 bf 5c 4c 6f 63 61 6c 5c 42 48 89 78 08 48 ba 72 6f 77 73 65 72 45 78 48 89 50 10 48 b9 74 65 6e 73 69 6f 6e 00 48 89 48 18 48 8d 85 90 03 00 00 48 bf 43 3a 5c 50 72 6f 67 72 48 89 38 48 ba 61 6d 44 61 74 61 5c 42 } //1
		$a_01_1 = {73 63 68 74 61 73 6b 73 20 2f 64 65 6c 65 74 65 20 2f 74 6e 20 42 72 6f 77 73 65 72 43 6c 65 61 6e 75 70 20 2f 66 } //1 schtasks /delete /tn BrowserCleanup /f
		$a_01_2 = {73 63 68 74 61 73 6b 73 20 2f 64 65 6c 65 74 65 20 2f 74 6e 20 42 72 6f 77 73 65 72 55 70 64 61 74 65 20 2f 66 } //1 schtasks /delete /tn BrowserUpdate /f
		$a_01_3 = {44 6f 6e 65 20 73 63 72 65 65 6e 73 68 6f 74 } //1 Done screenshot
		$a_01_4 = {50 6c 65 61 73 65 20 63 72 65 61 74 65 20 6b 65 79 6c 6f 67 20 66 69 6c 65 20 66 69 72 73 74 } //1 Please create keylog file first
		$a_01_5 = {64 65 6c 20 2f 46 20 2f 51 20 6c 6f 67 2e 65 78 65 } //1 del /F /Q log.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}