
rule BrowserModifier_Win32_Cometsystems{
	meta:
		description = "BrowserModifier:Win32/Cometsystems,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 6f 6d 65 74 20 43 75 72 73 6f 72 20 33 2e 30 20 49 6e 73 74 61 6c 6c 65 72 } //2 Comet Cursor 3.0 Installer
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 53 65 61 72 63 68 } //1 Software\Microsoft\Internet Explorer\Search
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 31 36 37 38 46 37 45 31 2d 43 34 32 32 2d 31 31 44 30 2d 41 44 37 44 2d 30 30 34 30 30 35 31 35 43 41 41 41 7d } //3 Software\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{1678F7E1-C422-11D0-AD7D-00400515CAAA}
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3) >=6
 
}
rule BrowserModifier_Win32_Cometsystems_2{
	meta:
		description = "BrowserModifier:Win32/Cometsystems,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 06 00 00 "
		
	strings :
		$a_01_0 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 41 00 75 00 74 00 6f 00 53 00 65 00 61 00 72 00 63 00 68 00 } //2 OriginalAutoSearch
		$a_01_1 = {54 4f 4f 4c 42 41 52 5f 50 4f 50 55 50 5f 42 4c 4f 43 4b 45 52 5f 4e 55 4d 42 45 52 5f 4f 46 5f 42 4c 4f 43 4b 45 44 } //3 TOOLBAR_POPUP_BLOCKER_NUMBER_OF_BLOCKED
		$a_01_2 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 53 00 65 00 61 00 72 00 63 00 68 00 41 00 73 00 73 00 69 00 73 00 74 00 61 00 6e 00 74 00 } //3 OriginalSearchAssistant
		$a_01_3 = {55 00 73 00 65 00 20 00 53 00 65 00 61 00 72 00 63 00 68 00 20 00 41 00 73 00 73 00 74 00 } //3 Use Search Asst
		$a_01_4 = {53 65 61 72 63 68 52 6f 76 65 72 2e 44 4c 4c } //5 SearchRover.DLL
		$a_01_5 = {3c 49 4d 47 20 61 6c 74 3d 22 43 6c 69 63 6b 20 68 65 72 65 20 74 6f 20 64 69 73 61 62 6c 65 20 66 6f 72 20 74 68 65 20 72 65 6d 61 69 6e 64 65 72 20 6f 66 20 74 68 65 20 62 72 6f 77 73 65 72 20 73 65 73 73 69 6f 6e 22 20 62 6f 72 64 65 72 3d 22 30 22 20 68 65 69 67 68 74 3d 22 31 34 22 20 69 64 3d 22 74 72 61 76 65 6c 53 6e 6f 6f 7a 65 22 20 77 69 64 74 68 3d 22 34 32 22 3e } //16 <IMG alt="Click here to disable for the remainder of the browser session" border="0" height="14" id="travelSnooze" width="42">
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*5+(#a_01_5  & 1)*16) >=16
 
}