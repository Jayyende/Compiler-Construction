# Experiment 2

## Aim

To count the number of comments, keywords, identifiers, words, lines and spaces from an input file using the LEX tool.

## Software Used

- Ubuntu Linux
- Flex (LEX)
- GCC Compiler

## Files

- Exp2.l
- input.txt

## Compilation

```bash
flex Exp2.l
gcc lex.yy.c -o Exp2 -lfl
./Exp2
```

## Output

The program successfully counts:

- Comments
- Keywords
- Identifiers
- Words
- Lines
- Spaces

## Result

The program successfully counted the number of comments, keywords, identifiers, words, lines and spaces from the input file using LEX.
