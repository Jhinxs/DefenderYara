
rule Trojan_Win32_Clipbanker_RWA_MTB{
	meta:
		description = "Trojan:Win32/Clipbanker.RWA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_81_0 = {47 65 74 4e 61 74 69 76 65 53 79 73 74 65 6d 49 6e 66 6f } //1 GetNativeSystemInfo
		$a_81_1 = {57 6f 77 36 34 44 69 73 61 62 6c 65 57 6f 77 36 34 46 73 52 65 64 69 72 65 63 74 69 6f 6e } //1 Wow64DisableWow64FsRedirection
		$a_81_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 57 } //1 ShellExecuteExW
		$a_81_3 = {47 65 74 4b 65 79 53 74 61 74 65 } //1 GetKeyState
		$a_81_4 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 57 } //1 SetWindowsHookExW
		$a_81_5 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 20 2f 63 20 63 6d 64 20 3c 20 50 75 72 61 2e 76 73 73 6d } //10 RunProgram="hidcon:cmd /c cmd < Pura.vssm
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*10) >=15
 
}