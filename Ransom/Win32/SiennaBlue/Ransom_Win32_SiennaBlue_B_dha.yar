
rule Ransom_Win32_SiennaBlue_B_dha{
	meta:
		description = "Ransom:Win32/SiennaBlue.B!dha,SIGNATURE_TYPE_PEHSTR,06 00 06 00 09 00 00 "
		
	strings :
		$a_01_0 = {2f 73 72 63 2f 48 6f 6c 79 47 68 6f 73 74 50 72 6f 6a 65 63 74 2f 4e 65 74 77 6f 72 6b 2f 6e 65 74 77 6f 72 6b 2e 67 6f } //2 /src/HolyGhostProject/Network/network.go
		$a_01_1 = {2f 73 72 63 2f 48 6f 6c 79 47 68 6f 73 74 50 72 6f 6a 65 63 74 2f 4d 61 69 6e 46 75 6e 63 2f 48 6f 6c 79 52 53 2f 48 6f 6c 79 52 53 2e 67 6f } //2 /src/HolyGhostProject/MainFunc/HolyRS/HolyRS.go
		$a_01_2 = {2f 73 72 63 2f 48 6f 6c 79 47 68 6f 73 74 2f 4d 61 69 6e 2f 63 6f 6d 6d 6f 6e 2e 67 6f } //2 /src/HolyGhost/Main/common.go
		$a_01_3 = {2f 73 72 63 2f 48 6f 6c 79 47 68 6f 73 74 2f 4d 61 69 6e 2f 48 6f 6c 79 4c 6f 63 6b 2f 6c 6f 63 6b 65 72 2e 67 6f } //2 /src/HolyGhost/Main/HolyLock/locker.go
		$a_01_4 = {2f 73 72 63 2f 48 6f 6c 79 4c 6f 63 6b 65 72 2f 4d 61 69 6e 2f 63 6f 6d 6d 6f 6e 2e 67 6f } //2 /src/HolyLocker/Main/common.go
		$a_01_5 = {2f 73 72 63 2f 48 6f 6c 79 4c 6f 63 6b 65 72 2f 4d 61 69 6e 2f 48 6f 6c 79 4c 6f 63 6b 2f 6c 6f 63 6b 65 72 2e 67 6f } //2 /src/HolyLocker/Main/HolyLock/locker.go
		$a_01_6 = {2e 68 30 6c 79 65 6e 63 } //1 .h0lyenc
		$a_01_7 = {6c 6f 63 6b 65 72 74 61 73 6b } //1 lockertask
		$a_01_8 = {48 30 6c 79 47 68 30 73 74 57 65 62 73 69 74 65 } //1 H0lyGh0stWebsite
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=6
 
}