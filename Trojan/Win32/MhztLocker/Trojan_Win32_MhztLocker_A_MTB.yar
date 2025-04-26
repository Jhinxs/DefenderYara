
rule Trojan_Win32_MhztLocker_A_MTB{
	meta:
		description = "Trojan:Win32/MhztLocker.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //2 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 } //2 Windows Defender
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d } //2 Software\Microsoft\Windows\CurrentVersion\Policies\System
		$a_01_3 = {44 69 73 61 62 6c 65 54 61 73 6b 6d 67 72 } //2 DisableTaskmgr
		$a_01_4 = {44 69 73 61 62 6c 65 52 65 67 69 73 74 72 79 54 6f 6f 6c 73 } //2 DisableRegistryTools
		$a_01_5 = {73 74 61 72 74 20 65 63 68 6f 20 54 68 69 73 20 50 43 20 49 73 20 4c 6f 63 6b 65 64 21 20 49 66 20 59 6f 75 20 57 61 6e 74 20 55 6e 6c 6f 63 6b 20 43 6f 6e 74 61 63 74 20 4f 77 6e 65 72 21 } //2 start echo This PC Is Locked! If You Want Unlock Contact Owner!
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=12
 
}