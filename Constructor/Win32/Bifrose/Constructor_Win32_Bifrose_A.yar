
rule Constructor_Win32_Bifrose_A{
	meta:
		description = "Constructor:Win32/Bifrose.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {42 69 66 72 6f 73 74 53 65 74 74 69 6e 67 73 } //1 BifrostSettings
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 42 49 46 52 4f 53 54 } //1 SOFTWARE\BIFROST
		$a_01_2 = {20 44 75 74 79 3f 41 3d 69 76 31 69 } //1  Duty?A=iv1i
		$a_01_3 = {52 45 43 4f 4d 4d 45 4e 44 41 54 49 4f 4e 3a 20 42 69 66 72 6f 73 74 20 77 69 6c 6c 20 75 73 75 61 6c 6c 79 20 62 65 20 62 65 74 74 65 72 20 61 74 20 62 79 70 61 73 73 69 6e 67 20 66 69 72 65 77 61 6c 6c 73 20 69 66 20 74 68 69 73 20 69 73 20 6e 6f 74 20 75 73 65 64 2e } //1 RECOMMENDATION: Bifrost will usually be better at bypassing firewalls if this is not used.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}