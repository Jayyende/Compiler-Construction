# Compiler Construction Laboratory

**A Collection of 12 Practical Experiments Using LEX, YACC, FLEX and C**

This repository contains the implementation of **12 Compiler Construction Laboratory experiments**, covering lexical analysis, regular expressions, syntax analysis, parsing, expression evaluation, error recovery, variable declaration validation, and intermediate code generation.

The practicals demonstrate how compiler construction concepts are implemented using **LEX/FLEX and YACC**, supported by C programming.

---

## About the Repository

Compiler Construction is concerned with the design and implementation of compilers that translate source programs into meaningful representations and executable forms.

This repository provides practical implementations of fundamental compiler concepts, beginning with lexical analysis and progressing towards syntax parsing and intermediate code generation.

Each experiment includes its respective source code and implementation files, along with the relevant execution process and outputs.

## Technologies & Tools

| Technology | Purpose |
|---|---|
| **LEX / FLEX** | Lexical analysis and token recognition |
| **YACC** | Grammar definition and syntax analysis |
| **C Programming** | Semantic actions and implementation logic |
| **GCC** | Compilation of generated C source files |
| **Ubuntu Linux** | Development and execution environment |
| **GNU Nano** | Source code editing |

## Practical Experiments

### CO1 – Introduction to Lexical Analysis

| Experiment | Title | Description |
|---|---|---|
| **Exp-01** | Introduction to LEX Tool, Metadata and Patterns | Introduction to the LEX tool, its structure, regular expressions, patterns and actions for recognizing input strings. |
| **Exp-02** | Counting Comments, Keywords, Identifiers, Words, Lines and Spaces | Implementation of a lexical analyser to identify and count different elements from an input file. |
| **Exp-03** | Counting Words Starting with "A" | Uses regular expressions to identify and count words beginning with uppercase or lowercase A. Also includes number recognition using lexical patterns. |

### CO2 – Introduction to YACC and Lexical Transformations

| Experiment | Title | Description |
|---|---|---|
| **Exp-04** | Introduction to YACC Tool and Format to Write YACC Code | Introduction to YACC grammar rules and the integration of LEX and YACC for arithmetic expression validation. |
| **Exp-05** | Conversion of Lowercase to Uppercase and Vice Versa | Implements character-case conversion using FLEX while preserving spaces, numbers and special characters. |
| **Exp-06** | Conversion of Decimal to Hexadecimal Number in a File | Reads decimal numbers using FLEX and converts them into their corresponding hexadecimal representations. |

### CO3 – Parsing and Expression Evaluation

| Experiment | Title | Description |
|---|---|---|
| **Exp-07** | Test Lines Ending with "COM" | Uses lexical patterns to identify whether each input line ends with the specified string "COM". |
| **Exp-08** | Postfix Expression Evaluation | Implements postfix arithmetic expression evaluation using LEX and YACC, supporting addition, subtraction, multiplication, division and exponentiation. |

### CO4 – Syntax Analysis and Error Handling

| Experiment | Title | Description |
|---|---|---|
| **Exp-09** | Desk Calculator with Error Recovery | Develops a desk calculator for arithmetic expressions with error detection and recovery, allowing subsequent valid expressions to be processed. |
| **Exp-10** | Parser for "FOR" Loop Statements | Implements a parser to recognize and validate the syntax of FOR loop statements using LEX and YACC. |

### Additional Compiler Construction Experiments

| Experiment | Title | Description |
|---|---|---|
| **Exp-11** | Parser for Generic Variable Declaration | Implements a LEX and YACC-based parser to recognize and validate generic variable declarations using data types and identifiers. |
| **Exp-12** | Intermediate Code Generation for Arithmetic Expression | Generates intermediate three-address-style code for arithmetic expressions using temporary variables and step-by-step operations. |

---

## Repository Structure

```text
Compiler-Construction/
│
├── Exp-1-Introduction_to_LEX/
├── Exp-2-Count_Comments_Keywords_Identifiers/
├── Exp-3/
├── Exp-4/
├── Exp-5/
├── Exp-6/
├── Exp-7/
├── Exp-8/
├── Exp-9/
├── Exp-10/
├── Exp-11/
├── Exp-12/
│
└── README.md
```

Each experiment folder contains its corresponding implementation files. LEX/FLEX and YACC source files are maintained separately wherever required.

## Development Environment

The experiments were developed and executed in an Ubuntu Linux environment.

**Prerequisites:**
- Ubuntu Linux
- GCC Compiler
- FLEX / LEX
- YACC / Bison
- GNU development utilities

### Installation

Install the required tools using:

```bash
sudo apt update
sudo apt install build-essential flex bison
```

### General Execution Workflow

The typical workflow for experiments involving both LEX and YACC is:

**1. Generate YACC parser files**

```bash
yacc -d filename.y
```

**2. Generate the lexical analyser**

```bash
lex filename.l
```

**3. Compile the generated C files**

```bash
gcc y.tab.c lex.yy.c -o output -ll
```

**4. Execute the program**

```bash
./output
```

*Note:* Some experiments use FLEX directly without YACC. Experiments involving mathematical functions may also require additional linking options such as `-lm`. Use the commands provided in the respective experiment's implementation.

## Concepts Covered

The practical implementations provide hands-on experience with the following compiler construction concepts:

- Lexical analysis and token recognition
- Regular expressions and pattern matching
- LEX/FLEX specification structure
- YACC grammar rules and productions
- Syntax analysis and parsing
- Arithmetic expression evaluation
- Postfix expression processing
- Error detection and recovery
- Variable declaration validation
- FOR loop syntax recognition
- Intermediate code generation
- Three-address-style representation

## Learning Outcomes

Through these experiments, the following skills and concepts were practised:

1. Understanding the working and structure of lexical analyser generators.
2. Designing regular expressions for different input patterns.
3. Implementing syntax analysers using grammar productions.
4. Integrating LEX/FLEX with YACC.
5. Evaluating arithmetic expressions through parsing techniques.
6. Handling invalid expressions through error recovery.
7. Validating programming language constructs.
8. Generating intermediate representations for arithmetic expressions.

## Conclusion

This repository presents a practical implementation of important concepts in Compiler Construction, progressing from basic lexical analysis to syntax parsing, expression evaluation, error recovery and intermediate code generation.

The 12 experiments provide a foundation for understanding how compiler components work together to recognize, validate, process and translate programming language constructs.

---

**Repository:** Compiler-Construction  
**Subject:** Compiler Construction Laboratory  
**Language:** C  
**Tools:** LEX, FLEX, YACC, GCC  
**Environment:** Ubuntu Linux  

*Developed as part of the Compiler Construction Laboratory practical coursework.*
