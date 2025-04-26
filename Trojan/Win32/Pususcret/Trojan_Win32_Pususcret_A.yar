
rule Trojan_Win32_Pususcret_A{
	meta:
		description = "Trojan:Win32/Pususcret.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 4c 51 5d 5d 5d 5d 5d 5d 6b 71 7b 23 2a 36 41 4f 57 62 65 72 77 24 2d 39 39 3a 49 50 5a 5e 66 } //2 CLQ]]]]]]kq{#*6AOWberw$-99:IPZ^f
		$a_01_1 = {47 53 57 64 64 64 64 64 70 21 27 34 3c 4a 58 67 72 7c 27 2c 35 3d 45 4d 4e 5b 60 69 6a 6d 6f 7a } //2 GSWdddddp!'4<JXgr|',5=EMN[`ijmoz
		$a_01_2 = {4c 5b 5d 6b 6b 6b 6b 6b 6e 7c 2b 35 3d 42 4a 4f 51 5c 5c 5c 66 66 66 6b 6d 75 23 31 31 32 35 35 } //1 L[]kkkkkn|+5=BJOQ\\\fffkmu#11255
		$a_01_3 = {44 50 51 59 59 59 59 59 68 6a 79 7c 2a 31 3a 48 4b 5a 64 68 74 78 22 27 36 3c 47 50 5d 5e 60 67 } //1 DPQYYYYYhjy|*1:HKZdhtx"'6<GP]^`g
		$a_01_4 = {4d 51 57 61 61 61 61 61 65 6f 7a 28 35 44 45 4a 59 67 6c 6f 7a 26 28 35 3d 48 4c 4c 58 5e 6d 6f } //1 MQWaaaaaeoz(5DEJYgloz&(5=HLLX^mo
		$a_01_5 = {4b 4e 4f 55 55 55 55 55 55 57 64 6b 72 75 7d 29 37 3a 43 52 54 5d 6c 6c 73 23 31 3d 42 4f 50 51 } //1 KNOUUUUUUWdkru})7:CRT]lls#1=BOPQ
		$a_01_6 = {46 47 4b 56 56 56 56 56 5d 6a 71 74 76 7a 24 28 32 3e 47 4c 57 64 68 69 6b 77 77 25 2b 3a 46 4c } //1 FGKVVVVV]jqtvz$(2>GLWdhikww%+:FL
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}