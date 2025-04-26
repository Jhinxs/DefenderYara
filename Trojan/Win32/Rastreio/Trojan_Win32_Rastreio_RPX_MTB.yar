
rule Trojan_Win32_Rastreio_RPX_MTB{
	meta:
		description = "Trojan:Win32/Rastreio.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {51 00 47 00 56 00 6a 00 61 00 47 00 38 00 67 00 62 00 32 00 5a 00 6d 00 44 00 51 00 70 00 7a 00 5a 00 58 00 52 00 73 00 62 00 32 00 4e 00 68 00 62 00 43 00 42 00 46 00 62 00 6d 00 46 00 69 00 62 00 47 00 56 00 45 00 5a 00 57 00 78 00 68 00 65 00 57 00 56 00 6b 00 52 00 58 00 68 00 77 00 59 00 57 00 35 00 7a 00 61 00 57 00 39 00 75 00 44 00 51 00 70 00 6a 00 } //1 QGVjaG8gb2ZmDQpzZXRsb2NhbCBFbmFibGVEZWxheWVkRXhwYW5zaW9uDQpj
		$a_01_1 = {75 6e 6b 6e 6f 77 6e 64 6c 6c 2e 70 64 62 } //1 unknowndll.pdb
		$a_01_2 = {40 65 63 68 6f 20 6f 66 66 } //1 @echo off
		$a_01_3 = {73 65 74 6c 6f 63 61 6c 20 45 6e 61 62 6c 65 44 65 6c 61 79 65 64 45 78 70 61 6e 73 69 6f 6e } //1 setlocal EnableDelayedExpansion
		$a_01_4 = {25 6c 73 3d 25 6c 73 } //1 %ls=%ls
		$a_01_5 = {5b 52 65 6e 61 6d 65 5d } //1 [Rename]
		$a_01_6 = {45 00 78 00 65 00 63 00 53 00 68 00 65 00 6c 00 6c 00 } //1 ExecShell
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}