
rule TrojanSpy_Win32_Broler_C_dha{
	meta:
		description = "TrojanSpy:Win32/Broler.C!dha,SIGNATURE_TYPE_PEHSTR,01 00 01 00 09 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 55 73 65 72 73 5c 6a 61 63 6b 5c 44 65 73 6b 74 6f 70 5c 74 65 73 74 5c 65 63 5f 6e 65 77 5c 64 6f 77 6e 5f 6e 65 77 5c 52 65 6c 65 61 73 65 5c 64 6f 77 6e 5f 6e 65 77 2e 70 64 62 } //1 C:\Users\jack\Desktop\test\ec_new\down_new\Release\down_new.pdb
		$a_01_1 = {43 3a 5c 55 73 65 72 73 5c 46 72 61 6e 6b 5c 44 65 73 6b 74 6f 70 5c 41 42 4b 5c 52 65 6c 65 61 73 65 5c 41 42 4b 2e 70 64 62 } //1 C:\Users\Frank\Desktop\ABK\Release\ABK.pdb
		$a_01_2 = {43 3a 5c 55 73 65 72 73 5c 58 46 5c 44 6f 63 75 6d 65 6e 74 73 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 41 42 4b 5c 52 65 6c 65 61 73 65 5c 41 42 4b 2e 70 64 62 } //1 C:\Users\XF\Documents\Visual Studio 2010\Projects\ABK\Release\ABK.pdb
		$a_01_3 = {43 3a 5c 55 73 65 72 73 5c 6a 61 63 6b 5c 44 65 73 6b 74 6f 70 5c 52 41 54 5c 43 2b 5c 4c 69 6c 69 74 68 2d 6d 61 73 74 65 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 4c 69 6c 69 74 68 2e 70 64 62 } //1 C:\Users\jack\Desktop\RAT\C+\Lilith-master\x64\Release\Lilith.pdb
		$a_01_4 = {43 3a 5c 55 73 65 72 73 5c 46 72 61 6e 6b 5c 44 6f 63 75 6d 65 6e 74 73 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 41 76 65 6e 67 65 72 32 5c 52 65 6c 65 61 73 65 5c 41 76 65 6e 67 65 72 32 2e 70 64 62 } //1 C:\Users\Frank\Documents\Visual Studio 2010\Projects\Avenger2\Release\Avenger2.pdb
		$a_01_5 = {43 3a 5c 55 73 65 72 73 5c 6a 61 63 6b 5c 44 65 73 6b 74 6f 70 5c 74 65 73 74 5c 62 75 67 5f 6d 61 6e 67 6f 5c 64 6f 77 6e 5f 6e 65 77 5c 52 65 6c 65 61 73 65 5c 64 6f 77 6e 5f 6e 65 77 2e 70 64 62 } //1 C:\Users\jack\Desktop\test\bug_mango\down_new\Release\down_new.pdb
		$a_01_6 = {43 3a 5c 55 73 65 72 73 5c 46 72 61 6e 6b 5c 44 6f 63 75 6d 65 6e 74 73 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 45 78 70 61 6e 64 5c 52 65 6c 65 61 73 65 5c 45 78 70 61 6e 64 2e 70 64 62 } //1 C:\Users\Frank\Documents\Visual Studio 2010\Projects\Expand\Release\Expand.pdb
		$a_01_7 = {43 3a 5c 55 73 65 72 73 5c 6a 61 63 6b 5c 44 65 73 6b 74 6f 70 5c 52 41 54 5c 43 2b 5c 4c 69 6c 69 74 68 2d 6d 61 73 74 65 72 5c 52 65 6c 65 61 73 65 5c 77 69 6e 6c 69 76 65 2e 70 64 62 } //1 C:\Users\jack\Desktop\RAT\C+\Lilith-master\Release\winlive.pdb
		$a_01_8 = {43 3a 5c 55 73 65 72 73 5c 46 72 61 6e 6b 5c 44 6f 63 75 6d 65 6e 74 73 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 61 76 65 6e 67 65 72 5c 52 65 6c 65 61 73 65 5c 61 76 65 6e 67 65 72 2e 70 64 62 } //1 C:\Users\Frank\Documents\Visual Studio 2010\Projects\avenger\Release\avenger.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=1
 
}