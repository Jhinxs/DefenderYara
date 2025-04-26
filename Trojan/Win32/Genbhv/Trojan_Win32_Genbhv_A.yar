
rule Trojan_Win32_Genbhv_A{
	meta:
		description = "Trojan:Win32/Genbhv.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4b 65 79 62 6f 61 72 64 20 4c 61 79 6f 75 74 73 5c 25 2e 38 78 } //1 System\CurrentControlSet\Control\Keyboard Layouts\%.8x
		$a_01_1 = {54 54 69 6d 65 50 61 73 73 77 6f 72 64 41 75 74 6f 46 6f 72 6d } //1 TTimePasswordAutoForm
		$a_01_2 = {50 61 73 73 77 6f 72 64 45 64 69 74 6c } //1 PasswordEditl
		$a_01_3 = {4f 6e 50 61 73 73 77 6f 72 64 24 } //1 OnPassword$
		$a_01_4 = {5c 44 52 49 56 45 52 53 5c 25 73 5c 44 42 20 4f 50 45 4e } //1 \DRIVERS\%s\DB OPEN
		$a_01_5 = {43 6f 6e 75 73 65 72 66 69 67 2e 64 61 74 } //1 Conuserfig.dat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}