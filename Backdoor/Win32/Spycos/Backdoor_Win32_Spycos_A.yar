
rule Backdoor_Win32_Spycos_A{
	meta:
		description = "Backdoor:Win32/Spycos.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_01_0 = {41 55 53 55 41 48 37 38 33 37 32 36 39 33 37 32 36 53 46 48 41 4e 49 58 } //1 AUSUAH78372693726SFHANIX
		$a_01_1 = {48 75 41 75 48 6a 6f 52 40 74 30 52 30 33 75 40 52 30 75 50 61 44 30 52 65 69 44 65 52 30 } //1 HuAuHjoR@t0R03u@R0uPaD0ReiDeR0
		$a_01_2 = {54 55 59 41 c7 53 4c 44 4b 46 4a 46 4a 47 48 5a 4d 58 4e 43 4e 56 42 61 75 68 73 79 65 74 } //1
		$a_01_3 = {4f 56 41 53 43 4f 42 45 4c 56 45 49 4d 4f 56 45 49 53 42 45 4c 56 45 49 4d 4f 56 45 49 53 } //1 OVASCOBELVEIMOVEISBELVEIMOVEIS
		$a_02_4 = {8d 95 38 ff ff ff b8 7b 00 00 00 e8 ?? ?? ?? ff } //1
		$a_01_5 = {72 69 6b 75 75 6f 6f 38 6a 75 61 37 79 7a 54 4a 73 6a 68 4b 69 41 3d 3d } //1 rikuuoo8jua7yzTJsjhKiA==
		$a_01_6 = {55 4b 44 42 65 31 5a 50 35 73 46 71 74 30 6f 6b 43 6a 57 67 55 62 33 72 46 36 58 57 52 35 45 76 39 70 4f 4d 76 51 63 51 31 35 77 3d } //1 UKDBe1ZP5sFqt0okCjWgUb3rF6XWR5Ev9pOMvQcQ15w=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=2
 
}