
rule Trojan_Win32_IcedID_MB_MTB{
	meta:
		description = "Trojan:Win32/IcedID.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2b df 81 c1 20 f3 8e 01 03 c3 89 0d ?? ?? ?? ?? a3 ?? ?? ?? ?? 89 8c 16 5f de ff ff a1 ?? ?? ?? ?? 8b 2d ?? ?? ?? ?? bb 53 00 00 00 2b d8 8b cd 2b cb 83 c1 1d 89 1d ?? ?? ?? ?? 3b c8 75 } //1
		$a_01_1 = {43 72 65 61 74 65 53 65 6d 61 70 68 6f 72 65 41 } //1 CreateSemaphoreA
		$a_01_2 = {52 65 67 69 73 74 65 72 48 6f 74 4b 65 79 } //1 RegisterHotKey
		$a_01_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_Win32_IcedID_MB_MTB_2{
	meta:
		description = "Trojan:Win32/IcedID.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 41 75 74 6f 52 75 6e 2e 65 78 65 } //3 shellexecute=AutoRun.exe
		$a_81_1 = {70 72 6f 70 3a 53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 45 6e 63 72 79 70 74 69 6f 6e 4f 77 6e 65 72 73 } //3 prop:System.Security.EncryptionOwners
		$a_81_2 = {52 65 73 6f 6c 76 65 44 65 6c 61 79 4c 6f 61 64 65 64 41 50 49 } //3 ResolveDelayLoadedAPI
		$a_81_3 = {44 65 6c 61 79 4c 6f 61 64 46 61 69 6c 75 72 65 48 6f 6f 6b } //3 DelayLoadFailureHook
		$a_81_4 = {44 75 70 6c 69 63 61 74 65 45 6e 63 72 79 70 74 69 6f 6e 49 6e 66 6f 46 69 6c 65 } //3 DuplicateEncryptionInfoFile
		$a_81_5 = {6c 70 56 61 6c 75 65 4e 61 6d 65 2d 3e 48 69 64 64 65 6e } //3 lpValueName->Hidden
		$a_81_6 = {43 3a 5c 41 55 54 4f 45 58 45 43 2e 42 41 54 2e 65 78 65 } //3 C:\AUTOEXEC.BAT.exe
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}