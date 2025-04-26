
rule TrojanProxy_Win32_Banker_AJ{
	meta:
		description = "TrojanProxy:Win32/Banker.AJ,SIGNATURE_TYPE_PEHSTR_EXT,22 01 0e 01 08 00 00 "
		
	strings :
		$a_01_0 = {57 5d 43 41 5a 4b 53 19 46 47 56 40 4e 18 } //100 嵗䅃䭚ᥓ䝆䁖ᡎ
		$a_01_1 = {6e 6f 76 6f 2e 62 61 69 78 65 76 69 64 65 6f 73 2d 73 65 67 75 72 6f 2e 63 6f 6d 2f 63 6f 6e 74 61 63 74 } //100 novo.baixevideos-seguro.com/contact
		$a_01_2 = {72 2f 74 6f 74 61 6c 5f 76 69 73 69 74 61 73 2e 70 68 70 } //50 r/total_visitas.php
		$a_01_3 = {6a 57 51 42 42 58 4a 52 6a 78 50 5b 45 59 46 56 5e 43 6a 62 50 56 } //20 jWQBBXJRjxP[EYFV^CjbPV
		$a_01_4 = {78 4d 43 59 76 56 56 51 5f 52 6c 6a 7b 00 } //20 䵸奃噶兖剟橬{
		$a_01_5 = {4b 4c 52 44 6a 49 4a 52 50 1d 1b 56 52 42 42 56 4a 5c 45 18 4b } //20
		$a_01_6 = {41 40 56 52 42 1c 59 47 } //20 䁁剖᱂䝙
		$a_01_7 = {63 6f 6e 74 61 64 6f 72 2f 6c 6f 67 2e 70 68 70 } //40 contador/log.php
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*50+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20+(#a_01_5  & 1)*20+(#a_01_6  & 1)*20+(#a_01_7  & 1)*40) >=270
 
}