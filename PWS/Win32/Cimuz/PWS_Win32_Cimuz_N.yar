
rule PWS_Win32_Cimuz_N{
	meta:
		description = "PWS:Win32/Cimuz.N,SIGNATURE_TYPE_PEHSTR_EXT,09 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {67 6d 61 69 6c 2d 73 6d 74 70 2d 69 6e 2e 6c 2e 67 6f 6f 67 6c 65 2e 63 6f 6d } //1 gmail-smtp-in.l.google.com
		$a_01_1 = {46 69 72 65 66 6f 78 20 61 63 63 6f 75 6e 74 20 64 61 74 61 } //2 Firefox account data
		$a_01_2 = {50 4b 31 31 5f 43 68 65 63 6b 55 73 65 72 50 61 73 73 77 6f 72 64 } //1 PK11_CheckUserPassword
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 43 6c 69 65 6e 74 73 5c 53 74 61 72 74 4d 65 6e 75 49 6e 74 65 72 6e 65 74 5c 66 69 72 65 66 6f 78 2e 65 78 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //3 SOFTWARE\Clients\StartMenuInternet\firefox.exe\shell\open\command
		$a_01_4 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 20 61 63 63 6f 75 6e 74 20 64 61 74 61 } //2 Internet Explorer account data
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_01_4  & 1)*2) >=6
 
}