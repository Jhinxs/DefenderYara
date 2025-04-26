
rule Trojan_Win32_QbotCore_A_{
	meta:
		description = "Trojan:Win32/QbotCore.A!!Qbot.gen!MTB,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 62 67 5f 25 73 5f 25 75 5f 71 62 6f 74 64 6c 6c 2e 74 78 74 } //1 dbg_%s_%u_qbotdll.txt
		$a_01_1 = {71 62 6f 74 5f 64 6c 6c 5f 6d 61 69 6e } //1 qbot_dll_main
		$a_01_2 = {49 6e 69 74 43 6f 72 65 44 61 74 61 28 29 3a 20 43 4f 52 45 46 4c 41 47 5f 4c 4f 41 44 5f 44 4c 4c 5f 46 52 4f 4d 5f 4d 45 4d 20 77 73 7a 51 62 6f 74 69 6e 6a 45 78 65 50 61 74 68 3d } //1 InitCoreData(): COREFLAG_LOAD_DLL_FROM_MEM wszQbotinjExePath=
		$a_01_3 = {49 6e 69 74 43 6f 72 65 44 61 74 61 28 29 3a 20 43 4f 52 45 46 4c 41 47 5f 4c 4f 41 44 5f 51 42 4f 54 5f 48 4f 4f 4b 20 77 73 7a 51 62 6f 74 69 6e 6a 45 78 65 50 61 74 68 3d } //1 InitCoreData(): COREFLAG_LOAD_QBOT_HOOK wszQbotinjExePath=
		$a_01_4 = {49 6e 69 74 43 6f 72 65 44 61 74 61 28 29 3a 20 73 7a 53 69 64 3d 27 25 73 27 20 77 73 7a 55 73 65 72 4e 61 6d 65 3d 27 25 53 27 20 77 73 7a 44 6f 6d 61 69 6e 4e 61 6d 65 3d 27 25 53 27 20 77 73 7a 51 62 6f 74 69 6e 6a 45 78 65 3d 27 25 53 27 20 77 73 7a 48 6f 6d 65 44 69 72 3d 27 25 53 27 20 73 7a 56 61 72 73 4d 75 74 65 78 3d 27 25 73 27 20 73 7a 42 61 73 65 52 61 6e 64 6f 6d 4e 61 6d 65 3d 27 25 73 27 } //1 InitCoreData(): szSid='%s' wszUserName='%S' wszDomainName='%S' wszQbotinjExe='%S' wszHomeDir='%S' szVarsMutex='%s' szBaseRandomName='%s'
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}