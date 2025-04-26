
rule Trojan_Win32_Delf_AOX{
	meta:
		description = "Trojan:Win32/Delf.AOX,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0c 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 53 68 61 72 65 64 5c 4d 53 49 6e 66 6f 5c 49 45 46 49 4c 45 53 2e 49 4e 49 } //1 C:\Program Files\Common Files\Microsoft Shared\MSInfo\IEFILES.INI
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 70 6f 69 6e 74 5c 41 6e 74 69 2d 41 74 74 61 63 6b } //1 SOFTWARE\Micropoint\Anti-Attack
		$a_01_2 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_3 = {52 6f 67 75 65 43 6c 65 61 6e 65 72 2e 65 78 65 } //1 RogueCleaner.exe
		$a_01_4 = {63 3a 5c 55 69 6e 73 74 61 6c 6c 2e 62 61 74 } //1 c:\Uinstall.bat
		$a_01_5 = {57 6f 70 74 69 43 6c 65 61 6e 2e 65 78 65 } //1 WoptiClean.exe
		$a_01_6 = {73 65 72 76 69 63 65 73 2e 65 78 65 } //1 services.exe
		$a_01_7 = {4d 41 49 4c 4d 4f 4e 2e 45 58 45 } //1 MAILMON.EXE
		$a_01_8 = {49 70 61 72 6d 6f 72 2e 65 78 65 } //1 Iparmor.exe
		$a_01_9 = {61 76 70 63 63 2e 65 78 } //1 avpcc.ex
		$a_01_10 = {61 76 70 2e 65 78 65 } //1 avp.exe
		$a_01_11 = {57 69 6e 45 78 65 63 } //1 WinExec
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=10
 
}