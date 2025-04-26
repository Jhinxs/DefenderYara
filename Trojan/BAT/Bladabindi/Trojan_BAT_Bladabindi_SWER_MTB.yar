
rule Trojan_BAT_Bladabindi_SWER_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.SWER!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 13 00 00 "
		
	strings :
		$a_81_0 = {53 63 72 65 65 6e 4c 6f 63 6b } //1 ScreenLock
		$a_81_1 = {53 65 72 76 65 72 20 73 65 6e 64 20 74 68 72 65 61 64 20 65 78 63 65 70 74 69 6f 6e } //1 Server send thread exception
		$a_81_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_81_3 = {54 68 69 73 20 69 73 20 61 20 72 65 76 65 72 73 65 20 73 68 65 6c 6c 20 74 6f 6f 6c 2c 20 77 68 69 63 68 20 67 69 76 65 73 20 61 63 63 65 73 73 20 74 6f 20 74 68 69 73 20 6d 61 63 68 69 6e 65 20 72 65 6d 6f 74 65 6c 79 20 66 72 6f 6d 20 61 6e 79 77 68 65 72 65 } //1 This is a reverse shell tool, which gives access to this machine remotely from anywhere
		$a_81_4 = {43 6f 6e 6e 65 63 74 65 64 20 74 6f 20 63 68 61 74 } //1 Connected to chat
		$a_81_5 = {49 50 41 64 64 72 65 73 73 } //1 IPAddress
		$a_81_6 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_81_7 = {53 79 73 74 65 6d 2e 4e 65 74 2e 53 6f 63 6b 65 74 73 } //1 System.Net.Sockets
		$a_81_8 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //1 WriteAllBytes
		$a_81_9 = {53 74 72 69 6e 67 42 75 69 6c 64 65 72 } //1 StringBuilder
		$a_81_10 = {53 70 65 63 69 61 6c 46 6f 6c 64 65 72 } //1 SpecialFolder
		$a_81_11 = {52 65 6d 6f 74 65 53 68 65 6c 6c 53 74 72 65 61 6d } //1 RemoteShellStream
		$a_81_12 = {43 6f 6d 70 75 74 65 53 74 72 69 6e 67 48 61 73 68 } //1 ComputeStringHash
		$a_81_13 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //1 get_ExecutablePath
		$a_81_14 = {53 74 61 72 74 46 69 6c 65 52 65 63 65 69 76 65 } //1 StartFileReceive
		$a_81_15 = {67 65 74 5f 48 61 72 64 77 61 72 65 55 73 61 67 65 41 63 74 69 76 65 } //1 get_HardwareUsageActive
		$a_81_16 = {73 65 74 5f 52 65 6d 6f 74 65 53 68 65 6c 6c 41 63 74 69 76 65 } //1 set_RemoteShellActive
		$a_81_17 = {41 6e 74 69 56 69 72 75 73 54 61 67 } //1 AntiVirusTag
		$a_81_18 = {43 6c 69 70 62 6f 61 72 64 54 79 70 65 } //1 ClipboardType
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1+(#a_81_17  & 1)*1+(#a_81_18  & 1)*1) >=19
 
}