
rule Trojan_Win32_Sinimasest_A_dha{
	meta:
		description = "Trojan:Win32/Sinimasest.A!dha,SIGNATURE_TYPE_PEHSTR,09 00 09 00 0b 00 00 "
		
	strings :
		$a_01_0 = {31 32 33 2e 65 78 65 } //2 123.exe
		$a_01_1 = {31 39 32 2e 31 36 38 2e 38 38 2e 36 39 } //2 192.168.88.69
		$a_01_2 = {25 73 5c 61 64 6d 69 6e 24 5c 73 79 73 74 65 6d 33 32 5c 25 73 } //1 %s\admin$\system32\%s
		$a_01_3 = {49 6e 20 43 6f 6e 74 72 6f 6c 53 65 72 76 69 63 65 } //1 In ControlService
		$a_01_4 = {49 6e 20 43 72 65 61 74 65 46 69 6c 65 } //1 In CreateFile
		$a_01_5 = {49 6e 20 43 72 65 61 74 65 53 65 72 76 69 63 65 } //1 In CreateService
		$a_01_6 = {49 6e 20 44 65 6c 65 74 65 46 69 6c 65 } //1 In DeleteFile
		$a_01_7 = {49 6e 20 44 65 6c 65 74 65 53 65 72 76 69 63 65 } //1 In DeleteService
		$a_01_8 = {49 6e 20 51 75 65 72 79 53 65 72 76 69 63 65 53 74 61 74 75 73 } //1 In QueryServiceStatus
		$a_01_9 = {49 6e 20 53 74 61 72 74 53 65 72 76 69 63 65 } //1 In StartService
		$a_01_10 = {49 6e 20 57 72 69 74 65 46 69 6c 65 } //1 In WriteFile
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=9
 
}