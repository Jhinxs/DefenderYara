
rule Backdoor_Win32_GoldenLight_A{
	meta:
		description = "Backdoor:Win32/GoldenLight.A,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 0a 00 00 "
		
	strings :
		$a_03_0 = {8b 41 24 33 d2 bd 1c 00 00 00 f7 f5 89 51 ?? 8a 44 11 04 8a 14 3e 32 c2 8a 51 ?? 32 c2 34 cc 88 04 3e 8b 51 ?? 46 42 3b f3 89 51 ?? 7c d2 } //4
		$a_03_1 = {8a 54 34 18 32 d0 88 54 34 18 46 83 fe 2b 7c ?? 8d 44 24 18 6a 46 50 8b cb e8 ?? ?? ?? ?? 83 f8 46 0f 85 a5 01 00 00 8d 4c 24 10 6a 05 51 8b cb e8 ?? ?? ?? 83 f8 05 0f 85 8e 01 00 00 80 7c 24 10 16 0f 85 83 01 00 00 8b 54 24 13 52 ff 15 ?? ?? ?? ?? 66 8b f0 81 e6 ff ff 00 00 81 fe f9 3f 00 00 } //2
		$a_01_2 = {8a 04 0e 8a d3 32 01 f6 d2 32 c2 88 01 75 02 88 11 43 41 83 fb 1c 7c e8 } //2
		$a_01_3 = {2a 2a 74 78 74 78 2a 2a } //1 **txtx**
		$a_01_4 = {5c 61 6c 67 2e 65 78 65 } //1 \alg.exe
		$a_80_5 = {54 4d 50 2e 42 41 54 } //TMP.BAT  1
		$a_01_6 = {69 6d 72 70 69 2e 65 78 65 } //1 imrpi.exe
		$a_80_7 = {7e 44 43 58 41 4f 38 2e 74 6d 70 } //~DCXAO8.tmp  1
		$a_01_8 = {43 3a 5c 54 45 4d 50 5c 48 69 73 74 6f 72 79 5c 48 69 73 74 6f 72 79 2e 49 45 35 5c 77 73 6e 63 74 66 79 2e 65 78 65 } //1 C:\TEMP\History\History.IE5\wsnctfy.exe
		$a_01_9 = {73 4f 66 74 57 61 72 45 5c 4d 49 63 72 4f 73 4f 66 74 5c 57 49 6e 64 4f 77 53 5c 43 75 72 52 65 6e 54 56 65 52 73 69 4f 6e 5c 52 75 4e } //1 sOftWarE\MIcrOsOft\WIndOwS\CurRenTVeRsiOn\RuN
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_80_5  & 1)*1+(#a_01_6  & 1)*1+(#a_80_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=100
 
}