
rule Worm_Win32_Autorun_DB{
	meta:
		description = "Worm:Win32/Autorun.DB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 6c 69 76 65 75 70 64 61 74 61 2e 64 6c 6c } //1 C:\WINDOWS\SYSTEM32\liveupdata.dll
		$a_01_1 = {6e 6f 20 63 72 65 61 74 65 } //1 no create
		$a_01_2 = {77 69 6e 6c 69 76 65 2e 65 78 65 } //1 winlive.exe
		$a_01_3 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 autorun.inf
		$a_01_4 = {5b 41 75 74 6f 52 75 6e 5d } //1 [AutoRun]
		$a_01_5 = {73 68 65 6c 6c 5c 41 75 74 6f 4f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 3d 2e 5c 4d 53 4f 43 61 63 68 65 5c 39 30 30 30 30 38 30 34 2d 36 30 30 30 2d 31 31 44 33 2d 38 43 46 45 2d 30 31 35 30 30 34 38 33 38 33 43 30 5c 4b 42 39 31 35 38 36 36 2e 65 78 65 } //1 shell\AutoOpen\command=.\MSOCache\90000804-6000-11D3-8CFE-0150048383C0\KB915866.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Worm_Win32_Autorun_DB_2{
	meta:
		description = "Worm:Win32/Autorun.DB,SIGNATURE_TYPE_PEHSTR,05 00 04 00 03 00 00 "
		
	strings :
		$a_01_0 = {65 63 68 6f 20 5b 41 75 74 6f 52 75 6e 5d 3e 3e 43 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //2 echo [AutoRun]>>C:\autorun.inf
		$a_01_1 = {49 46 20 65 78 69 73 74 20 43 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 20 28 61 74 74 72 69 62 20 2d 73 20 2d 68 20 2d 72 20 43 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 20 26 20 64 65 6c 20 2f 66 20 2f 71 20 2f 61 3a 73 20 45 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 20 26 20 64 65 6c 20 2f 66 20 2f 71 20 2f 61 3a 68 20 45 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 20 26 20 63 6f 70 79 20 2f 79 20 22 43 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 22 20 22 45 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 22 20 26 20 61 74 74 72 69 62 20 2b 73 20 2b 68 20 2b 72 20 45 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 20 26 20 61 74 74 72 69 62 20 2b 73 20 2b 68 20 2b 72 20 43 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 29 } //2 IF exist C:\autorun.inf (attrib -s -h -r C:\autorun.inf & del /f /q /a:s E:\autorun.inf & del /f /q /a:h E:\autorun.inf & copy /y "C:\autorun.inf" "E:\autorun.inf" & attrib +s +h +r E:\autorun.inf & attrib +s +h +r C:\autorun.inf)
		$a_01_2 = {69 66 20 6e 6f 74 20 65 78 69 73 74 20 46 3a 5c 20 28 67 6f 74 6f 20 47 57 29 } //1 if not exist F:\ (goto GW)
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=4
 
}