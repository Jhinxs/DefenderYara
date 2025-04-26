
rule TrojanProxy_Win32_Horst_P{
	meta:
		description = "TrojanProxy:Win32/Horst.P,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_00_0 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //1 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_01_1 = {53 41 56 53 63 61 6e } //1 SAVScan
		$a_01_2 = {65 63 20 43 6f 72 65 20 4c 43 } //1 ec Core LC
		$a_01_3 = {4d 69 63 72 6f 73 6f 66 74 20 55 70 64 61 74 65 } //1 Microsoft Update
		$a_01_4 = {4b 41 56 50 65 72 73 6f 6e 61 6c 35 30 } //1 KAVPersonal50
		$a_00_5 = {6b 61 76 73 76 63 } //1 kavsvc
		$a_00_6 = {5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 \Windows\CurrentVersion\Run
		$a_00_7 = {53 68 61 72 65 64 41 63 63 65 73 73 } //1 SharedAccess
		$a_01_8 = {62 61 63 6b 2e 72 65 7a 6e 61 7a 2e 63 6f 6d } //1 back.reznaz.com
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}