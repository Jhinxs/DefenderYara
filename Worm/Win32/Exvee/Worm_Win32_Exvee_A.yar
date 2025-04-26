
rule Worm_Win32_Exvee_A{
	meta:
		description = "Worm:Win32/Exvee.A,SIGNATURE_TYPE_PEHSTR_EXT,12 00 0f 00 0e 00 00 "
		
	strings :
		$a_00_0 = {45 78 70 6c 6f 72 65 72 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 } //1 Explorer\IEXPLORE.EXE
		$a_00_1 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //2 \drivers\etc\hosts
		$a_00_2 = {63 73 73 2e 63 73 73 } //2 css.css
		$a_00_3 = {5c 63 6f 6e 66 69 67 2e 69 6e 69 } //1 \config.ini
		$a_00_4 = {5c 74 65 6d 70 49 63 6f 6e 2e 65 78 65 } //1 \tempIcon.exe
		$a_00_5 = {5b 61 75 74 6f 72 75 6e 5d 40 23 4f 70 65 6e 3d 74 6f 6f 6c 2e 65 78 65 40 23 53 68 65 6c 6c 65 78 65 63 75 74 65 3d 74 6f 6f 6c 2e 65 78 65 40 23 53 68 65 6c 6c } //2 [autorun]@#Open=tool.exe@#Shellexecute=tool.exe@#Shell
		$a_00_6 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 :\autorun.inf
		$a_00_7 = {3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 22 6a 61 76 61 73 63 72 69 70 74 22 20 73 72 63 3d 22 68 74 74 70 3a 2f 2f 25 } //2 <script language="javascript" src="http://%
		$a_00_8 = {2e 48 54 4d 4c } //1 .HTML
		$a_00_9 = {2e 41 53 50 58 } //1 .ASPX
		$a_00_10 = {53 79 73 74 65 6d 20 42 6f 6f 74 20 43 68 65 63 6b } //1 System Boot Check
		$a_00_11 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //2 Windows\CurrentVersion\Run
		$a_01_12 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //2 CreateRemoteThread
		$a_01_13 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //2 WriteProcessMemory
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*2+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2) >=15
 
}