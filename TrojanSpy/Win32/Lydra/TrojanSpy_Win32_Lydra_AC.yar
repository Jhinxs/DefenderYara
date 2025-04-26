
rule TrojanSpy_Win32_Lydra_AC{
	meta:
		description = "TrojanSpy:Win32/Lydra.AC,SIGNATURE_TYPE_PEHSTR_EXT,5e 00 5e 00 0a 00 00 "
		
	strings :
		$a_00_0 = {7b 32 41 44 46 35 2d 34 37 35 36 2d 34 34 38 31 2d 35 37 38 45 2d 37 38 37 35 34 35 38 38 35 38 39 30 30 7d } //30 {2ADF5-4756-4481-578E-7875458858900}
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //20 SOFTWARE\Borland\Delphi\RTL
		$a_00_2 = {6b 69 6c 6c 73 65 6c 66 } //10 killself
		$a_00_3 = {52 6f 73 68 61 6c 2e 57 69 6e 52 41 52 2e 57 69 6e 52 41 52 } //10 Roshal.WinRAR.WinRAR
		$a_00_4 = {73 69 6c 65 6e 74 2e 74 78 74 } //10 silent.txt
		$a_00_5 = {77 69 6e 73 79 73 } //5 winsys
		$a_00_6 = {6d 73 6f 72 63 76 70 } //5 msorcvp
		$a_01_7 = {43 72 65 61 74 65 53 65 6d 61 70 68 6f 72 65 41 } //3 CreateSemaphoreA
		$a_01_8 = {53 74 61 72 74 53 65 72 76 69 63 65 43 74 72 6c 44 69 73 70 61 74 63 68 65 72 41 } //3 StartServiceCtrlDispatcherA
		$a_01_9 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //3 Toolhelp32ReadProcessMemory
	condition:
		((#a_00_0  & 1)*30+(#a_00_1  & 1)*20+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*5+(#a_00_6  & 1)*5+(#a_01_7  & 1)*3+(#a_01_8  & 1)*3+(#a_01_9  & 1)*3) >=94
 
}