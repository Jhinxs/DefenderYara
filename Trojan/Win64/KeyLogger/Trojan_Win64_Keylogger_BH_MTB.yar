
rule Trojan_Win64_Keylogger_BH_MTB{
	meta:
		description = "Trojan:Win64/Keylogger.BH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 12 00 00 "
		
	strings :
		$a_01_0 = {5b 42 41 43 4b 53 50 41 43 45 5d } //1 [BACKSPACE]
		$a_01_1 = {5b 45 4e 54 45 52 5d } //1 [ENTER]
		$a_01_2 = {5b 50 47 20 55 50 5d } //1 [PG UP]
		$a_01_3 = {5b 50 47 20 44 4e 5d } //1 [PG DN]
		$a_01_4 = {5b 48 4f 4d 45 5d } //1 [HOME]
		$a_01_5 = {5b 52 49 47 48 54 5d } //1 [RIGHT]
		$a_01_6 = {5b 44 4f 57 4e 5d } //1 [DOWN]
		$a_01_7 = {5b 50 52 49 4e 54 5d } //1 [PRINT]
		$a_01_8 = {5b 50 52 54 20 53 43 5d } //1 [PRT SC]
		$a_01_9 = {5b 49 4e 53 45 52 54 5d } //1 [INSERT]
		$a_01_10 = {5b 44 45 4c 45 54 45 5d } //1 [DELETE]
		$a_01_11 = {5b 57 49 4e 20 4b 45 59 5d } //1 [WIN KEY]
		$a_01_12 = {5b 43 54 52 4c 5d } //1 [CTRL]
		$a_01_13 = {48 6f 6f 6b 20 70 72 6f 63 65 64 75 72 65 20 68 61 73 20 62 65 65 6e 20 69 6e 73 74 61 6c 6c 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 } //1 Hook procedure has been installed successfully
		$a_01_14 = {4b 65 79 6c 6f 67 67 65 72 20 69 73 20 75 70 20 61 6e 64 20 72 75 6e 6e 69 6e 67 } //1 Keylogger is up and running
		$a_01_15 = {43 61 6e 6e 6f 74 20 75 6e 69 6e 73 74 61 6c 6c 20 74 68 65 20 68 6f 6f 6b 20 70 72 6f 63 65 64 75 72 65 } //1 Cannot uninstall the hook procedure
		$a_01_16 = {48 6f 6f 6b 20 70 72 6f 63 65 64 75 72 65 20 68 61 73 20 62 65 65 6e 20 75 6e 69 6e 73 74 61 6c 6c 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 } //1 Hook procedure has been uninstalled successfully
		$a_01_17 = {44 6f 77 6e 6c 6f 61 64 73 5c 6d 61 6c 73 5c 77 69 6e 6b 6c 5c 6b 65 79 6c 6f 67 67 65 72 5c 73 72 63 5c 4b 65 79 6c 6f 67 67 65 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 4b 65 79 6c 6f 67 67 65 72 2e 70 64 62 } //1 Downloads\mals\winkl\keylogger\src\Keylogger\x64\Release\Keylogger.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1) >=18
 
}