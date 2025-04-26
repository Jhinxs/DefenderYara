
rule TrojanSpy_Win32_Banker_AKJ{
	meta:
		description = "TrojanSpy:Win32/Banker.AKJ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {8d 45 d8 50 68 01 00 00 00 68 02 00 00 00 68 05 00 00 00 8d 45 ec 50 8b 04 24 8b 00 8b 00 ff 90 e0 00 00 00 } //2
		$a_00_1 = {a1 a1 00 52 4d 42 } //1
		$a_00_2 = {70 62 61 6e 6b 2e 39 35 35 35 39 2e 63 6f 6d 2e 63 6e 2f 6e 65 74 70 61 79 } //1 pbank.95559.com.cn/netpay
		$a_00_3 = {2f 49 6e 73 74 61 6c 6c 2f 50 6f 73 74 2e 61 73 70 3f 55 69 64 3d } //1 /Install/Post.asp?Uid=
		$a_00_4 = {67 70 75 70 64 61 74 65 20 2f 66 6f 72 63 65 } //1 gpupdate /force
		$a_00_5 = {5d 00 5b 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 61 00 66 00 65 00 72 00 5c 00 43 00 6f 00 64 00 65 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 73 00 } //1 ][Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}