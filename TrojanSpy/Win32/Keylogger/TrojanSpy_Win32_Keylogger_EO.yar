
rule TrojanSpy_Win32_Keylogger_EO{
	meta:
		description = "TrojanSpy:Win32/Keylogger.EO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {6b 65 79 5f 6e 61 6d 65 3d 6d 61 69 6c 20 61 64 72 65 73 69 6e 69 7a 69 20 79 61 7a fd 6e fd 7a 2e } //1
		$a_01_1 = {68 6f 73 74 5f 6e 61 6d 65 3d 66 74 70 2e 62 69 6c 67 69 68 61 77 75 7a 75 2e 63 6f 6d } //1 host_name=ftp.bilgihawuzu.com
		$a_01_2 = {70 61 73 73 5f 6e 61 6d 65 3d 68 61 77 75 7a 33 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 ff ff ff ff 24 00 00 00 70 6f 72 74 5f 6e 61 6d 65 3d 32 31 20 } //1
		$a_01_3 = {54 76 69 72 6b 65 79 6c 6f 67 } //1 Tvirkeylog
		$a_01_4 = {77 69 6e 73 79 73 62 67 2e 64 6c 6c 00 00 00 00 4d 6f 75 73 65 48 6f 6f 6b 5f 53 74 61 72 74 00 4d 6f 75 73 65 48 6f 6f 6b 5f 53 74 6f 70 00 00 4d 6f 75 73 65 48 6f 6f 6b 5f 47 65 74 44 61 74 61 00 00 00 4d 6f 75 73 65 48 6f 6f 6b } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2) >=3
 
}