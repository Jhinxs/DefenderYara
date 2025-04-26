
rule Trojan_Win32_Huntsou{
	meta:
		description = "Trojan:Win32/Huntsou,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 74 5c 53 65 74 74 69 6e 67 73 5c 7b 30 30 43 31 30 34 46 37 2d 30 46 35 43 2d 34 37 30 43 2d 41 42 43 46 2d 41 35 42 32 45 37 30 37 35 32 46 31 7d } //3 Software\microsoft\Windows\CurrentVersion\Ext\Settings\{00C104F7-0F5C-470C-ABCF-A5B2E70752F1}
		$a_02_1 = {77 72 69 73 69 6e 67 00 [0-0a] 2e 64 6c 6c 00 00 72 65 67 73 76 72 33 32 20 2f 73 20 25 73 00 } //3
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 35 2e 62 61 69 64 75 2e 63 6f 6d 2f 62 61 69 64 75 3f } //2 http://www5.baidu.com/baidu?
		$a_01_3 = {63 6f 6f 6b 35 2a 2a 72 72 72 29 5d 5c 64 5f 70 29 5e 6a 68 2a 6e 3a } //3 cook5**rrr)]\d_p)^jh*n:
	condition:
		((#a_01_0  & 1)*3+(#a_02_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*3) >=6
 
}
rule Trojan_Win32_Huntsou_2{
	meta:
		description = "Trojan:Win32/Huntsou,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {73 65 65 6b 2e 33 37 32 31 2e 63 6f 6d } //2 seek.3721.com
		$a_01_1 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 30 30 43 31 30 34 46 37 2d 30 46 35 43 2d 34 37 30 43 2d 41 42 43 46 2d 41 35 42 32 45 37 30 37 35 32 46 31 7d 20 3d 20 73 20 27 4c 70 6b 48 6c 70 72 20 43 6c 61 73 73 27 } //2 ForceRemove {00C104F7-0F5C-470C-ABCF-A5B2E70752F1} = s 'LpkHlpr Class'
		$a_01_2 = {27 54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 44 42 37 46 34 42 43 41 2d 45 30 39 34 2d 34 34 43 39 2d 42 31 46 38 2d 42 35 41 43 30 42 43 31 41 39 37 32 7d 27 } //2 'TypeLib' = s '{DB7F4BCA-E094-44C9-B1F8-B5AC0BC1A972}'
		$a_01_3 = {49 42 61 69 64 75 48 6c 70 72 20 49 6e 74 65 72 66 61 63 65 57 57 } //2 IBaiduHlpr InterfaceWW
		$a_01_4 = {4d 00 53 00 20 00 6c 00 70 00 6b 00 20 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 } //2 MS lpk Module
		$a_01_5 = {63 6f 6f 6b 35 2a 2a 72 72 72 29 5d 5c 64 5f 70 29 5e 6a 68 2a 6e 3a } //3 cook5**rrr)]\d_p)^jh*n:
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*3) >=10
 
}
rule Trojan_Win32_Huntsou_3{
	meta:
		description = "Trojan:Win32/Huntsou,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2e 00 0c 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6f 6d 2f 73 3f } //1 http://www.baidu.com/s?
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6f 6d 2f 62 61 69 64 75 3f } //1 http://www.baidu.com/baidu?
		$a_01_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6e 2f 73 3f } //1 http://www.baidu.cn/s?
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6e 2f 62 61 69 64 75 3f } //1 http://www.baidu.cn/baidu?
		$a_01_4 = {68 74 74 70 3a 2f 2f 77 77 77 35 2e 62 61 69 64 75 2e 63 6f 6d 2f 73 3f } //1 http://www5.baidu.com/s?
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 35 2e 62 61 69 64 75 2e 63 6f 6d 2f 62 61 69 64 75 3f } //2 http://www5.baidu.com/baidu?
		$a_01_6 = {63 6e 73 2e 33 37 32 31 2e 63 6f 6d } //2 cns.3721.com
		$a_01_7 = {73 65 65 6b 2e 33 37 32 31 2e 63 6f 6d } //2 seek.3721.com
		$a_01_8 = {75 72 6c 5f 6e 65 77 32 20 25 73 } //10 url_new2 %s
		$a_01_9 = {63 6f 6f 6b 35 2a 2a 72 72 72 29 5d 5c 64 5f 70 29 5e 69 2a } //10 cook5**rrr)]\d_p)^i*
		$a_01_10 = {63 6f 6f 6b 35 2a 2a 5d 5c 64 5f 70 29 5e } //10 cook5**]\d_p)^
		$a_01_11 = {63 6f 6f 6b 35 2a 2a 72 72 72 29 5d 5c 64 5f 70 29 5e 6a 68 2a 6e 3a } //20 cook5**rrr)]\d_p)^jh*n:
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10+(#a_01_11  & 1)*20) >=46
 
}