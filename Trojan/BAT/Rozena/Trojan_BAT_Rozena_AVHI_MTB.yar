
rule Trojan_BAT_Rozena_AVHI_MTB{
	meta:
		description = "Trojan:BAT/Rozena.AVHI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {11 0c 11 0d 11 0c 11 0d 91 6e 11 0d 6a 59 20 ff 00 00 00 6a 5f d2 9c 11 0d 17 58 13 0d 11 0d 11 0c 8e 69 } //2
		$a_01_1 = {5a 77 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //1 ZwQueryInformationProcess
		$a_01_2 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //1 CreateProcess
		$a_01_3 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 C:\Windows\System32\svchost.exe
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_5 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}