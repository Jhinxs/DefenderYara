
rule Trojan_Win32_Qakbot_PAE_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.PAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {33 d2 8b c3 f7 75 f4 8b 45 08 8a 04 02 32 04 3b 88 04 19 43 83 ee 01 } //5
		$a_01_1 = {8b 55 fc 32 04 13 0f b6 c0 66 89 04 4e 41 43 3b cf } //5
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5) >=10
 
}
rule Trojan_Win32_Qakbot_PAE_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.PAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 "
		
	strings :
		$a_01_0 = {52 3f 30 4b 65 72 6e 54 61 62 6c 65 40 69 63 75 5f 34 5f 30 40 40 51 41 45 40 50 42 56 4c 45 46 6f 6e 74 49 6e 73 74 61 6e 63 65 40 31 40 50 42 58 40 5a } //1 R?0KernTable@icu_4_0@@QAE@PBVLEFontInstance@1@PBX@Z
		$a_01_1 = {52 3f 30 4c 61 79 6f 75 74 45 6e 67 69 6e 65 40 69 63 75 5f 34 5f 30 40 40 51 41 45 40 41 42 56 30 31 40 40 5a } //1 R?0LayoutEngine@icu_4_0@@QAE@ABV01@@Z
		$a_01_2 = {52 3f 34 43 61 6e 6f 6e 53 68 61 70 69 6e 67 40 69 63 75 5f 34 5f 30 40 40 51 41 45 41 41 56 30 31 40 41 42 56 30 31 40 40 5a } //1 R?4CanonShaping@icu_4_0@@QAEAAV01@ABV01@@Z
		$a_01_3 = {52 78 55 6e 69 74 73 54 6f 50 6f 69 6e 74 73 40 4c 45 46 6f 6e 74 49 6e 73 74 61 6e 63 65 40 69 63 75 5f 34 5f 30 40 40 55 42 45 4d 4d 40 5a } //1 RxUnitsToPoints@LEFontInstance@icu_4_0@@UBEMM@Z
		$a_01_4 = {52 61 6c 6c 6f 63 61 74 65 50 6f 73 69 74 69 6f 6e 73 40 4c 45 47 6c 79 70 68 53 74 6f 72 61 67 65 40 69 63 75 5f 34 5f 30 40 40 51 41 45 48 41 41 57 34 4c 45 45 72 72 6f 72 43 6f 64 65 40 40 40 5a } //1 RallocatePositions@LEGlyphStorage@icu_4_0@@QAEHAAW4LEErrorCode@@@Z
		$a_01_5 = {52 65 5f 67 65 74 43 68 61 72 49 6e 64 69 63 65 73 57 69 74 68 42 61 73 65 5f 34 5f 30 } //1 Re_getCharIndicesWithBase_4_0
		$a_01_6 = {54 69 6d 65 } //10 Time
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*10) >=16
 
}