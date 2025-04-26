
rule Trojan_Win32_Trickbot_V{
	meta:
		description = "Trojan:Win32/Trickbot.V,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {72 72 6c 6a 6a 65 69 69 64 6c 6c 67 74 74 6e 7d 7d 77 79 79 73 6f 6f 69 68 68 63 68 68 63 6e 6e 69 7b 7a 75 } //1 rrljjeiidllgttn}}wyysooihhchhcnni{zu
		$a_01_1 = {78 6b 6c 69 66 66 67 62 67 68 63 6a 6b 66 71 71 6b } //1 xkliffgbghcjkfqqk
		$a_01_2 = {7a 72 72 6c 69 69 64 65 64 5f 63 62 5d 63 62 5d 63 62 5d 63 62 5d 63 62 5d 64 63 } //1 zrrliided_cb]cb]cb]cb]cb]dc
		$a_01_3 = {25 41 79 25 41 79 25 41 79 25 41 79 25 41 79 25 42 79 2a 41 79 25 41 79 25 41 79 25 41 79 25 41 79 25 42 77 2b 50 52 4b 56 56 51 67 66 61 7a } //1 %Ay%Ay%Ay%Ay%Ay%By*Ay%Ay%Ay%Ay%Ay%Bw+PRKVVQgfaz
		$a_00_4 = {75 39 2d 63 2a 4a 6e 54 2b 69 58 42 78 73 50 00 7a 6b 6d 73 39 4f 44 64 75 21 76 76 4d 35 54 51 34 44 78 45 00 46 67 78 71 77 61 4b 4c 6f 2e 7a 6f 70 } //4 㥵挭䨪呮椫䉘獸P歺獭伹摄ⅵ癶㕍兔䐴䕸䘀硧睱䭡潌種灯
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*4) >=4
 
}