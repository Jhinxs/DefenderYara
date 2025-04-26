
rule Trojan_Win32_Farfli_BAK_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {8a 14 01 80 ea 51 80 f2 29 88 14 01 41 3b ce 7c } //2
		$a_01_1 = {8a 14 01 80 f2 29 80 c2 51 88 14 01 41 3b ce 7c } //2
		$a_01_2 = {5b 43 4c 45 41 52 5d } //1 [CLEAR]
		$a_01_3 = {5b 42 41 43 4b 53 50 41 43 45 5d } //1 [BACKSPACE]
		$a_01_4 = {5b 44 45 4c 45 54 45 5d } //1 [DELETE]
		$a_01_5 = {5b 49 4e 53 45 52 54 5d } //1 [INSERT]
		$a_01_6 = {5b 4e 75 6d 20 4c 6f 63 6b 5d } //1 [Num Lock]
		$a_01_7 = {46 55 43 4b 20 59 4f 55 } //1 FUCK YOU
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=10
 
}