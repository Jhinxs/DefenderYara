
rule PWS_Win32_Wowsteal_ZB{
	meta:
		description = "PWS:Win32/Wowsteal.ZB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0a 00 00 "
		
	strings :
		$a_01_0 = {43 52 41 43 4b 49 4e 47 } //1 CRACKING
		$a_00_1 = {77 6f 77 2e 65 78 65 } //1 wow.exe
		$a_00_2 = {44 45 56 49 43 45 44 41 54 41 } //1 DEVICEDATA
		$a_00_3 = {53 59 53 54 45 4d 5c 4d 6f 75 6e 74 65 64 44 65 76 69 63 65 73 } //1 SYSTEM\MountedDevices
		$a_00_4 = {61 63 74 69 6f 6e 3d 67 65 74 70 6f 73 26 75 3d 25 73 } //1 action=getpos&u=%s
		$a_00_5 = {61 63 74 69 6f 6e 3d 70 6f 73 74 6d 62 26 75 3d 25 73 26 6d 62 3d 25 73 } //1 action=postmb&u=%s&mb=%s
		$a_00_6 = {57 54 46 5c 63 6f 6e 66 69 67 2e 77 74 66 } //1 WTF\config.wtf
		$a_00_7 = {72 65 61 6c 6d 4e 61 6d 65 } //1 realmName
		$a_00_8 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //1 CallNextHookEx
		$a_00_9 = {8d 4d cc 8d 55 e8 b0 6c b3 64 51 52 c6 45 e8 75 c6 45 e9 72 88 45 ea c6 45 eb 6d c6 45 ee 2e 88 5d ef 88 45 f0 88 45 f1 c6 45 f2 00 c6 45 cc 55 c6 45 cd 52 c6 45 ce 4c c6 45 cf 44 c6 45 d1 77 88 45 d3 88 5d d6 c6 45 d7 54 c6 45 d9 43 c6 45 db 63 c6 45 dc 68 c6 45 de 46 c6 45 df 69 88 45 e0 c6 45 e2 41 c6 45 e3 00 ff 15 70 60 00 25 50 ff 15 74 60 00 25 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*10) >=19
 
}