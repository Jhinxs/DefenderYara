
rule Backdoor_Win32_PcClient_DW{
	meta:
		description = "Backdoor:Win32/PcClient.DW,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 48 6f 73 74 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\SvcHost
		$a_01_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c } //1 SYSTEM\CurrentControlSet\Services\
		$a_01_2 = {53 65 72 76 69 63 65 44 6c 6c } //1 ServiceDll
		$a_01_3 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //1 %SystemRoot%\system32\svchost.exe -k netsvcs
		$a_01_4 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 55 53 42 44 72 69 76 65 72 } //1 SYSTEM\CurrentControlSet\Services\USBDriver
		$a_01_5 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7b 00 37 00 45 00 42 00 34 00 42 00 35 00 37 00 33 00 2d 00 31 00 43 00 37 00 37 00 2d 00 34 00 61 00 33 00 33 00 2d 00 39 00 43 00 44 00 41 00 2d 00 41 00 42 00 33 00 35 00 31 00 31 00 38 00 39 00 35 00 41 00 42 00 39 00 7d 00 } //1 Global\{7EB4B573-1C77-4a33-9CDA-AB3511895AB9}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}