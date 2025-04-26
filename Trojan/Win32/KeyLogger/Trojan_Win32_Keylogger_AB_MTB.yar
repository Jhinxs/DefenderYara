
rule Trojan_Win32_Keylogger_AB_MTB{
	meta:
		description = "Trojan:Win32/Keylogger.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 53 79 73 46 69 6c 65 5c 61 70 70 64 61 74 2e 69 6e 69 } //1 C:\SysFile\appdat.ini
		$a_00_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 20 2f 63 20 6a 61 76 61 2e 65 78 65 20 2d 6a 61 72 20 43 3a 5c 53 79 73 46 69 6c 65 5c 6d 61 69 6c 2e 6a 61 72 } //1 C:\WINDOWS\system32\cmd.exe /c java.exe -jar C:\SysFile\mail.jar
		$a_02_2 = {5b 4e 55 4d 50 41 44 5f 53 45 50 41 52 41 54 4f 52 5d [0-10] 5b 43 41 50 53 5d [0-10] 5b 45 4e 44 5d [0-10] 5b 48 4f 4d 45 5d [0-10] 5b 49 4e 53 45 52 54 5d [0-10] 5b 44 45 4c 45 54 45 5d } //1
		$a_00_3 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //1 GetAsyncKeyState
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}