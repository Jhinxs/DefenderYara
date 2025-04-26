
rule Worm_Win32_Renama_A{
	meta:
		description = "Worm:Win32/Renama.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_02_0 = {68 01 00 00 80 c7 44 24 ?? 64 00 00 00 c7 44 24 ?? 00 00 00 00 ff d7 8b 4c 24 ?? 8d 54 24 ?? 8d 44 24 ?? 52 50 6a 00 6a 00 68 38 95 40 00 51 ff 15 ?? ?? ?? ?? 8d 54 24 ?? 68 ?? ?? ?? ?? 52 } //10
		$a_00_1 = {25 73 5c 52 65 67 69 73 74 72 79 31 2e 64 6c 6c } //1 %s\Registry1.dll
		$a_00_2 = {25 73 5c 45 52 53 76 63 2e 65 78 65 } //1 %s\ERSvc.exe
		$a_00_3 = {25 73 5c 6d 6d 73 67 5c 6d 6d 73 67 2e 65 78 65 } //1 %s\mmsg\mmsg.exe
		$a_00_4 = {25 73 5c 6d 6d 73 67 5c 6d 63 41 66 65 65 2e 55 70 64 61 74 65 2e 65 78 65 } //1 %s\mmsg\mcAfee.Update.exe
		$a_00_5 = {25 73 5c 43 6f 6e 66 69 67 5c 73 79 73 74 65 6d 2e 75 70 64 61 74 65 2e 65 78 65 } //1 %s\Config\system.update.exe
		$a_00_6 = {25 73 5c 43 6f 6e 66 69 67 5c 45 61 73 79 2e 57 69 6e 64 6f 77 73 2e 4d 6f 6e 69 74 6f 72 69 6e 67 2e 65 78 65 } //1 %s\Config\Easy.Windows.Monitoring.exe
		$a_00_7 = {25 73 5c 6d 61 69 6c 73 2e 64 6c 6c } //1 %s\mails.dll
		$a_00_8 = {25 73 5c 6d 75 68 61 6d 6d 61 64 5f 69 73 5f 6d 79 5f 70 72 6f 70 68 65 74 2e 74 78 74 } //1 %s\muhammad_is_my_prophet.txt
		$a_00_9 = {25 73 2c 20 79 6f 75 72 20 6e 61 6d 65 20 69 73 20 6c 69 73 74 65 64 20 69 6e 20 74 65 72 72 6f 72 69 73 6d 20 6f 72 67 61 6e 69 73 61 74 69 6f 6e 2e 2e 21 21 21 } //1 %s, your name is listed in terrorism organisation..!!!
		$a_00_10 = {25 73 2c 20 4e 61 6d 61 6d 75 20 74 65 72 6d 61 73 75 6b 20 64 61 6c 61 6d 20 64 61 66 74 61 72 20 74 65 72 72 6f 72 69 73 74 2e 2e 21 21 } //1 %s, Namamu termasuk dalam daftar terrorist..!!
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1) >=15
 
}