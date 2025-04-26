
rule Backdoor_Win32_Genie_gen_A{
	meta:
		description = "Backdoor:Win32/Genie.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0d 00 0f 00 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 47 6c 6f 62 61 6c 6c 79 4f 70 65 6e 50 6f 72 74 73 5c 4c 69 73 74 } //1 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List
		$a_01_2 = {31 31 37 39 3a 54 43 50 3a 2a 3a 50 72 6f 76 69 64 65 73 20 74 68 65 20 65 6e 64 70 6f 69 6e 74 20 6d 61 70 70 65 72 20 61 6e 64 20 6f 74 68 65 72 20 6d 69 73 63 65 6c 6c 61 6e 65 6f 75 73 20 52 50 43 20 73 65 72 76 69 63 65 73 2e } //1 1179:TCP:*:Provides the endpoint mapper and other miscellaneous RPC services.
		$a_01_3 = {48 65 6c 6c 6f 20 6d 79 20 6d 61 73 74 65 72 2e 49 20 61 6d 20 77 61 69 74 69 6e 67 20 66 6f 72 20 79 6f 75 72 20 63 6f 6d 6d 61 6e 64 73 2e } //1 Hello my master.I am waiting for your commands.
		$a_01_4 = {54 79 70 65 20 79 6f 75 72 20 70 61 73 73 77 6f 72 64 20 70 6c 65 61 73 65 3a 3e } //1 Type your password please:>
		$a_01_5 = {4f 76 65 72 66 6c 6f 77 20 69 73 20 6e 6f 74 20 77 6f 72 6b 69 6e 67 20 69 6e 20 6d 79 20 70 72 6f 67 72 61 6d 2e 20 47 6f 20 66 75 63 6b 20 79 6f 75 72 73 65 6c 66 21 21 21 21 21 21 21 21 21 21 21 21 } //1 Overflow is not working in my program. Go fuck yourself!!!!!!!!!!!!
		$a_01_6 = {76 73 68 75 74 64 6f 77 6e } //1 vshutdown
		$a_01_7 = {54 61 73 6b 4d 61 6e 20 61 6e 64 20 52 65 67 69 73 74 72 79 20 4c 6f 63 6b 73 } //1 TaskMan and Registry Locks
		$a_01_8 = {54 61 73 6b 4d 61 6e 20 61 6e 64 20 52 65 67 69 73 74 72 79 20 55 6e 4c 6f 63 6b 73 } //1 TaskMan and Registry UnLocks
		$a_01_9 = {44 69 73 61 62 6c 65 52 65 67 69 73 74 72 79 54 6f 6f 6c 73 } //1 DisableRegistryTools
		$a_01_10 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_01_11 = {2d 4c 49 42 47 43 43 57 33 32 2d 45 48 2d 53 4a 4c 4a 2d 47 54 48 52 2d 4d 49 4e 47 57 33 32 } //1 -LIBGCCW32-EH-SJLJ-GTHR-MINGW32
		$a_01_12 = {47 65 6e 69 65 20 76 31 2e 33 20 62 79 20 70 72 6e 63 69 70 69 61 2e 20 20 41 6c 6c 20 52 69 67 68 74 73 20 52 65 73 65 72 76 65 64 } //1 Genie v1.3 by prncipia.  All Rights Reserved
		$a_00_13 = {72 65 67 6d 6f 6e 74 2e 65 78 65 } //1 regmont.exe
		$a_00_14 = {63 70 72 6f 67 2e 65 78 65 } //1 cprog.exe
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1) >=13
 
}