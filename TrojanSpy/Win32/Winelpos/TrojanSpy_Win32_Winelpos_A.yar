
rule TrojanSpy_Win32_Winelpos_A{
	meta:
		description = "TrojanSpy:Win32/Winelpos.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {be 24 77 44 00 e9 56 85 fc ff 8b 54 24 08 8d 42 0c 8b 4a f8 33 c8 e8 b0 78 fe ff b8 9c 32 44 00 e9 08 b7 fe ff cc cc cc cc cc cc cc cc cc cc cc b8 54 77 44 00 e9 86 2d fd ff 8b 54 24 08 8d 42 0c 8b 4a f4 33 c8 e8 80 78 fe ff b8 c8 32 44 00 e9 d8 b6 fe ff cc cc cc cc cc cc cc cc cc cc cc b8 64 77 44 00 e9 56 2d fd ff } //1
		$a_01_1 = {72 31 5c 52 65 6c 65 61 73 65 5c 72 31 2e 70 64 62 00 } //1 ㅲ剜汥慥敳牜⸱摰b
		$a_01_2 = {45 52 52 4c 4f 47 3a 00 } //1 剅䱒䝏:
		$a_01_3 = {65 72 72 6f 72 3a 20 6e 6f 74 20 61 64 6d 69 6e 20 75 73 65 72 00 } //1 牥潲㩲渠瑯愠浤湩甠敳r
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4d 00 65 00 64 00 69 00 61 00 20 00 48 00 65 00 6c 00 70 00 00 00 } //1
		$a_01_5 = {3a 00 77 00 6e 00 68 00 65 00 6c 00 70 00 2e 00 65 00 78 00 65 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}