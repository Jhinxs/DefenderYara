
rule Trojan_Win32_Delf_DA{
	meta:
		description = "Trojan:Win32/Delf.DA,SIGNATURE_TYPE_PEHSTR,ffffffaa 00 ffffffa0 00 0f 00 00 "
		
	strings :
		$a_01_0 = {44 69 73 20 69 7a 20 54 6f 54 6f 20 56 2e 31 20 2e 2e 2e 20 44 6f 6e 74 20 77 6f 72 72 79 20 21 20 45 76 65 72 79 74 68 69 6e 67 20 69 73 20 4f 6b 65 79 2e 2e 2e } //100 Dis iz ToTo V.1 ... Dont worry ! Everything is Okey...
		$a_01_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 61 75 74 6f 65 78 65 63 2e 6e 74 } //50 C:\WINDOWS\SYSTEM32\autoexec.nt
		$a_01_2 = {40 43 4f 50 59 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 76 68 6f 73 74 2e 62 61 6b 20 43 3a 5c 57 49 4e 44 4f 57 53 5c 41 64 6f 62 65 2e 65 78 65 } //50 @COPY C:\WINDOWS\svhost.bak C:\WINDOWS\Adobe.exe
		$a_01_3 = {4d 53 4e 5f 48 61 63 6b 65 72 5f 76 33 2e 65 78 65 } //10 MSN_Hacker_v3.exe
		$a_01_4 = {57 69 6e 64 6f 77 73 5f 56 69 73 74 61 5f 41 63 74 69 76 61 74 69 6f 6e 2e 65 78 65 } //10 Windows_Vista_Activation.exe
		$a_01_5 = {57 69 6e 64 6f 77 73 5f 56 69 73 74 61 5f 43 72 61 63 6b 2e 65 78 65 } //10 Windows_Vista_Crack.exe
		$a_01_6 = {4e 65 72 6f 5f 37 5f 4b 65 79 67 65 6e 2e 65 78 65 } //10 Nero_7_Keygen.exe
		$a_01_7 = {59 61 68 6f 6f 5f 48 61 63 6b 65 72 5f 56 32 2e 65 78 65 } //10 Yahoo_Hacker_V2.exe
		$a_01_8 = {4e 41 56 5f 32 30 30 36 5f 4b 65 79 67 65 6e 2e 65 78 65 } //10 NAV_2006_Keygen.exe
		$a_01_9 = {4f 66 66 69 63 65 5f 32 30 30 37 5f 43 72 61 63 6b 2e 65 78 65 } //10 Office_2007_Crack.exe
		$a_01_10 = {56 69 73 75 61 6c 5f 53 74 75 64 69 6f 5f 32 30 30 35 5f 43 72 61 63 6b 2e 65 78 65 } //10 Visual_Studio_2005_Crack.exe
		$a_01_11 = {48 6f 74 6d 61 69 6c 5f 48 61 63 6b 5f 56 31 2e 65 78 65 } //10 Hotmail_Hack_V1.exe
		$a_01_12 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 65 4d 75 6c 65 5c 49 6e 63 6f 6d 69 6e 67 5c } //10 C:\Program Files\eMule\Incoming\
		$a_01_13 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4b 61 7a 61 61 5c 4d 79 20 53 68 61 72 65 64 5c } //10 C:\Program Files\Kazaa\My Shared\
		$a_01_14 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 53 74 72 65 61 6d 43 61 73 74 5c 4d 6f 72 70 68 65 75 73 5c 4d 79 20 53 68 61 72 65 64 5c } //10 C:\Program Files\StreamCast\Morpheus\My Shared\
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*50+(#a_01_2  & 1)*50+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10+(#a_01_11  & 1)*10+(#a_01_12  & 1)*10+(#a_01_13  & 1)*10+(#a_01_14  & 1)*10) >=160
 
}