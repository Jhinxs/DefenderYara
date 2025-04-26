
rule Backdoor_Win32_ProxyBot_E{
	meta:
		description = "Backdoor:Win32/ProxyBot.E,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_01_0 = {2f 67 65 74 69 70 6c 69 73 74 2e 70 68 70 } //1 /getiplist.php
		$a_01_1 = {2f 67 65 74 5f 72 65 73 65 72 76 65 64 5f 73 65 72 76 65 72 73 2e 70 68 70 } //1 /get_reserved_servers.php
		$a_01_2 = {2f 75 70 64 61 74 65 65 78 65 2e 70 68 70 } //1 /updateexe.php
		$a_01_3 = {2f 62 6f 74 69 6e 66 6f 2e 70 68 } //1 /botinfo.ph
		$a_01_4 = {25 73 3f 67 75 69 64 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 64 2e 25 64 2e 25 64 } //1 %s?guid=%s&version=%d.%d.%d
		$a_01_5 = {67 75 69 64 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 73 26 69 6e 73 74 61 6c 6c 74 79 70 65 3d 25 73 } //1 guid=%s&version=%s&installtype=%s
		$a_01_6 = {69 70 3d 25 73 26 67 75 69 64 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 73 26 70 61 73 73 3d 25 73 } //1 ip=%s&guid=%s&version=%s&pass=%s
		$a_00_7 = {5f 50 72 6f 78 79 44 6c 6c 2e 64 6c 6c } //1 _ProxyDll.dll
		$a_00_8 = {41 52 45 5f 59 4f 55 5f 41 4c 49 56 45 } //1 ARE_YOU_ALIVE
		$a_03_9 = {48 45 4c 4f [0-05] 4d 41 49 4c [0-05] 46 52 4f 4d [0-05] 52 43 50 54 [0-05] 54 4f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_03_9  & 1)*1) >=5
 
}