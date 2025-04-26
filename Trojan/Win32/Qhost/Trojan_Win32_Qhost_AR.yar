
rule Trojan_Win32_Qhost_AR{
	meta:
		description = "Trojan:Win32/Qhost.AR,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {31 32 37 2e 30 2e 30 2e 31 20 20 76 69 61 62 63 70 2e 63 6f 6d } //1 127.0.0.1  viabcp.com
		$a_01_1 = {31 32 37 2e 30 2e 30 2e 31 20 20 77 77 77 2e 76 69 61 62 63 70 2e 63 6f 6d } //1 127.0.0.1  www.viabcp.com
		$a_01_2 = {31 32 37 2e 30 2e 30 2e 31 20 20 73 63 6f 74 69 61 62 61 6e 6b 2e 63 6f 6d 2e 70 65 } //1 127.0.0.1  scotiabank.com.pe
		$a_01_3 = {31 32 37 2e 30 2e 30 2e 31 20 20 77 77 77 2e 73 63 6f 74 69 61 62 61 6e 6b 2e 63 6f 6d 2e 70 65 } //1 127.0.0.1  www.scotiabank.com.pe
		$a_01_4 = {31 32 37 2e 30 2e 30 2e 31 20 20 62 62 76 61 62 61 6e 63 6f 63 6f 6e 74 69 6e 65 6e 74 61 6c 2e 63 6f 6d } //1 127.0.0.1  bbvabancocontinental.com
		$a_01_5 = {31 32 37 2e 30 2e 30 2e 31 20 20 77 77 77 2e 62 62 76 61 62 61 6e 63 6f 63 6f 6e 74 69 6e 65 6e 74 61 6c 2e 63 6f 6d } //1 127.0.0.1  www.bbvabancocontinental.com
		$a_01_6 = {69 00 58 00 61 00 74 00 6f 00 5c 00 50 00 68 00 61 00 72 00 4f 00 6c 00 6e 00 69 00 4e 00 65 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 } //1 iXato\PharOlniNe\Proyecto1.vbp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}