
rule Trojan_Win32_Injector_STRR_MTB{
	meta:
		description = "Trojan:Win32/Injector.STRR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {74 2e 70 74 6c 6f 67 69 6e 32 2e 71 71 2e 63 6f 6d 3a 34 33 30 30 2f 70 74 5f 67 65 74 5f 75 69 6e 73 3f 63 61 6c 6c 62 61 63 6b 3d 70 74 75 69 5f 67 65 74 75 69 6e 73 5f 43 42 26 72 3d 30 2e 37 34 37 38 34 31 38 38 38 38 30 35 38 35 31 33 26 70 74 5f 6c 6f 63 61 6c 5f 74 6b 3d 30 2e 33 38 35 38 34 31 36 33 39 32 34 } //1 t.ptlogin2.qq.com:4300/pt_get_uins?callback=ptui_getuins_CB&r=0.7478418888058513&pt_local_tk=0.38584163924
		$a_81_1 = {48 74 74 70 20 44 6f 77 6e 4c 6f 61 64 } //1 Http DownLoad
		$a_81_2 = {48 4b 5f 56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 } //1 HK_VirtualProtectEx
		$a_81_3 = {48 4b 5f 57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 HK_WriteProcessMemory
		$a_81_4 = {54 72 69 6b 49 45 2f 31 2e 30 } //1 TrikIE/1.0
		$a_81_5 = {58 44 72 69 76 65 72 47 65 74 53 74 61 74 75 73 20 4f 70 65 6e 53 65 72 76 69 63 65 28 29 } //1 XDriverGetStatus OpenService()
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}