
rule TrojanSpy_Win32_Derusbi_D_dha{
	meta:
		description = "TrojanSpy:Win32/Derusbi.D!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 43 43 5f 43 4d 44 } //1 PCC_CMD
		$a_01_1 = {50 43 43 5f 50 52 4f 58 59 } //1 PCC_PROXY
		$a_01_2 = {50 43 43 5f 42 41 53 45 } //1 PCC_BASE
		$a_01_3 = {5a 00 68 00 75 00 44 00 6f 00 6e 00 67 00 46 00 61 00 6e 00 67 00 59 00 75 00 2e 00 65 00 78 00 65 00 } //1 ZhuDongFangYu.exe
		$a_01_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 22 00 2c 00 20 00 52 00 33 00 32 00 20 00 25 00 73 00 } //1 rundll32.exe "%s", R32 %s
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}