
rule TrojanDownloader_Win32_Banload_AMS{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMS,SIGNATURE_TYPE_PEHSTR_EXT,ffffff8c 00 ffffff82 00 06 00 00 "
		
	strings :
		$a_01_0 = {51 37 48 71 53 33 65 6c 42 74 54 74 54 6f 76 70 54 36 48 71 4f 4e 39 70 4f 4e 44 58 50 6f 76 65 54 49 7a 66 52 4d 35 64 50 4e 43 6c 52 63 7a 71 50 4e 43 } //100 Q7HqS3elBtTtTovpT6HqON9pONDXPoveTIzfRM5dPNClRczqPNC
		$a_01_1 = {4a 4d 62 5a 53 63 7a 70 52 73 50 71 38 34 7a 63 50 63 62 5a 50 47 } //30 JMbZSczpRsPq84zcPcbZPG
		$a_01_2 = {51 4d 4c 75 53 36 6e 6c 53 63 4c 6f 53 59 76 62 55 36 4b } //30 QMLuS6nlScLoSYvbU6K
		$a_01_3 = {4e 35 44 6c 50 64 48 74 4f 4e 39 62 4e 34 72 66 4f 74 39 6c 53 73 7a 63 54 35 6e 4e 51 4d 76 61 52 } //20 N5DlPdHtON9bN4rfOt9lSszcT5nNQMvaR
		$a_01_4 = {48 63 35 69 51 36 34 57 4f 4d 79 57 4f 4d 39 6f 51 4e 38 57 52 6f 31 58 53 64 35 72 51 4e 50 6c 38 } //20 Hc5iQ64WOMyWOM9oQN8WRo1XSd5rQNPl8
		$a_01_5 = {4e 35 44 6c 50 64 48 74 4f 4e 39 62 4e 34 72 66 4f 74 39 6c 53 73 7a 63 54 35 6e 4a 50 4d 44 72 53 } //20 N5DlPdHtON9bN4rfOt9lSszcT5nJPMDrS
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*30+(#a_01_2  & 1)*30+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20+(#a_01_5  & 1)*20) >=130
 
}