
rule TrojanProxy_Win32_Small_DD{
	meta:
		description = "TrojanProxy:Win32/Small.DD,SIGNATURE_TYPE_PEHSTR_EXT,6b 00 6b 00 09 00 00 "
		
	strings :
		$a_00_0 = {6d 61 69 6c 2e 6d 69 6e 64 73 70 72 69 6e 67 2e 63 6f 6d } //1 mail.mindspring.com
		$a_00_1 = {48 61 72 64 77 61 72 65 5c 44 65 73 63 72 69 70 74 69 6f 6e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //1 Hardware\Description\System\CentralProcessor\0
		$a_00_2 = {6c 73 61 73 2e 65 78 65 } //1 lsas.exe
		$a_00_3 = {63 73 72 73 73 2e 64 6c 6c } //1 csrss.dll
		$a_00_4 = {23 33 32 37 37 30 } //1 #32770
		$a_00_5 = {53 79 73 4c 69 73 74 56 69 65 77 33 32 } //1 SysListView32
		$a_00_6 = {53 68 65 6c 6c 73 70 6c } //1 Shellspl
		$a_00_7 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_02_8 = {b8 01 00 00 00 85 c0 0f 84 8e 00 00 00 6a 00 68 ?? ?? 00 10 ff 15 ?? ?? 00 10 89 45 fc 83 7d fc 00 74 3e 6a 00 68 ?? ?? 00 10 6a 00 8b 4d fc 51 ff 15 ?? ?? 00 10 89 45 f4 6a 00 68 ?? ?? 00 10 6a 00 8b 55 f4 52 ff 15 ?? ?? 00 10 89 45 f4 83 7d f4 00 74 0c 8b 45 f4 50 e8 ?? ?? ff ff 83 c4 04 68 ?? ?? 00 10 68 ?? ?? 00 10 e8 ?? ?? ff ff 83 c4 08 85 c0 75 17 68 ?? ?? 00 10 68 ?? ?? 00 10 68 ?? ?? 00 10 e8 ?? ?? ff ff 83 c4 0c 6a 32 ff 15 ?? ?? 00 10 e9 65 ff ff ff b8 01 00 00 00 8b e5 5d c2 04 00 } //100
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_02_8  & 1)*100) >=107
 
}