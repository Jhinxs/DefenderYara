
rule Virus_Win32_Cidu_A{
	meta:
		description = "Virus:Win32/Cidu.A,SIGNATURE_TYPE_PEHSTR,2a 00 2a 00 08 00 00 "
		
	strings :
		$a_01_0 = {5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c } //10 \Software\Microsoft\Windows\CurrentVersion\Run\
		$a_01_1 = {55 72 20 75 6e 64 65 72 20 61 74 74 61 63 6b 20 75 20 68 61 76 65 20 74 68 65 20 72 69 67 68 74 20 74 6f 20 72 65 6d 61 69 6e 20 73 69 6c 65 6e 74 2e } //10 Ur under attack u have the right to remain silent.
		$a_01_2 = {6d 65 20 61 6e 64 20 6d 79 20 72 63 } //10 me and my rc
		$a_01_3 = {54 68 65 20 73 79 73 74 65 6d 20 73 68 75 74 73 20 64 6f 77 6e 20 69 6e 20 36 30 20 73 65 63 6f 6e 64 73 2e } //10 The system shuts down in 60 seconds.
		$a_01_4 = {53 65 74 20 63 64 61 75 64 69 6f 20 64 6f 6f 72 20 6f 70 65 6e 20 77 61 69 74 } //1 Set cdaudio door open wait
		$a_01_5 = {53 65 74 20 63 64 61 75 64 69 6f 20 64 6f 6f 72 20 63 6c 6f 73 65 64 20 77 61 69 74 } //1 Set cdaudio door closed wait
		$a_01_6 = {72 75 6e 64 6c 6c 33 32 20 6b 65 79 62 6f 61 72 64 2c 64 69 73 61 62 6c 65 } //1 rundll32 keyboard,disable
		$a_01_7 = {72 75 6e 64 6c 6c 33 32 20 6d 6f 75 73 65 2c 64 69 73 61 62 6c 65 } //1 rundll32 mouse,disable
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=42
 
}