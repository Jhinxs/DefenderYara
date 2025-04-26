
rule Trojan_Win32_Plainker_A_dha{
	meta:
		description = "Trojan:Win32/Plainker.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 4b 65 76 69 6e 5c 50 72 6f 6a 65 63 74 73 5c 4d 61 74 20 4e 65 77 53 6f 75 72 63 65 5c } //2 C:\Kevin\Projects\Mat NewSource\
		$a_01_1 = {39 65 39 61 36 37 35 34 2d 33 63 35 66 2d 36 37 38 36 2d 62 36 66 65 2d 64 61 39 34 63 37 65 63 65 37 62 61 } //2 9e9a6754-3c5f-6786-b6fe-da94c7ece7ba
		$a_01_2 = {63 6d 64 20 2f 63 20 6e 73 6c 6f 6f 6b 75 70 20 2d 72 65 74 72 79 3d 32 20 2d 74 79 70 65 3d } //2 cmd /c nslookup -retry=2 -type=
		$a_01_3 = {63 72 65 61 74 65 5f 64 69 72 65 63 74 6f 72 79 28 70 29 3a 20 69 6e 76 61 6c 69 64 20 61 72 67 75 6d 65 6e 74 } //1 create_directory(p): invalid argument
		$a_01_4 = {2f 68 65 6c 70 65 72 2e 69 6e 69 } //1 /helper.ini
		$a_01_5 = {2c 61 64 64 72 65 73 73 3d 20 25 73 2c 20 6d 73 67 3d 20 25 73 } //1 ,address= %s, msg= %s
		$a_01_6 = {69 70 63 6f 6e 66 69 67 20 2f 66 6c 75 73 68 64 6e 73 20 26 20 65 78 69 74 } //1 ipconfig /flushdns & exit
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=3
 
}