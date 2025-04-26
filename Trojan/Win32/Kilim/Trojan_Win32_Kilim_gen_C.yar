
rule Trojan_Win32_Kilim_gen_C{
	meta:
		description = "Trojan:Win32/Kilim.gen!C,SIGNATURE_TYPE_PEHSTR,67 00 67 00 09 00 00 "
		
	strings :
		$a_01_0 = {25 41 5f 41 70 70 44 61 74 61 25 5c 63 68 72 6f 6d 69 75 6d 2e 65 78 65 } //100 %A_AppData%\chromium.exe
		$a_01_1 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 47 6f 6f 67 6c 65 55 70 64 61 74 65 2e 65 78 65 20 2f 46 } //1 taskkill /IM GoogleUpdate.exe /F
		$a_01_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 6f 70 65 72 61 5f 61 75 74 6f 75 70 64 61 74 65 2e 65 78 65 20 2f 46 } //1 taskkill /IM opera_autoupdate.exe /F
		$a_01_3 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 79 75 70 64 61 74 65 2d 65 78 65 63 2e 65 78 65 20 2f 46 } //1 taskkill /IM yupdate-exec.exe /F
		$a_01_4 = {73 63 68 74 61 73 6b 73 20 2f 44 65 6c 65 74 65 20 2f 54 4e 20 47 6f 6f 67 6c 65 55 70 64 61 74 65 54 61 73 6b 4d 61 63 68 69 6e 65 43 6f 72 65 20 2f 46 } //1 schtasks /Delete /TN GoogleUpdateTaskMachineCore /F
		$a_01_5 = {73 63 68 74 61 73 6b 73 20 2f 44 65 6c 65 74 65 20 2f 54 4e 20 47 6f 6f 67 6c 65 55 70 64 61 74 65 54 61 73 6b 4d 61 63 68 69 6e 65 55 41 20 2f 46 } //1 schtasks /Delete /TN GoogleUpdateTaskMachineUA /F
		$a_01_6 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 63 68 72 6f 6d 65 2e 65 78 65 20 2f 46 } //1 taskkill /IM chrome.exe /F
		$a_01_7 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 62 72 6f 77 73 65 72 2e 65 78 65 20 2f 46 } //1 taskkill /IM browser.exe /F
		$a_01_8 = {74 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 6f 70 65 72 61 2e 65 78 65 20 2f 46 } //1 taskkill /IM opera.exe /F
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=103
 
}