
rule VirTool_WinNT_Keylogger_B{
	meta:
		description = "VirTool:WinNT/Keylogger.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {66 3d 45 00 74 0c 66 3d 3a 00 74 06 66 3d 46 00 75 ?? 0f b7 c0 83 e8 3a 74 ?? 83 e8 0b } //2
		$a_01_1 = {68 ed 00 00 00 6a 60 ff d6 } //1
		$a_00_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 43 00 6c 00 61 00 73 00 73 00 30 00 } //1 \Device\KeyboardClass0
		$a_00_3 = {5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 59 00 78 00 6e 00 4b 00 62 00 45 00 76 00 65 00 6e 00 74 00 } //1 \BaseNamedObjects\Global\YxnKbEvent
		$a_00_4 = {00 4b 65 79 44 77 6f 6e 3a 20 30 78 25 78 } //1 䬀祥睄湯›砰砥
		$a_00_5 = {5c 44 44 4b 50 61 73 73 77 6f 72 64 4c 69 73 74 65 6e 6e 65 72 5c } //1 \DDKPasswordListenner\
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}