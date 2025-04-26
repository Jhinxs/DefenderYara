
rule TrojanSpy_Win32_Infosteal{
	meta:
		description = "TrojanSpy:Win32/Infosteal,SIGNATURE_TYPE_PEHSTR,0b 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 77 73 32 5f 33 32 2e 65 78 65 } //1 \Arquivos de programas\ws2_32.exe
		$a_01_1 = {63 3a 5c 62 6b 2e 64 74 } //1 c:\bk.dt
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 73 6c 30 30 30 2e 63 6f 6d 2e 62 72 2f 77 77 77 2f 69 6e 66 2e 70 68 70 } //1 http://www.ssl000.com.br/www/inf.php
		$a_01_3 = {68 74 74 70 3a 2f 2f 73 73 6c 30 30 30 2e 63 6f 6d 2e 62 72 2f 64 6c 6c 2f } //1 http://ssl000.com.br/dll/
		$a_01_4 = {63 68 65 63 6b 69 70 2e 64 79 6e 64 6e 73 2e 6f 72 67 } //1 checkip.dyndns.org
		$a_01_5 = {55 75 69 64 43 72 65 61 74 65 53 65 71 75 65 6e 74 69 61 6c } //1 UuidCreateSequential
		$a_01_6 = {53 48 44 20 46 69 72 6d 77 61 72 65 3a } //1 SHD Firmware:
		$a_01_7 = {57 69 6e 20 44 69 72 65 74 6f 72 69 63 6f 3a } //1 Win Diretorico:
		$a_01_8 = {40 67 6d 61 69 6c } //1 @gmail
		$a_01_9 = {50 43 20 4d 61 63 3a } //1 PC Mac:
		$a_01_10 = {49 50 20 50 72 69 76 61 64 6f 3a } //1 IP Privado:
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}