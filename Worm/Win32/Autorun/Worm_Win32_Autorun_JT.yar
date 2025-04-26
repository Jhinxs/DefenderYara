
rule Worm_Win32_Autorun_JT{
	meta:
		description = "Worm:Win32/Autorun.JT,SIGNATURE_TYPE_PEHSTR,13 00 11 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {73 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 54 54 4c 53 45 52 56 49 43 45 } //1 software\Classes\CLSID\TTLSERVICE
		$a_01_2 = {5c 54 54 4c 53 65 72 76 69 63 65 2e 65 78 65 } //1 \TTLService.exe
		$a_01_3 = {41 63 74 53 65 72 76 69 63 65 } //1 ActService
		$a_01_4 = {5c 41 75 74 6f 72 75 6e 5c 41 75 74 6f 72 75 6e 2e 65 78 65 } //1 \Autorun\Autorun.exe
		$a_01_5 = {5c 41 75 74 6f 72 75 6e 2e 69 6e 66 } //1 \Autorun.inf
		$a_01_6 = {4f 70 65 6e 3d 61 75 74 6f 72 75 6e 5c 61 75 74 6f 72 75 6e 2e 65 78 65 } //1 Open=autorun\autorun.exe
		$a_01_7 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 41 75 74 6f 52 75 6e 5c 41 75 74 6f 72 75 6e 2e 65 78 65 } //1 shellexecute=AutoRun\Autorun.exe
		$a_01_8 = {28 26 4f 29 5c 63 6f 6d 6d 61 6e 64 3d 61 75 74 6f 72 75 6e 5c 61 75 74 6f 72 75 6e 2e 65 78 65 } //1 (&O)\command=autorun\autorun.exe
		$a_01_9 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 72 75 6e } //1 software\microsoft\windows\currentversion\run
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=17
 
}