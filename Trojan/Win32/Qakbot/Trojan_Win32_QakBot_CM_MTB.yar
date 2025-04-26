
rule Trojan_Win32_QakBot_CM_MTB{
	meta:
		description = "Trojan:Win32/QakBot.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_00_0 = {ff 75 14 ff 75 10 3a c9 74 e1 33 ed c1 e8 f6 f7 fd f7 df c1 ef 00 0b d9 81 ea 89 25 00 00 0b d1 96 c8 49 00 00 f7 d5 } //10
		$a_01_1 = {41 41 6c 42 6c 50 6c 34 6d } //2 AAlBlPl4m
		$a_01_2 = {43 6c 61 71 47 7a 55 6b 4d 4b } //2 ClaqGzUkMK
		$a_01_3 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //2 DllRegisterServer
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=16
 
}
rule Trojan_Win32_QakBot_CM_MTB_2{
	meta:
		description = "Trojan:Win32/QakBot.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {49 3f 52 53 74 72 54 69 74 6c 65 40 64 70 5f 6d 69 73 63 40 40 51 41 45 3f 42 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 58 5a } //1 I?RStrTitle@dp_misc@@QAE?BVOUString@rtl@@XZ
		$a_01_1 = {49 3f 34 41 62 6f 72 74 43 68 61 6e 6e 65 6c 40 64 70 5f 6d 69 73 63 40 40 51 41 45 41 41 56 30 31 40 41 42 56 30 31 40 40 5a } //1 I?4AbortChannel@dp_misc@@QAEAAV01@ABV01@@Z
		$a_01_2 = {49 3f 5f 37 41 62 6f 72 74 43 68 61 6e 6e 65 6c 40 64 70 5f 6d 69 73 63 40 40 36 42 58 54 79 70 65 50 72 6f 76 69 64 65 72 40 6c 61 6e 67 40 73 74 61 72 40 73 75 6e 40 63 6f 6d 40 40 40 } //1 I?_7AbortChannel@dp_misc@@6BXTypeProvider@lang@star@sun@com@@@
		$a_01_3 = {49 54 52 41 43 45 40 64 70 5f 6d 69 73 63 40 40 59 41 58 41 42 56 4f 53 74 72 69 6e 67 40 72 74 6c 40 40 40 5a } //1 ITRACE@dp_misc@@YAXABVOString@rtl@@@Z
		$a_01_4 = {49 63 68 65 63 6b 42 6c 61 63 6b 6c 69 73 74 40 44 65 73 63 72 69 70 74 69 6f 6e 49 6e 66 6f 73 65 74 40 64 70 5f 6d 69 73 63 40 40 41 42 45 58 58 5a } //1 IcheckBlacklist@DescriptionInfoset@dp_misc@@ABEXXZ
		$a_01_5 = {49 65 78 70 61 6e 64 55 6e 6f 52 63 54 65 72 6d 40 64 70 5f 6d 69 73 63 40 40 59 41 3f 41 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 41 42 56 32 33 40 40 5a } //1 IexpandUnoRcTerm@dp_misc@@YA?AVOUString@rtl@@ABV23@@Z
		$a_01_6 = {49 67 65 6e 65 72 61 74 65 52 61 6e 64 6f 6d 50 69 70 65 49 64 40 64 70 5f 6d 69 73 63 40 40 59 41 3f 41 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 58 5a } //1 IgenerateRandomPipeId@dp_misc@@YA?AVOUString@rtl@@XZ
		$a_01_7 = {49 6d 61 6b 65 52 63 54 65 72 6d 40 64 70 5f 6d 69 73 63 40 40 59 41 3f 41 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 41 42 56 32 33 40 40 5a } //1 ImakeRcTerm@dp_misc@@YA?AVOUString@rtl@@ABV23@@Z
		$a_01_8 = {49 6f 66 66 69 63 65 5f 69 73 5f 72 75 6e 6e 69 6e 67 40 64 70 5f 6d 69 73 63 40 40 59 41 5f 4e 58 5a } //1 Ioffice_is_running@dp_misc@@YA_NXZ
		$a_01_9 = {49 77 72 69 74 65 43 6f 6e 73 6f 6c 65 40 64 70 5f 6d 69 73 63 40 40 59 41 58 41 42 56 4f 53 74 72 69 6e 67 40 72 74 6c 40 40 40 5a } //1 IwriteConsole@dp_misc@@YAXABVOString@rtl@@@Z
		$a_01_10 = {49 72 65 61 64 43 6f 6e 73 6f 6c 65 40 64 70 5f 6d 69 73 63 40 40 59 41 3f 41 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 58 5a } //1 IreadConsole@dp_misc@@YA?AVOUString@rtl@@XZ
		$a_01_11 = {49 70 6c 61 74 66 6f 72 6d 5f 66 69 74 73 40 64 70 5f 6d 69 73 63 40 40 59 41 5f 4e 41 42 56 4f 55 53 74 72 69 6e 67 40 72 74 6c 40 40 40 5a } //1 Iplatform_fits@dp_misc@@YA_NABVOUString@rtl@@@Z
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}