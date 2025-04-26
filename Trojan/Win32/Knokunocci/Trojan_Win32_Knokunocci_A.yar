
rule Trojan_Win32_Knokunocci_A{
	meta:
		description = "Trojan:Win32/Knokunocci.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {64 47 46 7a 61 79 35 6b 62 6e 4d 74 63 33 6c 75 4c 6d 4e 76 62 51 3d 3d } //2 dGFzay5kbnMtc3luLmNvbQ==
		$a_01_1 = {73 61 2e 68 74 6d 3f 69 64 3d 34 32 34 39 38 36 39 38 26 72 65 66 65 3d 26 6c 6f 63 61 74 69 6f 6e 3d 74 65 73 74 26 63 6f 6c 6f 72 3d 33 32 78 26 72 65 73 6f 6c 75 74 69 6f 6e 3d 31 30 32 34 2a 37 36 38 26 72 65 74 75 72 6e 69 6e 67 3d 30 26 6c 61 6e 67 75 61 67 65 3d 7a 68 2d 63 6e 26 75 61 3d } //1 sa.htm?id=42498698&refe=&location=test&color=32x&resolution=1024*768&returning=0&language=zh-cn&ua=
		$a_01_2 = {63 6f 75 6e 74 34 2e 35 31 79 65 73 2e 63 6f 6d } //1 count4.51yes.com
		$a_01_3 = {42 49 4e 5c 54 41 53 4b 5c 54 61 73 6b 2e 70 64 62 } //1 BIN\TASK\Task.pdb
		$a_01_4 = {7b 22 62 6f 64 79 22 3a 20 7b 22 73 61 6d 70 6c 65 22 3a 20 32 33 39 2c 20 22 70 75 62 6b 65 79 22 3a 20 5b 33 34 37 31 2c 20 35 38 39 33 5d 7d 2c 20 22 74 61 67 22 3a 20 22 74 6f 6b 65 6e 22 2c 20 22 74 79 70 65 22 3a 20 22 73 6f 63 6b 65 74 22 7d } //1 {"body": {"sample": 239, "pubkey": [3471, 5893]}, "tag": "token", "type": "socket"}
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}