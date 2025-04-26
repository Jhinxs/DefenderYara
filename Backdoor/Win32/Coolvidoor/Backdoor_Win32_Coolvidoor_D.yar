
rule Backdoor_Win32_Coolvidoor_D{
	meta:
		description = "Backdoor:Win32/Coolvidoor.D,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0c 00 00 "
		
	strings :
		$a_00_0 = {63 6f 6f 6c 2e 64 61 74 } //3 cool.dat
		$a_02_1 = {43 6f 6f 6c [0-03] 73 65 72 76 65 72 } //3
		$a_00_2 = {47 45 54 46 49 4c 45 7c } //3 GETFILE|
		$a_00_3 = {43 41 50 54 55 52 41 57 45 42 43 41 4d } //3 CAPTURAWEBCAM
		$a_00_4 = {43 4c 49 43 4b 49 5a 51 } //3 CLICKIZQ
		$a_00_5 = {4c 49 53 54 41 52 57 45 42 43 41 4d 53 7c } //3 LISTARWEBCAMS|
		$a_00_6 = {53 45 52 56 49 43 49 4f 53 57 49 4e 7c } //3 SERVICIOSWIN|
		$a_00_7 = {5c 6d 65 6c 74 } //3 \melt
		$a_00_8 = {42 41 43 4b 53 50 41 43 45 } //1 BACKSPACE
		$a_00_9 = {43 41 50 53 4c 4f 43 4b } //1 CAPSLOCK
		$a_00_10 = {53 43 52 4f 4c 4c 4c 4f 43 4b } //1 SCROLLLOCK
		$a_02_11 = {3c 47 45 54 46 49 4c 45 53 3e [0-0c] 3c 4c 49 53 54 4f 46 46 49 4c 45 53 3e [0-0c] 4c 49 53 54 41 52 53 45 52 56 49 43 49 4f 53 } //7
	condition:
		((#a_00_0  & 1)*3+(#a_02_1  & 1)*3+(#a_00_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_00_5  & 1)*3+(#a_00_6  & 1)*3+(#a_00_7  & 1)*3+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_02_11  & 1)*7) >=15
 
}