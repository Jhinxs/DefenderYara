
rule Worm_Win32_AutoRun_XXY_bit{
	meta:
		description = "Worm:Win32/AutoRun.XXY!bit,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 09 00 00 "
		
	strings :
		$a_01_0 = {49 6e 6a 65 63 74 69 6e 67 20 2d 3e } //2 Injecting ->
		$a_01_1 = {49 6e 6a 55 70 64 61 74 65 } //2 InjUpdate
		$a_01_2 = {48 6f 6f 6b 4f 6e 00 00 48 6f 6f 6b 4f 66 66 } //2
		$a_01_3 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //2 autorun.inf
		$a_01_4 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d } //2 shellexecute=
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //2 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {55 53 42 20 48 6f 6f 6b 73 20 2d 3e 20 41 63 74 69 76 65 } //1 USB Hooks -> Active
		$a_01_7 = {4b 65 79 62 6f 61 72 64 20 48 6f 6f 6b 20 2d 3e 20 41 63 74 69 76 65 } //1 Keyboard Hook -> Active
		$a_01_8 = {41 75 74 6f 20 4d 61 69 6c 20 53 65 6e 64 65 72 20 2d 3e 20 41 63 74 69 76 65 } //1 Auto Mail Sender -> Active
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=13
 
}