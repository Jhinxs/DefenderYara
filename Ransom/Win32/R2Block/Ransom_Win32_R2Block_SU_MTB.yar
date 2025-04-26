
rule Ransom_Win32_R2Block_SU_MTB{
	meta:
		description = "Ransom:Win32/R2Block.SU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {5c 6f 62 6a 5c 44 65 62 75 67 5c 42 4d 49 20 44 61 74 61 53 65 6e 64 65 72 2e 70 64 62 } //1 \obj\Debug\BMI DataSender.pdb
		$a_81_1 = {5c 72 32 62 6c 6f 63 6b 5f 57 61 6c 6c 70 61 70 65 72 2e 6a 70 67 } //1 \r2block_Wallpaper.jpg
		$a_81_2 = {65 6e 76 68 6f 73 74 2e 65 78 65 } //1 envhost.exe
		$a_81_3 = {3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 } //1 :\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
		$a_81_4 = {5c 42 4d 49 20 44 61 74 61 53 65 6e 64 65 72 2e 65 78 65 } //1 \BMI DataSender.exe
		$a_81_5 = {3a 5c 55 73 65 72 73 5c 52 65 7a 61 5c 44 65 73 6b 74 6f 70 5c 30 30 31 } //1 :\Users\Reza\Desktop\001
		$a_81_6 = {21 52 65 23 7a 61 24 32 25 42 61 5e 68 61 2a 72 } //1 !Re#za$2%Ba^ha*r
		$a_81_7 = {67 65 74 5f 72 32 62 6c 6f 63 6b 5f 57 61 6c 6c 70 61 70 65 72 } //1 get_r2block_Wallpaper
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}