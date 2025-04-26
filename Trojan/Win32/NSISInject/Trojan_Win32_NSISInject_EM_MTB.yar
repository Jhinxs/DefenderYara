
rule Trojan_Win32_NSISInject_EM_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 "
		
	strings :
		$a_01_0 = {6a 40 68 00 30 00 00 50 53 ff 15 } //10
		$a_01_1 = {6a 40 68 00 30 00 00 50 55 ff 15 } //10
		$a_03_2 = {68 80 00 00 00 6a 03 ?? 6a 01 68 00 00 00 80 ff 70 04 ff 15 } //1
		$a_01_3 = {47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 57 } //1 GetCommandLineW
		$a_01_4 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_5 = {43 72 65 61 74 65 46 69 6c 65 57 } //1 CreateFileW
		$a_01_6 = {52 65 61 64 46 69 6c 65 } //1 ReadFile
		$a_01_7 = {47 65 74 46 69 6c 65 53 69 7a 65 } //1 GetFileSize
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=16
 
}