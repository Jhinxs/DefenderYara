
rule Backdoor_MacOS_NetWired_A{
	meta:
		description = "Backdoor:MacOS/NetWired.A,SIGNATURE_TYPE_MACHOHSTR_EXT,0d 00 0d 00 0a 00 00 "
		
	strings :
		$a_01_0 = {8b 44 24 14 bd 64 00 00 00 0f b6 04 08 0f af c7 83 c0 32 99 f7 fd 85 c0 74 0f ba ff 00 00 00 3d 00 01 00 00 0f 4c d0 eb 05 ba 01 00 00 00 0f b6 04 0e 41 8b 6c 24 1c 83 f9 40 88 54 05 00 75 c0 5b 5e 5f 5d c3 } //5
		$a_00_1 = {4c 69 62 72 61 72 79 2f 41 70 70 6c 69 63 61 74 69 6f 6e 20 53 75 70 70 6f 72 74 2f 46 69 72 65 66 6f 78 } //1 Library/Application Support/Firefox
		$a_00_2 = {4c 69 62 72 61 72 79 2f 41 70 70 6c 69 63 61 74 69 6f 6e 20 53 75 70 70 6f 72 74 2f 54 68 75 6e 64 65 72 62 69 72 64 } //1 Library/Application Support/Thunderbird
		$a_00_3 = {2f 4c 69 62 72 61 72 79 2f 4f 70 65 72 61 2f 77 61 6e 64 2e 64 61 74 } //1 /Library/Opera/wand.dat
		$a_00_4 = {4c 69 62 72 61 72 79 2f 41 70 70 6c 69 63 61 74 69 6f 6e 20 53 75 70 70 6f 72 74 2f 53 65 61 4d 6f 6e 6b 65 79 } //1 Library/Application Support/SeaMonkey
		$a_00_5 = {2f 73 69 67 6e 6f 6e 73 2e 73 71 6c 69 74 65 } //1 /signons.sqlite
		$a_00_6 = {50 4b 31 31 5f 47 65 74 49 6e 74 65 72 6e 61 6c 4b 65 79 53 6c 6f 74 } //1 PK11_GetInternalKeySlot
		$a_00_7 = {50 4b 31 31 53 44 52 5f 44 65 63 72 79 70 74 } //1 PK11SDR_Decrypt
		$a_00_8 = {73 71 6c 69 74 65 33 5f 70 72 65 70 61 72 65 5f 76 32 } //1 sqlite3_prepare_v2
		$a_00_9 = {6d 61 63 68 64 65 70 2e 63 70 75 2e 62 72 61 6e 64 5f 73 74 72 69 6e 67 } //1 machdep.cpu.brand_string
	condition:
		((#a_01_0  & 1)*5+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=13
 
}