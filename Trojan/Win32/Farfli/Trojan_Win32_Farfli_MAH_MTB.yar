
rule Trojan_Win32_Farfli_MAH_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {52 45 43 59 4c 4c 45 2e 42 49 4e 5c 54 6f 72 63 68 57 6f 6f 63 } //1 RECYLLE.BIN\TorchWooc
		$a_01_1 = {53 6c 65 65 70 } //1 Sleep
		$a_01_2 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //1 IsProcessorFeaturePresent
		$a_01_3 = {4b 65 79 46 69 6c 65 70 61 74 68 } //1 KeyFilepath
		$a_01_4 = {43 68 72 6f 6d 65 53 65 63 73 76 37 25 64 37 2e 65 78 65 } //1 ChromeSecsv7%d7.exe
		$a_01_5 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_6 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //1 Process32First
		$a_01_7 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}