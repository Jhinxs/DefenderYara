
rule Trojan_Win32_Almanahe_A{
	meta:
		description = "Trojan:Win32/Almanahe.A,SIGNATURE_TYPE_PEHSTR,15 00 14 00 09 00 00 "
		
	strings :
		$a_01_0 = {8b 54 24 0c 56 8b 74 24 0c 57 33 ff 85 d2 76 18 8b 44 24 0c 8b ce 2b c6 8b fa 53 8a 1c 08 80 f3 cc 88 19 41 4a 75 f4 5b c6 04 37 00 5f 5e c3 } //10
		$a_01_1 = {4f 70 65 6e 4d 75 74 65 78 41 } //5 OpenMutexA
		$a_01_2 = {5f 5f 44 4c 35 45 58 5f 5f } //5 __DL5EX__
		$a_01_3 = {5f 5f 44 4c 5f 43 4f 52 45 5f 4d 55 54 45 58 5f 5f } //5 __DL_CORE_MUTEX__
		$a_01_4 = {41 43 50 49 23 50 4e 50 30 44 30 44 23 31 23 49 6e 74 65 6c 5f 44 4c 35 } //5 ACPI#PNP0D0D#1#Intel_DL5
		$a_01_5 = {41 43 50 49 23 50 4e 50 30 44 30 44 23 31 23 41 6d 64 5f 44 4c 35 } //5 ACPI#PNP0D0D#1#Amd_DL5
		$a_01_6 = {63 5f 25 30 33 64 2e 6e 6c 73 } //1 c_%03d.nls
		$a_01_7 = {25 73 5c 43 24 5c 49 6e 73 2e 65 78 65 } //1 %s\C$\Ins.exe
		$a_01_8 = {68 74 6d 6c 66 69 6c 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 htmlfile\shell\open\command
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=20
 
}