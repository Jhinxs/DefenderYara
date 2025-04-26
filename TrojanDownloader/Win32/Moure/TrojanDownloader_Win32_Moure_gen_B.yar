
rule TrojanDownloader_Win32_Moure_gen_B{
	meta:
		description = "TrojanDownloader:Win32/Moure.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,17 00 14 00 07 00 00 "
		
	strings :
		$a_03_0 = {35 e1 7a d7 af 3b ce 73 ?? 8b 54 24 ?? 8b 14 11 8b 7c 24 ?? 33 d0 89 14 0f 83 c1 04 3b ce } //10
		$a_00_1 = {4d 53 41 53 43 75 69 2e 65 78 65 } //1 MSASCui.exe
		$a_00_2 = {4d 70 43 6d 64 52 75 6e 2e 65 78 65 } //1 MpCmdRun.exe
		$a_00_3 = {4d 73 4d 70 45 6e 67 2e 65 78 65 } //1 MsMpEng.exe
		$a_00_4 = {4e 69 73 53 72 76 2e 65 78 65 } //1 NisSrv.exe
		$a_00_5 = {6d 73 73 65 63 65 73 2e 65 78 65 } //1 msseces.exe
		$a_03_6 = {8d 50 01 8a 08 40 3a cb 75 ?? 2b c2 3b c3 74 ?? 80 bc 04 9f 00 00 00 5c 74 ?? c6 84 04 a0 00 00 00 5c 40 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_03_6  & 1)*10) >=20
 
}