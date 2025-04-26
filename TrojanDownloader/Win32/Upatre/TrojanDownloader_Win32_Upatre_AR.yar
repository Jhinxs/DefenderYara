
rule TrojanDownloader_Win32_Upatre_AR{
	meta:
		description = "TrojanDownloader:Win32/Upatre.AR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {25 73 25 73 00 25 73 5c 25 73 00 6f 70 65 6e 00 74 65 78 74 2f 2a 00 61 70 70 6c 69 63 61 74 69 6f 6e 2f 2a 00 47 45 54 00 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 } //1 猥猥─屳猥漀数n整瑸⨯愀灰楬慣楴湯⨯䜀呅䴀穯汩慬㐯〮
		$a_01_1 = {6a 25 58 66 ab b0 75 66 ab b0 00 66 ab } //1
		$a_01_2 = {33 c0 66 ad 03 c3 ab e2 f7 91 6a 04 68 00 10 00 00 68 60 ee a6 00 50 ff } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}