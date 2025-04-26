
rule PWS_Win32_OnLineGames_LP{
	meta:
		description = "PWS:Win32/OnLineGames.LP,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5f 72 65 6c 5f 72 65 67 61 6d 6c 65 5f 25 30 38 64 5f } //1 _rel_regamle_%08d_
		$a_03_1 = {8d 45 ec 50 c6 ?? ec 49 c6 ?? ed 70 c6 ?? ee 68 c6 ?? ef 6c c6 ?? f0 70 c6 ?? f1 61 c6 ?? f2 70 c6 ?? f3 69 c6 ?? f4 2e c6 ?? f5 64 c6 ?? f6 6c c6 ?? f7 6c c6 ?? dc 47 c6 ?? dd 65 c6 ?? de 74 c6 ?? df 41 } //1
		$a_03_2 = {80 65 ec 00 80 65 fc 00 39 75 0c c6 ?? e0 65 c6 ?? e1 78 c6 ?? e2 70 c6 ?? e3 6c c6 ?? e4 6f c6 ?? e5 72 c6 ?? e6 65 c6 ?? e7 72 c6 ?? e8 2e c6 ?? e9 65 c6 ?? ea 78 c6 ?? eb 65 c6 ?? f0 72 c6 ?? f1 75 c6 ?? f2 6e c6 ?? f3 64 } //1
		$a_03_3 = {50 8d 85 e4 fd ff ff 50 c6 ?? e5 61 c6 ?? e6 63 c6 ?? e7 74 c6 ?? e8 69 c6 ?? e9 6f c6 ?? ea 6e c6 ?? eb 3d c6 ?? ec 70 c6 ?? ed 6c c6 ?? ee 61 c6 ?? ef 79 c6 ?? f0 65 c6 ?? f1 72 c6 ?? f2 6c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}