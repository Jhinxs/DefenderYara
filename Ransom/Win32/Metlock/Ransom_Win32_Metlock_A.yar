
rule Ransom_Win32_Metlock_A{
	meta:
		description = "Ransom:Win32/Metlock.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {5f 44 61 72 6b 4d 65 74 72 6f } //1 _DarkMetro
		$a_01_1 = {41 6e 74 69 57 69 6e 4c 6f 63 6b 65 72 54 72 61 79 2e 65 78 65 } //1 AntiWinLockerTray.exe
		$a_01_2 = {53 65 72 76 69 63 65 41 6e 74 69 57 69 6e 4c 6f 63 6b 65 72 2e 65 78 65 } //1 ServiceAntiWinLocker.exe
		$a_01_3 = {c7 e0 e1 eb ee ea e8 f0 ee e2 e0 ed 21 21 21 20 d3 e1 e8 e9 f1 f2 e2 ee 20 ef f0 ee f6 e5 f1 f1 ee f0 e0 20 c2 ca cb 20 2b 00 } //1
		$a_01_4 = {f0 ee eb fc 2c 20 ea ee f2 ee f0 fb e9 20 e7 ed e0 fe 20 f2 ee eb fc ea ee 20 ff 2e 0d 0a c8 ed e0 f7 e5 20 ea ee ec ef f3 20 ef e8 e7 e4 e0 21 0d 0a c5 f1 f2 fc 20 32 20 e2 e0 } //1
		$a_01_5 = {cd e5 e2 e5 f0 ed fb e9 20 ef e0 f0 ee eb fc } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}