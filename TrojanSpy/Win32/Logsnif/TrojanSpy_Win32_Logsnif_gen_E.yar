
rule TrojanSpy_Win32_Logsnif_gen_E{
	meta:
		description = "TrojanSpy:Win32/Logsnif.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,ffffff82 00 7d 00 1e 00 00 "
		
	strings :
		$a_00_0 = {52 69 6e 67 30 50 6f 72 74 2e 73 79 73 } //100 Ring0Port.sys
		$a_00_1 = {70 69 6e 67 2e 65 78 65 } //1 ping.exe
		$a_01_2 = {6c 73 61 73 73 2e 65 78 65 } //1 lsass.exe
		$a_00_3 = {73 76 63 68 6f 73 74 2e 65 78 65 } //1 svchost.exe
		$a_00_4 = {73 6c 69 6c 2e 72 75 } //1 slil.ru
		$a_00_5 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 6d 6f 61 74 75 6d 6f 6e 6e 2e 65 78 65 } //1 :\Program Files\Common Files\moatumonn.exe
		$a_00_6 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 65 78 70 6c 6f 72 65 2e 65 78 65 } //1 :\Program Files\Internet Explorer\Iexplore.exe
		$a_00_7 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 6f 70 65 72 61 5c 6f 70 65 72 61 2e 65 78 65 } //1 :\Program Files\opera\opera.exe
		$a_00_8 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4f 75 74 6c 6f 6f 6b 20 45 78 70 72 65 73 73 5c 6d 73 69 6d 6e 2e 65 78 65 } //1 :\Program Files\Outlook Express\msimn.exe
		$a_00_9 = {5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 \system32\drivers\svchost.exe
		$a_00_10 = {73 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 } //1 system\CurrentControlSet\Services
		$a_00_11 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //3 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_00_12 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
		$a_00_13 = {4f 75 74 70 6f 73 74 4d 61 69 6e 57 69 6e 64 6f 77 43 6c 61 73 73 } //1 OutpostMainWindowClass
		$a_00_14 = {4f 75 74 70 6f 73 74 20 46 69 72 65 77 61 6c 6c 20 50 72 6f } //1 Outpost Firewall Pro
		$a_00_15 = {4b 61 73 70 65 72 73 6b 79 20 41 6e 74 69 2d 48 61 63 6b 65 72 } //1 Kaspersky Anti-Hacker
		$a_00_16 = {4a 65 74 69 63 6f 50 65 72 73 6f 6e 61 6c 46 69 72 65 77 61 6c 6c } //1 JeticoPersonalFirewall
		$a_00_17 = {41 63 74 69 76 69 74 79 20 4d 6f 6e 69 74 6f 72 } //1 Activity Monitor
		$a_00_18 = {4d 6d 47 65 74 50 68 79 73 69 63 61 6c 41 64 64 72 65 73 73 } //1 MmGetPhysicalAddress
		$a_00_19 = {4d 6d 49 73 41 64 64 72 65 73 73 56 61 6c 69 64 } //1 MmIsAddressValid
		$a_00_20 = {49 6f 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //5 IoGetCurrentProcess
		$a_00_21 = {4b 65 33 38 36 53 65 74 49 6f 41 63 63 65 73 73 4d 61 70 } //1 Ke386SetIoAccessMap
		$a_00_22 = {4b 65 33 38 36 51 75 65 72 79 49 6f 41 63 63 65 73 73 4d 61 70 } //2 Ke386QueryIoAccessMap
		$a_01_23 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //5 WriteProcessMemory
		$a_00_24 = {5a 77 4f 70 65 6e 53 65 63 74 69 6f 6e } //1 ZwOpenSection
		$a_00_25 = {5a 77 4c 6f 61 64 44 72 69 76 65 72 } //1 ZwLoadDriver
		$a_00_26 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 ZwQuerySystemInformation
		$a_00_27 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //2 OpenSCManagerA
		$a_00_28 = {73 6f 63 6b 65 74 } //1 socket
		$a_00_29 = {57 53 41 53 74 61 72 74 75 70 } //3 WSAStartup
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*3+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*5+(#a_00_21  & 1)*1+(#a_00_22  & 1)*2+(#a_01_23  & 1)*5+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1+(#a_00_27  & 1)*2+(#a_00_28  & 1)*1+(#a_00_29  & 1)*3) >=125
 
}