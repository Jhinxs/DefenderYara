
rule Trojan_Win32_Agent_EAE{
	meta:
		description = "Trojan:Win32/Agent.EAE,SIGNATURE_TYPE_PEHSTR,07 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 79 6f 75 33 36 2e 63 6f 6d 2f } //1 ://you36.com/
		$a_01_1 = {43 3a 5c 6e 65 74 77 6a 2e 72 61 72 } //1 C:\netwj.rar
		$a_01_2 = {65 6d 33 32 5c 78 7a 6e 65 74 2e 62 61 74 } //1 em32\xznet.bat
		$a_01_3 = {2f 4e 45 54 47 4f 44 5f 47 58 2e 45 58 45 } //1 /NETGOD_GX.EXE
		$a_01_4 = {57 49 4e 5f 63 6b 65 2e 74 78 74 } //1 WIN_cke.txt
		$a_01_5 = {66 75 5f 33 36 63 } //1 fu_36c
		$a_01_6 = {6d 79 33 36 20 77 68 65 72 65 20 6a 62 3d } //1 my36 where jb=
		$a_01_7 = {5c 77 69 6e 33 32 2e 62 74 6c } //1 \win32.btl
		$a_01_8 = {64 6c 63 2e 65 78 65 } //1 dlc.exe
		$a_01_9 = {5c 53 74 61 72 74 75 70 5c } //1 \Startup\
		$a_01_10 = {6e 65 74 67 6f 64 72 75 6e 2e 65 78 65 } //1 netgodrun.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=7
 
}