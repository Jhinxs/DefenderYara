
rule TrojanDownloader_Win32_Banload_DS{
	meta:
		description = "TrojanDownloader:Win32/Banload.DS,SIGNATURE_TYPE_PEHSTR,10 00 10 00 07 00 00 "
		
	strings :
		$a_01_0 = {2f 69 6e 73 74 61 6c 6c 5f 63 6f 75 6e 74 2e 68 74 6d 6c 3f 69 64 3d 73 76 63 73 68 6f 73 74 26 4d 41 43 3d } //1 /install_count.html?id=svcshost&MAC=
		$a_01_1 = {2f 61 63 63 65 73 73 5f 63 6f 75 6e 74 2e 68 74 6d 6c 3f 69 64 3d 73 76 63 73 68 6f 73 74 26 4d 41 43 3d } //1 /access_count.html?id=svcshost&MAC=
		$a_01_2 = {69 66 20 4b 69 6c 6c 50 72 6f 63 65 73 73 42 79 46 69 6c 65 4e 61 6d 65 28 25 73 29 20 74 68 65 6e } //1 if KillProcessByFileName(%s) then
		$a_01_3 = {73 76 63 73 68 6f 73 74 2e 65 78 65 } //1 svcshost.exe
		$a_01_4 = {73 76 63 73 68 6f 73 74 2e 73 79 73 } //1 svcshost.sys
		$a_01_5 = {73 74 6f 70 5f 61 67 65 6e 74 2e 73 79 73 } //1 stop_agent.sys
		$a_01_6 = {63 6f 6e 73 74 72 75 63 74 6f 72 20 54 66 55 70 64 61 74 65 72 2e 43 72 65 61 74 65 3b 00 00 00 ff ff ff ff 0c 00 00 00 73 76 63 73 68 6f 73 74 2e 65 78 65 00 00 00 00 ff ff ff ff 0f 00 00 00 69 66 20 25 73 20 3d 20 25 73 20 74 68 65 6e 00 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*10) >=16
 
}