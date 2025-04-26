
rule Backdoor_WinNT_Pfinet_A_dha{
	meta:
		description = "Backdoor:WinNT/Pfinet.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 "
		
	strings :
		$a_01_0 = {77 72 69 74 65 5f 70 65 65 72 5f 6e 66 6f 3d 25 63 25 64 2e 25 64 2e 25 64 2e 25 64 3a 25 64 25 63 } //1 write_peer_nfo=%c%d.%d.%d.%d:%d%c
		$a_01_1 = {77 69 6e 69 6e 65 74 5f 61 63 74 69 76 61 74 65 } //1 wininet_activate
		$a_01_2 = {4b 65 41 64 64 53 79 73 74 65 6d 53 65 72 76 69 63 65 54 61 62 6c 65 } //1 KeAddSystemServiceTable
		$a_01_3 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsSetCreateProcessNotifyRoutine
		$a_01_4 = {73 65 72 76 69 63 65 73 2e 65 78 65 00 00 00 00 5c 3f 3f 5c 48 64 31 5c 6d 73 77 64 61 74 2e 64 } //2
		$a_01_5 = {5c 3f 3f 5c 48 64 31 5c 6d 73 69 6e } //2 \??\Hd1\msin
		$a_03_6 = {c7 45 e0 66 00 59 21 eb 2a a1 ?? ?? 01 00 89 45 d0 3b c3 75 e3 b8 01 00 00 c0 e9 ?? ?? ff ff 56 ff 75 10 8b 00 ff 34 88 e8 ?? ?? ff ff 89 45 e0 89 7e ?? 83 4d fc ff } //5
		$a_03_7 = {46 66 83 fe 5a 76 9d 38 5d 0b 0f 84 ?? ?? 00 00 8b 45 fc 66 8b 48 30 66 81 f9 f2 01 0f 87 77 ?? ?? 00 8b 70 34 0f b7 c9 ff 75 0c 8b d1 c1 e9 02 } //5
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_03_6  & 1)*5+(#a_03_7  & 1)*5) >=13
 
}