
rule TrojanSpy_Win32_Banker_GY{
	meta:
		description = "TrojanSpy:Win32/Banker.GY,SIGNATURE_TYPE_PEHSTR_EXT,31 01 30 01 0b 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //100 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {43 41 49 58 41 } //100 CAIXA
		$a_00_2 = {49 6e 66 65 6b 74 69 6f 6e 20 47 72 6f 75 70 } //1 Infektion Group
		$a_00_3 = {7c 56 69 74 69 6d 61 3a 20 } //1 |Vitima: 
		$a_00_4 = {7c 43 6f 6e 66 69 67 3a 20 } //1 |Config: 
		$a_00_5 = {74 69 70 6f 5f 31 4b 65 79 50 72 65 73 73 } //1 tipo_1KeyPress
		$a_00_6 = {74 65 63 6c 61 64 6f } //1 teclado
		$a_00_7 = {5b 62 62 2e 63 6f 6d 2e 62 72 5d } //1 [bb.com.br]
		$a_00_8 = {4d 6f 7a 69 6c 6c 61 20 46 69 72 65 66 6f 78 } //1 Mozilla Firefox
		$a_00_9 = {4d 69 63 72 6f 73 6f 66 74 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //1 Microsoft Internet Explorer
		$a_02_10 = {8b 00 ba 88 ff ff ff e8 ?? ?? ?? ff a1 ?? ?? ?? 00 8b 00 ba 98 03 00 00 e8 ?? ?? ?? ff a1 ?? ?? ?? 00 8b 00 ba be 01 00 00 e8 ?? ?? ?? ff a1 ?? ?? ?? 00 8b 00 b2 01 e8 ?? ?? ?? ff } //100
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_02_10  & 1)*100) >=304
 
}