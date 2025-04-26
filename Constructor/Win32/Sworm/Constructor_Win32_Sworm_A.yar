
rule Constructor_Win32_Sworm_A{
	meta:
		description = "Constructor:Win32/Sworm.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {28 42 6c 61 63 6b 42 6f 78 29 20 53 74 65 61 6c 74 68 20 57 6f 52 6d } //1 (BlackBox) Stealth WoRm
		$a_01_1 = {53 74 65 61 6c 74 68 20 57 6f 52 6d 20 47 65 6e 65 72 61 74 65 64 } //1 Stealth WoRm Generated
		$a_01_2 = {53 63 72 69 70 74 20 62 79 20 28 42 6c 61 63 6b 42 6f 78 29 } //1 Script by (BlackBox)
		$a_01_3 = {2e 57 72 69 74 65 4c 69 6e 65 28 22 25 53 65 74 63 6f 64 65 31 25 69 6e 66 65 63 74 25 53 65 74 63 6f 64 65 31 25 20 63 3a 5c 77 69 6e 64 6f 77 73 5c 25 53 65 74 63 6f 64 65 38 25 20 6a 3a 5c 25 53 65 74 63 6f 64 65 31 25 74 61 72 67 65 74 25 53 65 74 63 6f 64 65 31 25 } //1 .WriteLine("%Setcode1%infect%Setcode1% c:\windows\%Setcode8% j:\%Setcode1%target%Setcode1%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}