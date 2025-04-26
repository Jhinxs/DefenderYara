
rule Backdoor_Win32_WaterCycle_A_dha{
	meta:
		description = "Backdoor:Win32/WaterCycle.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 78 79 2d 41 75 74 68 6f 72 69 7a 61 74 69 6f 6e 3a 20 42 61 73 69 63 20 56 58 4e 6c 63 69 30 77 4d 44 45 36 4d 54 45 78 4d 51 3d 3d } //2 Proxy-Authorization: Basic VXNlci0wMDE6MTExMQ==
		$a_01_1 = {2e 3f 41 56 44 55 70 64 61 74 65 40 40 } //2 .?AVDUpdate@@
		$a_01_2 = {2e 3f 41 56 47 55 70 64 61 74 65 40 40 } //2 .?AVGUpdate@@
		$a_01_3 = {2e 3f 41 56 4f 55 70 64 61 74 65 40 40 } //2 .?AVOUpdate@@
		$a_01_4 = {2e 3f 41 56 43 6c 6f 75 64 42 61 73 65 40 40 } //1 .?AVCloudBase@@
		$a_01_5 = {63 6f 6e 74 65 6e 74 2e 64 72 6f 70 62 6f 78 61 } //1 content.dropboxa
		$a_01_6 = {6e 26 63 6f 64 65 3d 25 73 26 67 72 61 6e 74 5f } //1 n&code=%s&grant_
		$a_01_7 = {70 65 3d 6f 6e 65 64 72 69 76 65 2e 72 65 61 64 } //1 pe=onedrive.read
		$a_02_8 = {6c 6f 67 69 c7 ?? ?? 6e 2e 6c 69 c7 ?? ?? 76 65 2e 63 } //1
		$a_02_9 = {12 3f e0 56 c7 ?? ?? 90 90 ac b2 09 } //2
		$a_02_10 = {f7 e6 8b c6 c1 ea 03 8d 0c 92 03 c9 2b c1 8a 44 ?? ?? 30 04 1e 46 3b f7 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*2+(#a_02_10  & 1)*2) >=7
 
}