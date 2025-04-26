
rule Backdoor_BAT_Bladabindi_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {28 17 00 00 2b 7e ?? 00 00 0a 8e 20 f8 cb 00 00 58 20 91 85 01 00 20 df 49 ff ff 58 20 4c 25 00 00 7e 0b 00 00 04 0b 07 5f 65 20 b2 08 00 00 59 07 1f 1d 62 07 20 00 00 00 28 5a 58 } //1
		$a_02_1 = {28 03 00 00 06 18 16 8d 11 00 00 01 20 ?? ?? 00 00 20 ?? ?? 00 00 28 19 00 00 2b 14 20 f1 25 a8 55 20 35 20 58 aa d6 7e ?? 00 00 0a 8e 20 3b 4a 00 00 58 7e ?? 00 00 0a 8e 20 83 00 00 00 58 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule Backdoor_BAT_Bladabindi_MTB_2{
	meta:
		description = "Backdoor:BAT/Bladabindi!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 53 75 62 4b 65 79 } //1 CreateSubKey
		$a_01_1 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 set_UseShellExecute
		$a_01_2 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //1 set_CreateNoWindow
		$a_01_3 = {53 65 74 41 63 63 65 73 73 52 75 6c 65 50 72 6f 74 65 63 74 69 6f 6e } //1 SetAccessRuleProtection
		$a_01_4 = {53 65 74 41 63 63 65 73 73 43 6f 6e 74 72 6f 6c } //1 SetAccessControl
		$a_01_5 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //1 get_UserName
		$a_01_6 = {41 64 64 41 63 63 65 73 73 52 75 6c 65 } //1 AddAccessRule
		$a_01_7 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_8 = {67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //1 get_EntryPoint
		$a_01_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_10 = {43 79 61 58 2d 53 68 61 72 70 } //11 CyaX-Sharp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*11) >=15
 
}
rule Backdoor_BAT_Bladabindi_MTB_3{
	meta:
		description = "Backdoor:BAT/Bladabindi!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {70 72 6f 63 65 73 73 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 processInformation
		$a_01_1 = {56 4b 43 6f 64 65 54 6f 55 6e 69 63 6f 64 65 } //1 VKCodeToUnicode
		$a_01_2 = {53 65 72 76 65 72 43 6f 6d 70 75 74 65 72 } //1 ServerComputer
		$a_01_3 = {4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //1 NtSetInformationProcess
		$a_01_4 = {7a 7a 7a 3b 56 56 56 78 41 41 41 } //1 zzz;VVVxAAA
		$a_01_5 = {67 65 74 5f 43 61 70 73 4c 6f 63 6b } //1 get_CapsLock
		$a_01_6 = {67 65 74 5f 4d 61 69 6e 57 69 6e 64 6f 77 54 69 74 6c 65 } //1 get_MainWindowTitle
		$a_01_7 = {67 65 74 5f 53 65 72 76 69 63 65 50 61 63 6b } //1 get_ServicePack
		$a_01_8 = {43 6f 70 79 46 72 6f 6d 53 63 72 65 65 6e } //1 CopyFromScreen
		$a_01_9 = {47 65 74 4b 65 79 62 6f 61 72 64 53 74 61 74 65 } //1 GetKeyboardState
		$a_01_10 = {50 61 72 61 6d 65 74 65 72 69 7a 65 64 54 68 72 65 61 64 53 74 61 72 74 } //1 ParameterizedThreadStart
		$a_01_11 = {53 79 73 74 65 6d 2e 4e 65 74 2e 53 6f 63 6b 65 74 73 } //1 System.Net.Sockets
		$a_01_12 = {67 65 74 5f 53 68 69 66 74 4b 65 79 44 6f 77 6e } //1 get_ShiftKeyDown
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}
rule Backdoor_BAT_Bladabindi_MTB_4{
	meta:
		description = "Backdoor:BAT/Bladabindi!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 13 00 00 "
		
	strings :
		$a_01_0 = {53 65 72 76 65 72 43 6f 6d 70 75 74 65 72 } //1 ServerComputer
		$a_01_1 = {67 65 74 5f 52 65 67 69 73 74 72 79 } //1 get_Registry
		$a_01_2 = {67 65 74 5f 43 75 72 72 65 6e 74 55 73 65 72 } //1 get_CurrentUser
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_4 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 set_UseShellExecute
		$a_01_5 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //1 set_FileName
		$a_01_6 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 set_WindowStyle
		$a_01_7 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 ProcessWindowStyle
		$a_01_8 = {47 65 74 41 6e 74 69 76 69 72 75 73 } //1 GetAntivirus
		$a_01_9 = {53 79 73 74 65 6d 2e 4e 65 74 2e 53 6f 63 6b 65 74 73 } //1 System.Net.Sockets
		$a_01_10 = {5c 00 77 00 6f 00 72 00 6d 00 73 00 5c 00 2e 00 } //1 \worms\.
		$a_01_11 = {5b 00 4e 00 4f 00 52 00 45 00 47 00 5d 00 } //1 [NOREG]
		$a_01_12 = {5b 00 4e 00 4f 00 53 00 54 00 55 00 50 00 5d 00 } //1 [NOSTUP]
		$a_01_13 = {5b 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 6e 00 5d 00 } //1 [pastebinn]
		$a_01_14 = {72 00 6f 00 6f 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //1 root\SecurityCenter
		$a_01_15 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_16 = {64 00 64 00 6f 00 73 00 73 00 74 00 6f 00 70 00 } //1 ddosstop
		$a_01_17 = {6f 00 70 00 65 00 6e 00 68 00 69 00 64 00 65 00 } //1 openhide
		$a_01_18 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //1 SELECT * FROM AntiVirusProduct
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1) >=19
 
}
rule Backdoor_BAT_Bladabindi_MTB_5{
	meta:
		description = "Backdoor:BAT/Bladabindi!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {72 6d 0a 00 70 18 18 8d 25 00 00 01 25 16 08 8c 0d 00 00 01 a2 25 17 11 04 8c 0d 00 00 01 a2 28 94 00 00 0a a5 0a 00 00 01 13 05 11 05 16 16 16 16 } //1
		$a_01_1 = {72 7f 0a 00 70 18 16 8d 25 00 00 01 28 94 00 00 0a a5 64 00 00 01 6f 97 00 00 0a 00 06 11 05 8c 0a 00 00 01 72 83 0a 00 70 18 16 8d 25 00 00 01 28 94 00 00 0a a5 64 00 00 01 6f 97 00 00 0a 00 06 11 05 8c 0a 00 00 01 72 87 0a 00 70 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}