
rule Backdoor_Win32_Agent_ADX{
	meta:
		description = "Backdoor:Win32/Agent.ADX,SIGNATURE_TYPE_PEHSTR,fffffffe 00 fffffffe 00 10 00 00 "
		
	strings :
		$a_01_0 = {2d 6b 69 6c 6c 20 25 73 20 25 73 20 2f 69 6e 73 74 61 6c 6c } //100 -kill %s %s /install
		$a_01_1 = {72 65 74 75 72 6e 20 65 73 63 61 70 65 28 75 6e 65 73 63 61 70 65 28 61 2e 72 65 70 6c 61 63 65 28 } //100 return escape(unescape(a.replace(
		$a_01_2 = {25 73 5c 73 79 73 74 65 6d 5c 25 73 2e 65 78 65 } //10 %s\system\%s.exe
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 53 79 73 74 65 6d 5c 25 73 2e 65 78 65 } //10 C:\Program Files\Common Files\System\%s.exe
		$a_01_4 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //10 CreateRemoteThread
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 WriteProcessMemory
		$a_01_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //10 URLDownloadToFileA
		$a_01_7 = {4d 79 47 65 65 6b 50 61 72 74 6e 65 72 52 65 73 75 6c 74 73 } //1 MyGeekPartnerResults
		$a_01_8 = {31 39 35 2e 38 2e 31 35 2e 31 33 38 } //1 195.8.15.138
		$a_01_9 = {32 31 37 2e 31 34 35 2e 37 36 2e 31 33 } //1 217.145.76.13
		$a_01_10 = {70 6f 72 6e 31 2e } //1 porn1.
		$a_01_11 = {76 69 72 67 69 6e 73 2e } //1 virgins.
		$a_01_12 = {68 6f 74 78 78 78 74 76 2e } //1 hotxxxtv.
		$a_01_13 = {66 72 65 65 6c 6f 76 65 2e } //1 freelove.
		$a_01_14 = {66 72 65 65 70 6f 72 6e 6e 6f 77 2e } //1 freepornnow.
		$a_01_15 = {66 72 65 65 70 6f 72 6e 74 6f 64 61 79 2e } //1 freeporntoday.
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1) >=254
 
}