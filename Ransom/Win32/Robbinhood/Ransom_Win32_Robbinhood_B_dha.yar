
rule Ransom_Win32_Robbinhood_B_dha{
	meta:
		description = "Ransom:Win32/Robbinhood.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 42 4e 4c 44 72 76 } //1 RBNLDrv
		$a_02_1 = {70 4c 69 73 74 2e 74 78 74 [0-08] 72 6f 62 6e 72 2e 73 79 73 } //1
		$a_03_2 = {8a 0c 37 80 e9 ?? 88 0c 30 46 3b f5 7c ba } //1
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}
rule Ransom_Win32_Robbinhood_B_dha_2{
	meta:
		description = "Ransom:Win32/Robbinhood.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 74 20 20 66 70 3d 20 69 73 20 20 6c 72 3a 20 6f 66 20 20 6f 6e 20 20 70 63 3d 20 73 70 3a 20 73 70 3d } //10 at  fp= is  lr: of  on  pc= sp: sp=
		$a_01_1 = {4a 46 4a 6c 59 33 6c 6a 62 47 55 75 51 6d 6c 75 4a 46 64 4a 54 6b 52 50 56 31 4d 75 66 6b 4a 55 } //10 JFJlY3ljbGUuQmluJFdJTkRPV1MufkJU
		$a_01_2 = {6d 3d 2b 49 6e 66 2c 20 6e 20 2d 49 6e 66 2e 62 61 74 2e 63 6d 64 2e 63 6f 6d 2e 65 78 65 } //10 m=+Inf, n -Inf.bat.cmd.com.exe
		$a_01_3 = {47 6f 20 62 75 69 6c 64 20 49 44 3a } //10 Go build ID:
		$a_01_4 = {55 30 39 51 53 45 39 54 54 56 4e 54 55 55 77 6b 55 46 4a 50 52 41 } //10 U09QSE9TTVNTUUwkUFJPRA
		$a_01_5 = {66 75 6e 63 74 69 6f 6e 2e 65 6e 63 5f 72 6f 62 62 69 6e 5f 68 6f 6f 64 } //10 function.enc_robbin_hood
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=50
 
}
rule Ransom_Win32_Robbinhood_B_dha_3{
	meta:
		description = "Ransom:Win32/Robbinhood.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 74 20 20 66 70 3d 20 69 73 20 20 6c 72 3a 20 6f 66 20 20 6f 6e 20 20 70 63 3d 20 73 70 3a 20 73 70 3d } //10 at  fp= is  lr: of  on  pc= sp: sp=
		$a_01_1 = {28 6e 69 6c 29 2b 30 33 33 30 2b 30 34 33 30 2b 30 35 33 30 2b 30 35 34 35 2b 30 36 33 30 2b 30 38 34 35 2b 31 30 33 30 2b 31 32 34 35 2b 31 33 34 35 2c 20 2e 2e 2e 2c 20 66 70 3a 2d 30 39 33 30 2e } //10 (nil)+0330+0430+0530+0545+0630+0845+1030+1245+1345, ..., fp:-0930.
		$a_01_2 = {2e 72 62 68 64 } //10 .rbhd
		$a_01_3 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 74 65 32 6b 44 48 43 74 63 4e 45 7a 4d 37 39 33 75 53 4b 2d 2f 71 63 58 34 5f 39 6c 35 54 4d 78 30 75 70 6a 76 48 59 31 63 2f 36 77 41 76 38 4d 55 39 72 62 39 53 36 39 64 30 69 55 38 55 2f 61 46 78 37 55 44 71 59 47 59 6b 70 4e 4c 43 71 42 6f 31 50 22 } //10 Go build ID: "te2kDHCtcNEzM793uSK-/qcX4_9l5TMx0upjvHY1c/6wAv8MU9rb9S69d0iU8U/aFx7UDqYGYkpNLCqBo1P"
		$a_01_4 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 71 70 39 58 65 30 76 38 5a 7a 74 39 49 77 42 6a 39 5f 57 74 2f 74 69 6c 5a 4a 50 31 65 47 57 79 6c 4c 77 2d 6b 54 4a 75 77 2f 42 71 72 37 49 49 6b 75 36 62 61 6d 65 39 6e 6f 6e 33 55 5a 2f 66 4c 6b 34 61 78 78 39 65 59 6d 5f 77 44 75 36 4a 37 58 6b 22 } //10 Go build ID: "qp9Xe0v8Zzt9IwBj9_Wt/tilZJP1eGWylLw-kTJuw/Bqr7IIku6bame9non3UZ/fLk4axx9eYm_wDu6J7Xk"
		$a_01_5 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 47 62 44 52 39 73 79 4a 4e 73 59 30 4b 45 6b 63 32 79 65 6f 2f 57 78 43 4c 5a 42 55 65 5f 4b 53 50 65 66 55 6f 39 46 61 49 2f 69 4b 30 30 47 61 49 30 6f 56 5f 5a 75 58 4a 4d 6a 6e 7a 71 2f 67 66 4a 42 77 4a 5f 32 66 52 46 6a 35 4c 48 37 47 55 5f 51 22 } //10 Go build ID: "GbDR9syJNsY0KEkc2yeo/WxCLZBUe_KSPefUo9FaI/iK00GaI0oV_ZuXJMjnzq/gfJBwJ_2fRFj5LH7GU_Q"
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=30
 
}