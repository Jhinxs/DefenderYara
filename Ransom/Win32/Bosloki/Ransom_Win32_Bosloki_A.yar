
rule Ransom_Win32_Bosloki_A{
	meta:
		description = "Ransom:Win32/Bosloki.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 "
		
	strings :
		$a_01_0 = {25 41 50 50 44 41 54 41 25 5c 52 65 61 64 65 72 70 64 66 5c 41 64 6f 62 65 2e 65 78 65 } //10 %APPDATA%\Readerpdf\Adobe.exe
		$a_01_1 = {41 6c 6c 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 64 65 63 72 79 70 74 65 64 } //10 All files have been decrypted
		$a_01_2 = {6c 6f 72 69 73 20 41 74 74 61 63 6b 20 69 73 20 41 6c 72 65 61 64 79 20 52 75 6e 6e 69 6e 67 20 6f 6e } //5 loris Attack is Already Running on
		$a_01_3 = {6c 65 61 72 6e 20 68 6f 77 20 74 6f 20 70 61 79 20 75 73 20 68 74 74 70 73 3a 2f 2f 77 77 77 2e 79 6f 75 74 75 62 65 2e 63 6f 6d 2f 77 61 74 63 68 3f 76 3d } //1 learn how to pay us https://www.youtube.com/watch?v=
		$a_01_4 = {65 6d 20 62 61 63 6b 2c 20 4a 75 73 74 20 70 61 79 20 75 73 } //1 em back, Just pay us
		$a_01_5 = {42 6f 74 4b 69 6c 6c 65 72 73 } //1 BotKillers
		$a_01_6 = {64 64 6f 73 2e 73 6c 6f 77 6c 6f 72 69 73 2e 73 74 6f 70 } //2 ddos.slowloris.stop
		$a_01_7 = {44 65 63 72 79 70 74 5f 46 69 6c 65 } //1 Decrypt_File
		$a_01_8 = {54 68 65 20 73 74 75 62 20 68 61 73 20 6e 6f 20 42 54 43 20 61 64 64 72 65 73 73 20 } //2 The stub has no BTC address 
		$a_01_9 = {4c 61 75 6e 63 68 5f 63 72 79 70 74 } //2 Launch_crypt
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2) >=12
 
}