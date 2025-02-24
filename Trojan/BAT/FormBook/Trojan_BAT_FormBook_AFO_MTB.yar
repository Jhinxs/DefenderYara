
rule Trojan_BAT_FormBook_AFO_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {16 0a 2b 1b 02 06 02 06 91 7e 06 00 00 04 06 7e 06 00 00 04 8e 69 5d 91 61 d2 9c 06 17 58 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {0d 16 13 0a 2b 11 00 09 11 0a 08 11 0a 94 d2 9c 00 11 0a 17 58 13 0a 11 0a 08 8e 69 fe 04 13 0b 11 0b 2d e2 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_FormBook_AFO_MTB_3{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0c 16 0d 2b 1a 07 09 06 09 91 08 09 08 6f ?? 01 00 0a 5d 6f ?? 01 00 0a 61 d2 9c 09 17 58 0d 09 06 8e 69 32 e0 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_4{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b 2a 2b 2f 16 2d f2 2b 31 72 ?? ?? ?? 70 2b 2d 16 2c 31 26 26 2b 34 2b 35 06 16 06 8e 69 6f ?? 00 00 0a 0c 1c 2c d2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_5{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {17 59 9a 0c 08 28 ?? 00 00 0a 16 fe 01 13 06 11 06 2d 03 00 2b 2f 00 06 09 6f ?? 00 00 0a 08 6f ?? 00 00 0a 00 08 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_6{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {0c 16 0d 2b 22 07 09 18 6f 1e 00 00 0a 1f 10 28 b3 00 00 0a 13 04 11 04 16 32 08 08 11 04 6f 3c 00 00 0a 09 18 58 0d 09 07 6f 21 00 00 0a 32 d5 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_7{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 16 91 13 05 08 17 8d ?? ?? ?? 01 25 16 11 05 9c 6f ?? ?? ?? 0a 09 18 58 0d 09 07 6f ?? ?? ?? 0a fe 04 13 06 11 06 2d c4 } //2
		$a_01_1 = {51 00 75 00 61 00 6e 00 4c 00 79 00 42 00 61 00 6e 00 48 00 61 00 6e 00 67 00 } //1 QuanLyBanHang
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_8{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {09 11 04 09 8e 69 5d 09 8e 69 58 09 8e 69 5d 91 13 05 11 04 17 58 08 5d 08 58 08 5d 13 06 07 11 06 08 5d 08 58 08 5d 91 13 07 07 11 04 08 5d 08 58 08 5d 91 11 05 61 11 07 59 20 00 02 00 00 58 20 00 01 00 00 5d 20 00 04 00 00 58 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_9{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 0d 2b 31 00 07 08 09 28 ?? ?? ?? 06 28 ?? ?? ?? 06 00 28 ?? ?? ?? 06 28 ?? ?? ?? 06 } //2
		$a_01_1 = {4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 41 00 72 00 69 00 74 00 68 00 6d 00 65 00 74 00 69 00 63 00 47 00 61 00 6d 00 65 00 } //1 NetworkArithmeticGame
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_10{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {17 58 08 5d 13 0d 02 07 11 0a 91 11 0c 61 07 11 0d 91 59 28 ?? ?? ?? 06 13 0e 07 11 0a 11 0e 28 ?? ?? ?? 0a d2 9c 00 11 0a 17 58 } //2
		$a_01_1 = {64 00 65 00 74 00 65 00 63 00 74 00 56 00 69 00 64 00 65 00 6f 00 41 00 70 00 70 00 } //1 detectVideoApp
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_11{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {07 8e 69 5d 91 13 07 08 11 05 1f 16 5d 91 13 08 07 11 05 07 11 05 91 11 08 61 11 07 59 20 00 01 00 00 58 20 ff 00 00 00 5f d2 9c 00 11 05 17 58 } //2
		$a_01_1 = {44 00 69 00 73 00 74 00 72 00 69 00 62 00 75 00 69 00 64 00 6f 00 72 00 61 00 } //1 Distribuidora
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_12{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 0e 02 03 06 04 05 28 ?? 00 00 06 06 17 58 0a 06 02 6f ?? 00 00 0a 2f 0b 04 6f ?? 00 00 0a 05 fe 04 2b 01 16 0b 07 2d d9 } //2
		$a_03_1 = {02 03 04 6f ?? 00 00 0a 0a 0e 04 05 6f ?? 00 00 0a 59 0b 06 07 05 28 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_13{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 0d 2b 3f 00 09 02 7b ?? 00 00 04 8e 69 17 59 fe 02 13 04 11 04 2c 04 16 0c 2b 3a 02 7b ?? 00 00 04 09 91 20 80 00 00 00 5f 20 80 00 00 00 fe 01 16 fe 01 13 05 11 05 2c 04 09 0c 2b 18 00 09 17 58 0d 09 06 fe 02 16 fe 01 13 06 11 06 2d b4 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_FormBook_AFO_MTB_14{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {16 0a 2b 19 00 02 06 94 07 fe 02 0c 08 2c 09 00 02 06 94 0b 03 06 54 00 00 06 17 58 0a 06 02 8e 69 fe 04 0d 09 2d } //2
		$a_01_1 = {50 00 61 00 6c 00 65 00 6f 00 6c 00 69 00 74 00 68 00 69 00 63 00 20 00 43 00 6f 00 6f 00 70 00 65 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Paleolithic Cooperation
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_15{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 13 04 16 13 05 2b 19 11 04 11 05 a3 ?? 00 00 01 13 06 09 11 06 6f ?? 00 00 0a 11 05 17 58 13 05 11 05 11 04 8e 69 32 df } //1
		$a_03_1 = {0a 16 0b 38 ?? 00 00 00 06 07 17 5b 7e ?? 00 00 0a a4 ?? 00 00 01 07 17 58 0b 07 02 8e 69 32 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_BAT_FormBook_AFO_MTB_16{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 2b 14 07 08 02 7b ?? ?? ?? 04 08 91 28 ?? ?? ?? 0a 9d 08 17 58 0c 08 06 fe 04 0d 09 2d e4 } //1
		$a_03_1 = {26 2b 1c 00 02 7b ?? 00 00 04 07 6f ?? 00 00 0a 6f ?? 00 00 06 26 1f 64 28 ?? 00 00 0a 00 00 07 6f ?? 00 00 0a 16 fe 01 0c 08 2d d7 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_BAT_FormBook_AFO_MTB_17{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 04 2b 4e 00 08 11 04 08 8e 69 5d 02 08 11 04 08 8e 69 5d 91 09 11 04 09 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 61 28 ?? 00 00 0a 08 11 04 17 58 08 8e 69 5d 91 } //2
		$a_01_1 = {53 00 77 00 69 00 74 00 63 00 68 00 62 00 6f 00 61 00 72 00 64 00 53 00 65 00 72 00 76 00 65 00 72 00 } //1 SwitchboardServer
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_18{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b 07 19 32 50 12 00 28 ?? 00 00 0a 1f 10 62 12 00 28 ?? 00 00 0a 1e 62 60 12 00 28 ?? 00 00 0a 60 0c 03 19 8d ?? 00 00 01 25 16 08 1f 10 63 20 ff 00 00 00 5f d2 9c 25 17 08 1e } //1
		$a_03_1 = {16 0a 2b 28 16 0b 2b 0e 02 03 06 07 04 28 ?? 00 00 06 07 17 58 0b 07 02 28 ?? 00 00 06 2f 09 03 6f ?? 00 00 0a 04 32 e0 06 17 58 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2) >=3
 
}
rule Trojan_BAT_FormBook_AFO_MTB_19{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4c 41 59 5f 44 4f 4e 5f 47 49 41 5f 54 48 45 4f 5f 4d 41 5f 48 48 } //1 LAY_DON_GIA_THEO_MA_HH
		$a_01_1 = {4c 41 59 5f 53 4f 5f 4c 55 4f 4e 47 5f 54 4f 4e 5f 54 48 45 4f 5f 4d 41 5f 48 48 } //1 LAY_SO_LUONG_TON_THEO_MA_HH
		$a_01_2 = {46 72 6d 5f 48 48 5f 43 48 49 5f 54 49 45 54 } //1 Frm_HH_CHI_TIET
		$a_01_3 = {51 55 41 4e 5f 53 79 73 74 65 6d 2e 46 72 6d } //1 QUAN_System.Frm
		$a_01_4 = {64 63 39 64 33 37 33 66 2d 64 66 61 61 2d 34 33 32 66 2d 39 38 65 63 2d 39 36 35 36 38 32 66 32 64 36 35 66 } //1 dc9d373f-dfaa-432f-98ec-965682f2d65f
		$a_01_5 = {32 30 31 36 20 62 79 20 4d 61 6e 4d 61 6e 38 39 } //1 2016 by ManMan89
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule Trojan_BAT_FormBook_AFO_MTB_20{
	meta:
		description = "Trojan:BAT/FormBook.AFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {2b 0e 00 11 04 09 16 11 05 6f ?? 00 00 0a 00 00 08 09 16 09 8e 69 6f ?? 01 00 0a 25 13 05 16 fe 02 13 08 11 08 2d db } //2
		$a_01_1 = {65 36 31 39 62 38 30 62 2d 62 61 38 39 2d 34 33 32 34 2d 38 37 62 66 2d 32 66 35 31 36 66 65 33 32 38 64 33 } //1 e619b80b-ba89-4324-87bf-2f516fe328d3
		$a_01_2 = {32 30 32 33 43 72 79 70 74 73 44 6f 6e 65 5c 45 64 75 50 6c 75 73 5c 6f 62 6a 5c 44 65 62 75 67 5c 45 6c 6e 61 62 66 76 61 2e 70 64 62 } //1 2023CryptsDone\EduPlus\obj\Debug\Elnabfva.pdb
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6b 00 6f 00 74 00 68 00 61 00 72 00 69 00 71 00 68 00 79 00 74 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 31 00 39 00 36 00 36 00 } //1 http://kothariqhyto.com/1966
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}