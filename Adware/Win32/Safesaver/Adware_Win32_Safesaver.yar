
rule Adware_Win32_Safesaver{
	meta:
		description = "Adware:Win32/Safesaver,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {49 6e 66 6f 55 52 4c 3d 22 68 74 74 70 3a 2f 2f 73 61 66 65 73 61 76 65 72 2e 6e 65 74 2f 22 } //2 InfoURL="http://safesaver.net/"
		$a_01_1 = {50 72 6f 64 75 63 74 4e 61 6d 65 3d 22 73 61 66 65 20 75 73 73 41 76 65 22 } //2 ProductName="safe ussAve"
		$a_01_2 = {62 67 73 63 72 69 70 74 3d 22 44 4d 78 47 73 79 38 4b 68 48 38 32 41 65 34 33 70 53 77 46 76 79 56 4b 41 66 6e 33 68 4e 6c 4b 67 36 6d 50 42 37 } //1 bgscript="DMxGsy8KhH82Ae43pSwFvyVKAfn3hNlKg6mPB7
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=3
 
}
rule Adware_Win32_Safesaver_2{
	meta:
		description = "Adware:Win32/Safesaver,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 64 75 63 74 4e 61 6d 65 09 3d 20 22 73 61 61 66 65 20 73 73 61 56 65 61 22 } //2 牐摯捵乴浡॥‽猢慡敦猠慳敖≡
		$a_01_1 = {50 75 62 6c 69 73 68 65 72 09 3d 20 22 73 61 66 65 20 73 61 76 65 22 } //2
		$a_01_2 = {49 6e 66 6f 55 52 4c 09 09 3d 20 22 68 74 74 70 3a 2f 2f 73 61 66 65 73 61 76 65 72 2e 6e 65 74 2f 22 } //2 湉潦剕ौ㴉∠瑨灴⼺猯晡獥癡牥渮瑥∯
		$a_01_3 = {62 67 73 63 72 69 70 74 3d 22 44 4d 78 47 73 79 38 4b 68 48 38 32 41 65 34 33 70 53 77 46 76 79 56 4b 41 66 6e 33 68 4e 6c 4b 67 36 6d 50 42 37 } //1 bgscript="DMxGsy8KhH82Ae43pSwFvyVKAfn3hNlKg6mPB7
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=5
 
}