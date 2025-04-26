
rule Backdoor_Win32_Rateven_A{
	meta:
		description = "Backdoor:Win32/Rateven.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 59 53 5f 50 41 54 48 3a 20 20 22 00 } //1
		$a_01_1 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 00 } //1
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 3d 52 75 6e 44 6c 6c 33 32 2e 65 78 65 20 6e 74 6c 6f 67 2e 64 6c 6c 2c } //1 ShellExecute=RunDll32.exe ntlog.dll,
		$a_02_3 = {83 3b 00 0f 85 ?? ?? ?? ?? 68 ?? ?? 40 00 e8 ?? fe ff ff 89 03 83 3b 00 0f 84 ?? ?? ?? ?? 68 ?? ?? 40 00 8b 03 50 e8 ?? fe ff ff a3 ?? ?? 40 00 68 ?? ?? 40 00 8b 03 50 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}