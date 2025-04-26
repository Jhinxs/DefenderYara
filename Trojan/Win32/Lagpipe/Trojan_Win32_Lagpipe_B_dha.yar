
rule Trojan_Win32_Lagpipe_B_dha{
	meta:
		description = "Trojan:Win32/Lagpipe.B!dha,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2e 00 2f 00 70 00 61 00 79 00 6c 00 6f 00 61 00 64 00 2e 00 64 00 6c 00 6c 00 } //1 ./payload.dll
		$a_01_1 = {5c 00 47 00 4c 00 4f 00 42 00 41 00 4c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 54 00 65 00 6d 00 70 00 } //1 \GLOBAL??\C:\OneDriveTemp
		$a_01_2 = {43 00 3a 00 5c 00 4f 00 6e 00 65 00 44 00 72 00 69 00 76 00 65 00 54 00 65 00 6d 00 70 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 53 00 74 00 6f 00 72 00 65 00 5c 00 46 00 69 00 6c 00 65 00 52 00 65 00 70 00 6f 00 73 00 69 00 74 00 6f 00 72 00 79 00 5c 00 } //1 C:\OneDriveTemp\Windows\system32\DriverStore\FileRepository\
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}