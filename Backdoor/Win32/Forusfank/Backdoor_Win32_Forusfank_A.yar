
rule Backdoor_Win32_Forusfank_A{
	meta:
		description = "Backdoor:Win32/Forusfank.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffbc 02 58 02 09 00 00 "
		
	strings :
		$a_01_0 = {6d 69 72 61 6e 64 61 2d 69 6d 2e 6f 72 67 } //-300 miranda-im.org
		$a_01_1 = {70 69 64 67 69 6e 2d 64 65 76 65 6c 5c 70 69 64 67 69 6e 2d } //-300 pidgin-devel\pidgin-
		$a_01_2 = {6d 65 73 73 65 6e 67 65 72 40 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d } //-300 messenger@microsoft.com
		$a_01_3 = {72 75 73 69 6e 66 6f 2e 65 78 65 } //200 rusinfo.exe
		$a_01_4 = {3c 6d 6c 20 6c 3d 22 31 22 3e 3c 64 20 6e 3d 22 68 6f 74 6d 61 69 6c 2e 63 6f 6d 22 3e 3c 63 20 6e 3d 22 25 73 22 20 6c 3d 22 33 22 } //200 <ml l="1"><d n="hotmail.com"><c n="%s" l="3"
		$a_01_5 = {7b 38 37 30 43 39 46 34 32 2d 30 43 41 44 2d 34 38 41 37 2d 38 37 41 45 2d 39 34 38 44 32 36 35 43 32 38 46 31 7d } //100 {870C9F42-0CAD-48A7-87AE-948D265C28F1}
		$a_01_6 = {47 4c 4f 42 41 4c 5f 46 49 4e 41 4c 5f 44 41 54 41 5f 46 49 4e 4e 49 53 48 49 45 4c 44 5f 42 41 4c 4c } //100 GLOBAL_FINAL_DATA_FINNISHIELD_BALL
		$a_01_7 = {67 61 74 65 77 61 79 2e 64 6c 6c 3f 53 65 73 73 69 6f 6e 49 44 3d 25 73 } //50 gateway.dll?SessionID=%s
		$a_01_8 = {49 4c 54 58 43 21 34 49 58 42 35 46 42 2a 50 58 } //50 ILTXC!4IXB5FB*PX
	condition:
		((#a_01_0  & 1)*-300+(#a_01_1  & 1)*-300+(#a_01_2  & 1)*-300+(#a_01_3  & 1)*200+(#a_01_4  & 1)*200+(#a_01_5  & 1)*100+(#a_01_6  & 1)*100+(#a_01_7  & 1)*50+(#a_01_8  & 1)*50) >=600
 
}