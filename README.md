# Mini C Compiler
A lexical and syntaxical compiler developed by Bison and Flex for a simple C like language.
# Notes
“Lexer.l” holds Regular Expressions in order to define language tokens.
</br>
“Parser.y” contains Grammars of the language.
</br>
Build.cmd does the following:
</br>
1. Conversion of “Lexer.l” into lex.yy.c using “flex Lexer.l” command.
2. Conversion of “Parser.y” into y.tab.c using “bison -dy Parser.y” command. (d flag
represents creation of header files and y flag represents POSIX creation form
which uses y as the name of the parser)
3. Compiling the given C files with “gcc lex.yy.c y.tab.c -o Compiler.exe” command
which then yields the “Compiler.exe”.
# Sample Tests
![1](https://user-images.githubusercontent.com/79080845/193072823-890ace7b-2464-4afe-80c5-deef83fafcd5.png)
</br>
![2](https://user-images.githubusercontent.com/79080845/193072834-d31f4c0b-2c0e-4967-a730-0f9737b1e73e.png)
</br>
![3](https://user-images.githubusercontent.com/79080845/193072837-a32e0f27-6e12-4d77-aecc-5c012912b294.png)
</br>
![4](https://user-images.githubusercontent.com/79080845/193072835-f58619e5-b506-4f6d-ac99-c728b901cf4d.png)
</br>
![5](https://user-images.githubusercontent.com/79080845/193072869-925e1640-2c10-45fe-b19e-8c281b4c4074.png)
</br>
![6](https://user-images.githubusercontent.com/79080845/193072873-1217224c-b27e-45a0-9720-021bd8d4bc6b.png)
</br>
![7](https://user-images.githubusercontent.com/79080845/193072884-4fa9fd67-5e04-45f3-bffe-d720a7d77d16.png)
</br>
![8](https://user-images.githubusercontent.com/79080845/193072886-fe506970-7854-4bc6-bfcf-fb8b661e6e5a.png)
</br>
![9](https://user-images.githubusercontent.com/79080845/193072889-7908ae71-6f46-4707-ad84-74b9ac3fffd6.png)
</br>
![0](https://user-images.githubusercontent.com/79080845/193072898-c6564d13-6a2e-4c69-813b-dbc98108ddc2.png)
</br>
