
rule Backdoor_Win32_Nrat_A{
	meta:
		description = "Backdoor:Win32/Nrat.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4d 00 79 00 54 00 6d 00 70 00 46 00 69 00 6c 00 65 00 2e 00 44 00 61 00 74 00 } //1 MyTmpFile.Dat
		$a_00_1 = {43 3a 5c 55 73 65 72 73 5c 68 6f 6f 67 6c 65 31 36 38 5c 44 65 73 6b 74 6f 70 5c 32 30 30 38 50 72 6f 6a 65 63 74 73 5c 4e 65 77 43 6f 72 65 43 74 72 6c 30 38 5c 52 65 6c 65 61 73 65 5c 4e 65 77 43 6f 72 65 43 74 72 6c 30 38 2e 70 64 62 } //1 C:\Users\hoogle168\Desktop\2008Projects\NewCoreCtrl08\Release\NewCoreCtrl08.pdb
		$a_00_2 = {50 72 6f 63 65 73 73 54 72 61 6e 73 } //1 ProcessTrans
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}