
rule TrojanDropper_Win32_VB_FK{
	meta:
		description = "TrojanDropper:Win32/VB.FK,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 41 6e 74 69 56 4d 57 } //3 mAntiVMW
		$a_01_1 = {6d 53 61 6e 64 42 6f 78 } //2 mSandBox
		$a_01_2 = {4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 NtWriteVirtualMemory
		$a_00_3 = {55 00 41 00 43 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //3 UACDisableNotify
		$a_00_4 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //2 Microsoft\Security Center
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_00_3  & 1)*3+(#a_00_4  & 1)*2) >=9
 
}