
rule Backdoor_Win32_Heling_A_gen{
	meta:
		description = "Backdoor:Win32/Heling.A.gen!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 0f 00 00 "
		
	strings :
		$a_01_0 = {73 74 6f 70 20 25 73 26 73 63 20 64 65 6c 65 74 65 20 25 73 26 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 35 26 64 65 6c 20 2f 61 20 2f 66 20 22 25 73 22 } //1 stop %s&sc delete %s&ping 127.0.0.1 -n 5&del /a /f "%s"
		$a_01_1 = {26 75 69 64 3d 25 73 26 6c 61 6e 3d 25 73 26 68 6e 61 6d 65 3d 25 73 26 75 6e 61 6d 65 3d 25 73 26 6f 73 3d 25 73 26 70 72 6f 78 79 3d 25 73 26 76 65 72 3d 25 73 } //1 &uid=%s&lan=%s&hname=%s&uname=%s&os=%s&proxy=%s&ver=%s
		$a_01_2 = {61 63 74 69 6f 6e 3d 41 33 56 61 7a 71 69 55 6e 47 4c 49 5a 79 46 5a } //1 action=A3VazqiUnGLIZyFZ
		$a_01_3 = {61 63 74 69 6f 6e 3d 43 71 51 64 66 68 35 33 5a 74 37 72 63 38 39 61 } //1 action=CqQdfh53Zt7rc89a
		$a_01_4 = {61 63 74 69 6f 6e 3d 45 37 44 43 51 68 58 31 44 75 6a 39 4e 33 32 71 } //1 action=E7DCQhX1Duj9N32q
		$a_01_5 = {61 63 74 69 6f 6e 3d 6e 47 30 57 56 58 53 57 47 61 39 72 47 53 6d 74 } //1 action=nG0WVXSWGa9rGSmt
		$a_01_6 = {61 63 74 69 6f 6e 3d 6f 51 63 49 72 4c 35 6e 4c 6a 42 6a 30 59 70 51 } //1 action=oQcIrL5nLjBj0YpQ
		$a_01_7 = {61 63 74 69 6f 6e 3d 51 6f 49 63 52 72 33 6e 4a 55 45 4a 36 4b 78 4d } //1 action=QoIcRr3nJUEJ6KxM
		$a_01_8 = {61 63 74 69 6f 6e 3d 51 53 50 67 41 46 36 33 34 6e 74 6f 54 6d 4a 6c } //1 action=QSPgAF634ntoTmJl
		$a_01_9 = {63 6f 6e 66 69 67 20 73 6c 65 65 70 74 69 6d 65 20 6f 6b 2c 20 61 6e 64 20 74 68 65 20 63 75 72 72 65 6e 74 20 73 6c 65 65 70 74 69 6d 65 20 69 73 20 25 64 } //1 config sleeptime ok, and the current sleeptime is %d
		$a_01_10 = {73 65 74 20 74 68 65 20 63 75 72 72 65 6e 74 20 73 6c 65 65 70 74 69 6d 65 20 69 73 20 25 64 20 73 68 6f 77 } //1 set the current sleeptime is %d show
		$a_01_11 = {5b 25 73 5d 20 74 68 65 20 66 69 6c 65 20 75 70 6c 6f 61 64 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 20 21 } //1 [%s] the file uploaded successfully !
		$a_01_12 = {5b 25 73 5d 20 74 68 65 20 66 69 6c 65 20 64 6f 77 6e 6c 6f 61 64 65 64 20 73 75 63 63 65 73 73 66 75 6c 6c 79 20 21 } //1 [%s] the file downloaded successfully !
		$a_01_13 = {70 68 69 6c 69 70 70 69 6e 65 6e 65 77 73 2e 6d 6f 6f 6f 2e 63 6f 6d } //1 philippinenews.mooo.com
		$a_01_14 = {78 77 65 62 65 72 5f 73 65 72 76 65 72 2e 65 78 65 } //1 xweber_server.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=4
 
}