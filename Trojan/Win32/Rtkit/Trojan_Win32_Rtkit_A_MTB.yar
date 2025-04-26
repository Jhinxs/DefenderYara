
rule Trojan_Win32_Rtkit_A_MTB{
	meta:
		description = "Trojan:Win32/Rtkit.A!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {50 73 52 65 6d 6f 76 65 4c 6f 61 64 49 6d 61 67 65 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsRemoveLoadImageNotifyRoutine
		$a_01_1 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 41 00 5f 00 44 00 65 00 76 00 69 00 63 00 65 00 4e 00 61 00 6d 00 65 00 } //1 \DosDevices\A_DeviceName
		$a_01_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 41 00 5f 00 44 00 65 00 76 00 69 00 63 00 65 00 4e 00 61 00 6d 00 65 00 } //1 \Device\A_DeviceName
		$a_01_3 = {64 3a 5c 70 5c 6c 6f 73 65 72 5c 61 5c 61 5c 6f 62 6a 66 72 65 5f 77 78 70 5f 78 38 36 5c 69 33 38 36 5c 41 2e 70 64 62 } //1 d:\p\loser\a\a\objfre_wxp_x86\i386\A.pdb
		$a_01_4 = {4d 6d 4d 61 70 4c 6f 63 6b 65 64 50 61 67 65 73 53 70 65 63 69 66 79 43 61 63 68 65 } //1 MmMapLockedPagesSpecifyCache
		$a_01_5 = {48 61 6c 4d 61 6b 65 42 65 65 70 } //1 HalMakeBeep
		$a_01_6 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //1 ntoskrnl.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}