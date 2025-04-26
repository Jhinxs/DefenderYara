
rule Rogue_Win32_FakeYak{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 50 68 69 73 68 69 6e 67 46 69 6c 74 65 72 00 45 6e 61 62 6c 65 64 } //1 湉整湲瑥䔠灸潬敲屲桐獩楨杮楆瑬牥䔀慮汢摥
		$a_03_1 = {69 64 3d 25 73 26 68 61 73 68 3d 00 50 4f 53 54 [0-05] 2f [0-05] 2e 65 78 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Rogue_Win32_FakeYak_2{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 22 8b 45 0c 8d 0c 06 8b 45 10 8a 14 07 30 11 50 47 ff 15 } //1
		$a_03_1 = {33 c9 0f b6 81 ?? ?? ?? ?? 8b d0 c1 ea 04 8a 92 ?? ?? ?? ?? 83 e0 0f } //1
		$a_01_2 = {ff 4c 24 18 0f 85 15 ff ff ff 38 5c 24 0f 74 10 68 e0 93 04 00 ff 15 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*2) >=2
 
}
rule Rogue_Win32_FakeYak_3{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 55 10 03 55 fc 0f be 02 8b 4d 08 03 4d f8 0f be 11 33 d0 8b 45 08 03 45 f8 88 10 8b 4d fc 83 c1 01 89 4d fc 8b 55 10 52 e8 } //1
		$a_01_1 = {7b 63 6f 69 64 7d } //1 {coid}
		$a_01_2 = {7b 61 66 66 69 64 7d } //1 {affid}
		$a_01_3 = {2f 63 6f 6d 70 61 74 69 62 69 6c 69 74 79 61 70 70 6c 69 65 64 } //1 /compatibilityapplied
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Rogue_Win32_FakeYak_4{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 63 68 65 63 6b 2e 70 68 70 3f 76 65 72 3d 32 26 71 75 65 72 79 3d 25 73 } //1 /check.php?ver=2&query=%s
		$a_01_1 = {68 74 74 70 3a 2f 2f 25 73 2f 6c 69 76 65 2e 70 68 70 3f 62 61 63 6b 75 70 71 75 65 72 79 3d 25 73 } //1 http://%s/live.php?backupquery=%s
		$a_01_2 = {53 61 66 65 52 65 70 6c 61 63 65 4d 6f 64 65 3d 25 69 } //1 SafeReplaceMode=%i
		$a_01_3 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 34 2e 30 3b 20 53 4c 43 43 32 29 00 } //1 潍楺汬⽡⸴‰挨浯慰楴汢㭥䴠䥓⁅⸶㬰圠湩潤獷丠⁔⸴㬰匠䍌㉃)
		$a_01_4 = {53 74 61 74 73 53 65 72 76 65 72 32 3d 25 73 } //1 StatsServer2=%s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Rogue_Win32_FakeYak_5{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {49 6e 74 65 72 6e 61 6c 20 63 6f 6e 66 6c 69 63 74 20 61 6c 65 72 74 21 20 49 6e 74 65 72 6e 61 6c 20 73 6f 66 74 77 61 72 65 20 63 6f 6e 66 6c 69 63 74 20 64 65 74 65 63 74 65 64 21 } //1 Internal conflict alert! Internal software conflict detected!
		$a_00_1 = {5c 5c 2e 5c 70 69 70 65 5c 70 69 70 65 20 73 65 72 76 65 72 20 25 73 2d 25 73 2d } //1 \\.\pipe\pipe server %s-%s-
		$a_00_2 = {53 70 79 77 61 72 65 20 70 72 6f 74 65 63 74 69 6f 6e 20 69 73 20 64 69 73 61 62 6c 65 64 2e 20 59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 64 61 74 61 20 69 73 20 61 74 20 68 69 67 68 20 72 69 73 6b 20 6f 66 20 62 65 69 6e 67 20 73 74 6f 6c 65 6e 20 61 6e 64 20 6d 69 73 75 73 65 64 2e } //1 Spyware protection is disabled. Your personal data is at high risk of being stolen and misused.
		$a_03_3 = {6d 65 73 73 61 67 65 3d [0-0a] 74 69 70 3d } //1
		$a_02_4 = {53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 [0-20] 41 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 6e 00 6f 00 77 00 [0-20] 41 00 66 00 74 00 65 00 72 00 53 00 63 00 61 00 6e 00 } //1
		$a_03_5 = {56 69 72 74 c7 85 ?? ?? ?? ?? 75 61 6c 50 c7 85 ?? ?? ?? ?? 72 6f 74 65 66 c7 ?? ?? ?? ?? ff 63 74 88 9d ?? ?? ?? ?? ff d6 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1+(#a_02_4  & 1)*1+(#a_03_5  & 1)*2) >=5
 
}
rule Rogue_Win32_FakeYak_6{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_01_0 = {6c 00 53 00 74 00 61 00 74 00 75 00 73 00 4c 00 33 00 3d 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 75 00 6e 00 73 00 69 00 63 00 68 00 65 00 72 00 65 00 6e 00 20 00 5a 00 75 00 73 00 74 00 61 00 6e 00 64 00 20 00 73 00 69 00 6e 00 64 00 20 00 6d 00 65 00 68 00 72 00 65 00 72 00 65 00 20 00 53 00 63 00 68 00 77 00 61 00 63 00 68 00 73 00 74 00 65 00 6c 00 6c 00 65 00 6e 00 } //1 lStatusL3=Running unsicheren Zustand sind mehrere Schwachstellen
		$a_01_1 = {41 00 6e 00 74 00 69 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 44 00 6f 00 63 00 74 00 6f 00 72 00 20 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 } //1 Antimalware Doctor Installer
		$a_01_2 = {45 00 78 00 63 00 65 00 6c 00 6c 00 65 00 6e 00 74 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 21 00 20 00 3b 00 44 00 65 00 74 00 65 00 63 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 65 00 6c 00 69 00 6d 00 69 00 6e 00 69 00 6e 00 61 00 74 00 65 00 73 00 20 00 76 00 69 00 72 00 75 00 73 00 65 00 73 00 } //1 Excellent choice! ;Detects and elimininates viruses
		$a_01_3 = {7b 00 63 00 6f 00 69 00 64 00 7d 00 } //1 {coid}
		$a_01_4 = {7b 00 61 00 66 00 66 00 69 00 64 00 7d 00 } //1 {affid}
		$a_01_5 = {49 6e 63 2e 20 73 69 74 65 73 20 74 6f 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 20 74 72 75 73 74 65 64 20 7a 6f 6e 65 2e } //1 Inc. sites to Internet Explorer trusted zone.
		$a_01_6 = {73 69 64 65 72 65 64 20 69 66 20 61 20 53 75 70 70 6f 72 74 65 72 20 54 6f 6f 6c 20 6c 6f 67 20 68 61 73 20 6e 6f 74 20 62 65 65 6e 20 73 75 62 6d } //1 sidered if a Supporter Tool log has not been subm
		$a_00_7 = {69 6e 73 74 2e 70 68 70 3f 64 6f 3d 32 26 61 3d 7b 61 66 66 69 64 7d 26 62 3d 7b 6c 6f 63 61 6c 65 7d 26 63 3d 7b 63 6f 69 64 7d 26 64 3d 7b 65 76 65 6e 74 7d 26 65 3d 7b 4f 53 56 65 72 7d } //2 inst.php?do=2&a={affid}&b={locale}&c={coid}&d={event}&e={OSVer}
		$a_00_8 = {53 6f 66 74 77 61 72 65 5c 41 6e 74 69 6d 61 6c 77 61 72 65 20 44 6f 63 74 6f 72 20 49 6e 63 } //1 Software\Antimalware Doctor Inc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*2+(#a_00_8  & 1)*1) >=4
 
}
rule Rogue_Win32_FakeYak_7{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {6c 61 73 74 5f 75 70 64 61 74 65 5f 73 69 7a 65 00 } //1
		$a_01_1 = {75 70 64 61 74 65 2e 65 78 65 00 00 6f 70 65 6e 00 } //1
		$a_01_2 = {59 61 4b 72 65 76 65 64 6b 6f } //1 YaKrevedko
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Rogue_Win32_FakeYak_8{
	meta:
		description = "Rogue:Win32/FakeYak,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {7b 00 61 00 66 00 66 00 69 00 64 00 7d 00 00 00 } //1
		$a_01_1 = {75 00 70 00 64 00 5f 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 00 00 6f 00 70 00 65 00 6e 00 00 00 } //1
		$a_01_2 = {59 00 61 00 4b 00 72 00 65 00 76 00 65 00 64 00 6b 00 6f 00 } //1 YaKrevedko
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}