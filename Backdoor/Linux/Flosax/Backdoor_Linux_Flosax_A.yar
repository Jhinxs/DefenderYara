
rule Backdoor_Linux_Flosax_A{
	meta:
		description = "Backdoor:Linux/Flosax.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2e 61 70 70 6c 65 2e 6d 64 77 6f 72 6b 65 72 5f 73 65 72 76 65 72 } //1 com.apple.mdworker_server
		$a_01_1 = {7b 5f 78 70 63 5f 63 6f 6e 6e 65 63 74 69 6f 6e 5f 73 3d 7d } //1 {_xpc_connection_s=}
		$a_01_2 = {72 65 61 64 4d 65 6d 6f 72 79 42 79 58 50 43 46 72 6f 6d 43 6f 6d 70 6f 6e 65 6e 74 3a 66 6f 72 41 67 65 6e 74 3a 77 69 74 68 43 6f 6d 6d 61 6e 64 54 79 70 65 3a } //1 readMemoryByXPCFromComponent:forAgent:withCommandType:
		$a_01_3 = {78 70 63 5f 63 6f 6e 6e 65 63 74 69 6f 6e 5f 73 65 6e 64 5f 6d 65 73 73 61 67 65 5f 77 69 74 68 5f 72 65 70 6c 79 5f 73 79 6e 63 } //1 xpc_connection_send_message_with_reply_sync
		$a_01_4 = {6d 58 70 63 43 6f 6e } //1 mXpcCon
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
rule Backdoor_Linux_Flosax_A_2{
	meta:
		description = "Backdoor:Linux/Flosax.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 04 00 0c 00 00 "
		
	strings :
		$a_01_0 = {7b 5f 78 70 63 5f 63 6f 6e 6e 65 63 74 69 6f 6e 5f 73 3d 7d } //1 {_xpc_connection_s=}
		$a_01_1 = {4c 69 62 72 61 72 79 2f 4c 61 75 6e 63 68 41 67 65 6e 74 73 2f 63 6f 6d 2e 61 70 70 6c 65 2e 6d 64 77 6f 72 6b 65 72 2e 70 6c 69 73 74 } //1 Library/LaunchAgents/com.apple.mdworker.plist
		$a_01_2 = {2f 53 79 73 74 65 6d 2f 4c 69 62 72 61 72 79 2f 46 72 61 6d 65 77 6f 72 6b 73 2f 46 6f 75 6e 64 61 74 69 6f 6e 2e 66 72 61 6d 65 77 6f 72 6b 2f 58 50 43 53 65 72 76 69 63 65 73 } //1 /System/Library/Frameworks/Foundation.framework/XPCServices
		$a_01_3 = {63 72 65 61 74 65 53 4c 49 50 6c 69 73 74 57 69 74 68 42 61 63 6b 64 6f 6f 72 } //1 createSLIPlistWithBackdoor
		$a_01_4 = {5f 64 72 6f 70 4f 73 61 78 42 75 6e 64 6c 65 } //1 _dropOsaxBundle
		$a_01_5 = {70 6c 61 63 65 43 61 6c 6c 54 6f 48 6f 6f 6b } //1 placeCallToHook
		$a_01_6 = {53 65 6e 64 4d 65 73 73 61 67 65 48 6f 6f 6b 3a 63 63 68 54 65 78 74 3a 69 6e 48 54 4d 4c 3a } //1 SendMessageHook:cchText:inHTML:
		$a_01_7 = {52 43 53 4d 41 67 65 6e 74 41 70 70 6c 69 63 61 74 69 6f 6e } //1 RCSMAgentApplication
		$a_01_8 = {63 6f 6d 2e 61 70 70 6c 65 2e 6d 64 77 6f 72 6b 65 72 5f 73 65 72 76 65 72 } //1 com.apple.mdworker_server
		$a_01_9 = {6d 41 67 65 6e 74 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e } //1 mAgentConfiguration
		$a_01_10 = {68 6f 6f 6b 4b 65 79 62 6f 61 72 64 41 6e 64 4d 6f 75 73 65 } //1 hookKeyboardAndMouse
		$a_01_11 = {69 73 41 43 72 69 73 69 73 41 70 70 } //1 isACrisisApp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=4
 
}