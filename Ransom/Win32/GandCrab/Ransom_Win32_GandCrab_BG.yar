
rule Ransom_Win32_GandCrab_BG{
	meta:
		description = "Ransom:Win32/GandCrab.BG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {7a 00 69 00 76 00 65 00 68 00 75 00 64 00 75 00 6e 00 69 00 6e 00 65 00 78 00 61 00 20 00 77 00 75 00 76 00 6f 00 66 00 61 00 70 00 65 00 78 00 61 00 20 00 77 00 69 00 78 00 75 00 73 00 75 00 6b 00 61 00 7a 00 65 00 72 00 65 00 72 00 61 00 63 00 6f 00 73 00 75 00 67 00 6f 00 } //1 zivehuduninexa wuvofapexa wixusukazereracosugo
		$a_01_1 = {53 00 6f 00 7a 00 61 00 20 00 7a 00 65 00 6c 00 6f 00 37 00 50 00 75 00 67 00 75 00 20 00 79 00 65 00 77 00 6f 00 74 00 75 00 6e 00 65 00 64 00 6f 00 62 00 65 00 64 00 75 00 20 00 68 00 69 00 78 00 6f 00 74 00 69 00 77 00 69 00 20 00 72 00 6f 00 7a 00 61 00 63 00 6f 00 79 00 65 00 20 00 6d 00 69 00 62 00 61 00 20 00 74 00 69 00 79 00 75 00 70 00 69 00 68 00 61 00 6c 00 6f 00 78 00 75 00 } //1 Soza zelo7Pugu yewotunedobedu hixotiwi rozacoye miba tiyupihaloxu
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}