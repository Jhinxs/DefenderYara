
rule TrojanClicker_Win32_Spackit_A{
	meta:
		description = "TrojanClicker:Win32/Spackit.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {3c 63 6c 69 63 6b 75 72 6c 3e } //1 <clickurl>
		$a_01_1 = {3c 63 70 63 3e } //1 <cpc>
		$a_01_2 = {6e 65 74 62 69 64 3d } //1 netbid=
		$a_01_3 = {26 73 69 64 3d 7b 61 69 64 7d 26 62 75 69 6c 64 64 61 74 65 3d 7b 62 75 69 6c 64 64 61 74 65 7d 26 71 3d 7b 6b 65 79 77 6f 72 64 7d } //1 &sid={aid}&builddate={builddate}&q={keyword}
		$a_01_4 = {2d 00 6b 00 68 00 62 00 37 00 34 00 37 00 62 00 6a 00 67 00 33 00 32 00 34 00 79 00 75 00 } //1 -khb747bjg324yu
		$a_01_5 = {68 00 69 00 64 00 64 00 65 00 6e 00 } //1 hidden
		$a_01_6 = {53 00 68 00 65 00 6c 00 6c 00 20 00 44 00 6f 00 63 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 56 00 69 00 65 00 77 00 } //1 Shell DocObject View
		$a_01_7 = {69 65 68 61 72 64 65 6e 69 65 6e 6f 77 61 72 6e } //1 iehardenienowarn
		$a_01_8 = {77 61 72 6e 6f 6e 70 6f 73 74 72 65 64 69 72 65 63 74 } //1 warnonpostredirect
		$a_03_9 = {2e 63 6f 6d 2c [0-10] 2e 63 6f 6d 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_03_9  & 1)*1) >=10
 
}
rule TrojanClicker_Win32_Spackit_A_2{
	meta:
		description = "TrojanClicker:Win32/Spackit.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 "
		
	strings :
		$a_01_0 = {3c 63 6c 69 63 6b 75 72 6c 3e 3c 21 5b 63 64 61 74 61 5b } //1 <clickurl><![cdata[
		$a_01_1 = {3c 75 72 69 3e 3c 21 5b 63 64 61 74 61 5b } //1 <uri><![cdata[
		$a_01_2 = {62 69 64 3d 22 00 00 00 6e 65 74 62 69 64 3d 22 } //1
		$a_01_3 = {6c 6f 77 65 72 2b 62 61 63 6b 2b 70 61 69 6e } //1 lower+back+pain
		$a_01_4 = {63 6f 6d 70 61 72 65 2b 63 61 72 2b 69 6e 73 75 72 61 6e 63 65 2b 72 61 74 65 73 } //1 compare+car+insurance+rates
		$a_01_5 = {5c 00 42 00 72 00 6f 00 61 00 64 00 63 00 6f 00 6d 00 20 00 43 00 72 00 79 00 73 00 74 00 61 00 6c 00 48 00 44 00 20 00 44 00 65 00 63 00 6f 00 64 00 65 00 72 00 5c 00 62 00 63 00 6d 00 44 00 49 00 4c 00 2e 00 64 00 6c 00 6c 00 } //1 \Broadcom CrystalHD Decoder\bcmDIL.dll
		$a_01_6 = {5c 7a 6f 6e 65 6d 61 70 00 69 65 68 61 72 64 65 6e 69 65 6e 6f 77 61 72 6e } //1
		$a_01_7 = {7b 73 65 72 76 65 72 7d 2f 66 65 65 64 3f 76 65 72 73 69 6f 6e 3d 7b 76 65 72 73 69 6f 6e 7d 26 73 69 64 3d 7b 61 69 64 7d 26 71 3d 7b 6b 65 79 77 6f 72 64 7d 26 72 65 66 3d 7b 72 65 66 7d 26 75 61 3d 7b 75 61 7d 26 6c 61 6e 67 3d 7b 6c 61 6e 67 7d } //1 {server}/feed?version={version}&sid={aid}&q={keyword}&ref={ref}&ua={ua}&lang={lang}
		$a_01_8 = {7b 73 65 72 76 65 72 7d 2f 71 75 65 72 79 3f 76 65 72 73 69 6f 6e 3d 31 2e 36 26 73 69 64 3d 7b 61 69 64 7d 26 62 75 69 6c 64 64 61 74 65 3d 7b 62 75 69 6c 64 64 61 74 65 7d 26 71 3d 7b 6b 65 79 77 6f 72 64 7d 26 75 61 3d 7b 75 61 7d 26 6c 61 6e 67 3d 7b 6c 61 6e 67 7d 26 77 74 3d 7b 74 68 72 65 61 64 73 7d 26 6c 72 3d 7b 6c 61 73 74 72 65 73 75 6c 74 7d 26 6c 73 3d 7b 6c 61 73 74 73 74 61 67 65 7d } //1 {server}/query?version=1.6&sid={aid}&builddate={builddate}&q={keyword}&ua={ua}&lang={lang}&wt={threads}&lr={lastresult}&ls={laststage}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}