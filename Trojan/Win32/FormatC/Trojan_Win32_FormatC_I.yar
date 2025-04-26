
rule Trojan_Win32_FormatC_I{
	meta:
		description = "Trojan:Win32/FormatC.I,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 41 52 4e 49 4e 47 2c 20 41 4c 4c 20 44 41 54 41 20 4f 4e 20 4e 4f 4e 2d 52 45 4d 4f 56 41 42 4c 45 20 44 49 53 4b } //1 WARNING, ALL DATA ON NON-REMOVABLE DISK
		$a_00_1 = {43 3a 5c 57 49 4e 44 4f 57 53 3e 66 6f 72 6d 61 74 20 63 3a } //1 C:\WINDOWS>format c:
		$a_00_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 20 2f 63 20 64 69 72 2f 73 20 63 3a 5c 2a 2e 2a 3e 3e 66 6f 72 6d 61 74 7e 2e 74 6d 70 } //1 C:\WINDOWS\system32\cmd.exe /c dir/s c:\*.*>>format~.tmp
		$a_00_3 = {4d 69 63 72 6f 73 6f 66 74 28 52 29 20 57 69 6e 64 6f 77 73 20 39 38 } //1 Microsoft(R) Windows 98
		$a_00_4 = {42 6f 72 6c 61 6e 64 20 43 2b 2b 20 2d 20 43 6f 70 79 72 69 67 68 74 20 31 39 39 36 } //1 Borland C++ - Copyright 1996
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}