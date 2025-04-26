
rule Worm_Win32_Flibot_gen_A{
	meta:
		description = "Worm:Win32/Flibot.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0e 00 08 00 00 "
		
	strings :
		$a_03_0 = {66 33 45 d0 0f bf d0 52 ff 15 ?? ?? ?? ?? 8b d0 8d 4d c8 ff 15 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? 8b d0 8d 4d d4 ff 15 } //10
		$a_03_1 = {66 33 45 d0 0f bf c0 50 e8 ?? ?? ?? ?? 8b d0 8d 4d c8 e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b d0 8d 4d d4 e8 } //10
		$a_03_2 = {6b 70 ff fb 12 e7 0b ?? 00 04 00 23 44 ff 2a 31 74 ff 32 04 00 48 ff 44 ff 35 4c ff 00 0c 6b 70 ff f3 ff 00 c6 1c ?? ?? 00 07 f4 01 70 70 ff 1e ?? ?? 00 0b 6b 70 ff f4 01 a9 70 70 ff 00 0a 04 72 ff 64 6c } //10
		$a_01_3 = {4d 4b 30 30 34 2e 57 7a 31 } //1 MK004.Wz1
		$a_01_4 = {5c 4d 53 56 42 56 4d 36 30 2e 44 4c 4c 5c 33 } //1 \MSVBVM60.DLL\3
		$a_00_5 = {47 65 74 4c 6f 67 69 63 61 6c 44 72 69 76 65 53 74 72 69 6e 67 73 } //1 GetLogicalDriveStrings
		$a_00_6 = {72 00 65 00 6d 00 6f 00 74 00 65 00 70 00 6f 00 72 00 74 00 } //1 remoteport
		$a_01_7 = {6f 00 71 00 32 00 2a 00 } //2 oq2*
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*2) >=14
 
}