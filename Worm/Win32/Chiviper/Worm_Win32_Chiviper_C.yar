
rule Worm_Win32_Chiviper_C{
	meta:
		description = "Worm:Win32/Chiviper.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 "
		
	strings :
		$a_01_0 = {8b 74 24 14 8a 0e 28 08 8a 08 8a 16 32 d1 46 88 10 40 4f 75 e6 } //2
		$a_03_1 = {8d 45 ec 50 ff 15 ?? ?? ?? ?? 83 f8 03 74 05 83 f8 02 75 0a 8d 45 ec 50 e8 ?? ?? 00 00 59 fe c3 80 fb 5a 7c c4 } //2
		$a_01_2 = {8a 08 2a ca 32 ca 88 08 40 4e 75 f4 } //2
		$a_01_3 = {24 41 55 54 4f 52 55 49 4e 46 } //1 $AUTORUINF
		$a_01_4 = {6d 61 63 3d 25 73 26 76 65 72 3d } //1 mac=%s&ver=
		$a_03_5 = {25 73 5c 61 64 6d 69 6e 24 5c [0-08] 2e 65 78 65 } //1
		$a_01_6 = {72 73 3d 63 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 rs=createObject("Wscript.shell")
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1) >=3
 
}