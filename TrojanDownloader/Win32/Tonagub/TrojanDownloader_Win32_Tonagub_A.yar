
rule TrojanDownloader_Win32_Tonagub_A{
	meta:
		description = "TrojanDownloader:Win32/Tonagub.A,SIGNATURE_TYPE_PEHSTR_EXT,fffffff4 01 ffffffc2 01 0a 00 00 "
		
	strings :
		$a_01_0 = {74 44 4c 47 36 43 7a 39 6f 75 36 5a 48 34 47 34 5a 64 6f 52 36 61 62 65 56 56 63 6d 51 6b 56 53 62 2b 51 4c 59 78 33 39 6f 62 51 3d } //100 tDLG6Cz9ou6ZH4G4ZdoR6abeVVcmQkVSb+QLYx39obQ=
		$a_01_1 = {4d 7a 48 6d 42 7a 2f 6a 32 4f 72 6e 6f 70 35 62 69 65 41 38 59 77 42 4c 41 76 6b 72 42 4e 2b 63 44 69 6d 32 32 74 59 72 6f 73 41 3d } //100 MzHmBz/j2Ornop5bieA8YwBLAvkrBN+cDim22tYrosA=
		$a_01_2 = {64 70 37 76 58 68 56 56 71 2f 66 42 36 66 4e 48 72 78 36 4c 43 53 69 38 6c 41 6d 2b 51 6f 4d 4c 59 70 4b 36 76 66 66 6e 4b 42 43 62 43 } //100 dp7vXhVVq/fB6fNHrx6LCSi8lAm+QoMLYpK6vffnKBCbC
		$a_01_3 = {73 46 39 4b 30 56 57 68 4a 32 46 43 4b 34 70 59 55 73 36 73 63 36 30 4d 49 4e 2b 4a 33 58 79 52 65 72 2b 59 68 4f 78 44 67 39 68 46 62 } //100 sF9K0VWhJ2FCK4pYUs6sc60MIN+J3XyRer+YhOxDg9hFb
		$a_01_4 = {46 6c 4e 62 78 77 76 34 67 31 54 68 6c 41 46 53 66 55 54 53 76 4d 35 69 62 44 65 54 71 47 5a 36 5a 41 69 6b 43 4a 6f 3d } //50 FlNbxwv4g1ThlAFSfUTSvM5ibDeTqGZ6ZAikCJo=
		$a_01_5 = {4f 69 70 72 70 54 46 36 7a 34 75 36 65 36 69 65 6d 47 55 65 4a 6e 31 57 68 50 } //50 OiprpTF6z4u6e6iemGUeJn1WhP
		$a_01_6 = {72 44 32 43 49 46 4d 65 75 65 72 34 6b 5a 39 2f 50 7a 48 6f 74 78 75 73 63 45 } //50 rD2CIFMeuer4kZ9/PzHotxuscE
		$a_01_7 = {37 6f 4c 6d 34 79 4e 72 62 5a 63 6c 46 6a 4e 2b 61 42 55 47 68 75 72 } //50 7oLm4yNrbZclFjN+aBUGhur
		$a_01_8 = {6c 2f 39 58 50 7a 41 65 6b 4e 63 30 57 38 45 32 76 58 41 55 4d 55 51 65 77 6f 57 75 75 38 7a 53 51 77 79 7a 32 5a 70 78 5a 74 6f 3d } //50 l/9XPzAekNc0W8E2vXAUMUQewoWuu8zSQwyz2ZpxZto=
		$a_01_9 = {53 73 79 58 35 4e 6a 41 58 77 42 55 36 44 45 63 48 77 46 34 4a 74 4f 58 77 75 59 75 59 4f 38 41 57 68 50 42 62 65 45 46 55 2b 38 4b 6c 7a 75 73 63 34 43 4a 63 78 34 7a 4f 78 4f 59 30 69 77 42 } //50 SsyX5NjAXwBU6DEcHwF4JtOXwuYuYO8AWhPBbeEFU+8Klzusc4CJcx4zOxOY0iwB
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*100+(#a_01_4  & 1)*50+(#a_01_5  & 1)*50+(#a_01_6  & 1)*50+(#a_01_7  & 1)*50+(#a_01_8  & 1)*50+(#a_01_9  & 1)*50) >=450
 
}