
rule Backdoor_Win32_Sdbot_gen_B{
	meta:
		description = "Backdoor:Win32/Sdbot.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 37 00 10 00 00 "
		
	strings :
		$a_01_0 = {66 6d 61 70 2e 73 76 63 68 63 74 72 6c } //5 fmap.svchctrl
		$a_01_1 = {65 76 6e 74 2e 73 76 63 68 63 74 72 6c } //5 evnt.svchctrl
		$a_01_2 = {6d 74 78 2e 73 76 63 68 63 74 72 6c } //5 mtx.svchctrl
		$a_01_3 = {6d 74 78 2e 73 76 63 68 6f 73 74 } //5 mtx.svchost
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 42 6f 74 } //5 Software\Microsoft\Windows\CurrentVersion\ShellBot
		$a_01_5 = {74 72 79 69 6e 67 20 74 6f 20 6e 65 74 77 6f 72 6b 20 72 65 61 64 2e 2e 2e 31 2e 2e 2e } //5 trying to network read...1...
		$a_01_6 = {6e 65 74 77 6f 72 6b 5f 63 6f 6e 6e 65 63 74 74 6f 2e 2e 2e 20 68 6f 73 74 20 3a 20 } //5 network_connectto... host : 
		$a_03_7 = {5c 53 79 73 74 65 6d 5c [0-10] 2e 65 78 65 } //5
		$a_01_8 = {4d 5f 50 4f 53 54 2e 45 4e 44 2e } //5 M_POST.END.
		$a_01_9 = {67 65 74 5f 63 6f 6e 74 5f 6c 65 6e 67 74 68 20 3a 20 } //5 get_cont_length : 
		$a_01_10 = {43 4f 4e 4e 45 43 54 20 } //5 CONNECT 
		$a_00_11 = {41 6e 74 69 56 69 72 75 73 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 } //1 AntiVirusDisableNotify
		$a_00_12 = {46 69 72 65 77 61 6c 6c 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 } //1 FirewallDisableNotify
		$a_00_13 = {43 72 65 61 74 65 45 76 65 6e 74 41 } //1 CreateEventA
		$a_00_14 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //1 CreateMutexA
		$a_01_15 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1 InternetOpenA
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5+(#a_03_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*5+(#a_01_10  & 1)*5+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_01_15  & 1)*1) >=55
 
}