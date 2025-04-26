
rule Trojan_Win32_Redline_CAT_MTB{
	meta:
		description = "Trojan:Win32/Redline.CAT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {74 61 6b 61 63 61 77 75 6b 69 73 75 6a 65 72 75 76 75 77 6f 68 75 70 65 6b 61 62 6f 79 61 6b } //1 takacawukisujeruvuwohupekaboyak
		$a_01_1 = {78 61 70 61 73 6f 66 65 79 69 77 69 68 75 73 65 6d } //1 xapasofeyiwihusem
		$a_01_2 = {62 6f 79 61 70 65 67 69 63 75 64 75 68 6f 6c 69 6b 65 78 69 74 75 7a 6f 70 65 79 65 74 65 76 61 20 74 65 6c 20 6e 69 67 69 6c 65 66 69 68 6f 6b 65 66 65 6a 75 66 65 76 65 73 69 77 61 66 75 64 69 6e 69 7a 69 20 62 75 63 61 68 61 78 75 6e 69 74 75 6a 61 6b 69 74 69 6e 69 74 61 6d } //1 boyapegicuduholikexituzopeyeteva tel nigilefihokefejufevesiwafudinizi bucahaxunitujakitinitam
		$a_01_3 = {64 65 7a 6f 72 6f 6b 6f 73 61 63 65 63 75 62 61 79 75 7a 65 73 75 63 61 64 61 20 63 75 62 69 73 6f 20 73 6f 6b 6f 7a 69 78 61 73 65 78 6f 6b 61 70 75 74 75 6b 69 68 65 67 6f 6d 65 6e 75 77 20 76 69 67 65 63 75 64 75 74 6f 74 69 72 65 68 61 73 61 68 61 } //1 dezorokosacecubayuzesucada cubiso sokozixasexokaputukihegomenuw vigecudutotirehasaha
		$a_01_4 = {73 75 72 65 68 6f 6c 65 67 61 6b 75 6e 69 67 65 66 61 77 20 6a 65 67 61 73 6f 79 69 78 75 7a 65 74 20 67 69 74 6f 6e 6f 70 75 76 65 6b 69 62 75 67 65 67 61 7a 20 62 75 76 69 72 75 74 6f 6d 65 6e 65 66 65 6c 65 6e 61 66 75 73 69 70 61 } //1 sureholegakunigefaw jegasoyixuzet gitonopuvekibugegaz buvirutomenefelenafusipa
		$a_01_5 = {6d 75 67 65 66 69 66 75 79 75 78 6f 76 65 78 65 63 6f 64 61 6b 75 7a 69 66 65 63 } //1 mugefifuyuxovexecodakuzifec
		$a_01_6 = {66 00 65 00 78 00 75 00 6a 00 75 00 7a 00 69 00 64 00 75 00 73 00 20 00 6e 00 69 00 70 00 69 00 76 00 69 00 66 00 69 00 68 00 61 00 6c 00 61 00 68 00 65 00 6c 00 20 00 63 00 75 00 74 00 65 00 66 00 75 00 67 00 61 00 6a 00 75 00 79 00 69 00 68 00 61 00 74 00 6f 00 70 00 6f 00 73 00 69 00 77 00 75 00 6a 00 65 00 6a 00 61 00 6a 00 69 00 6c 00 } //1 fexujuzidus nipivifihalahel cutefugajuyihatoposiwujejajil
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}