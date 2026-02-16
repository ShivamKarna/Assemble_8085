# Microprocessor Programming - 8085 Assembly

This repository contains a collection of 8085 assembly language programs developed for learning microprocessor programming concepts and operations.

## 📁 Project Structure

### InClass/

Contains assembly programs written during classroom sessions, covering fundamental to advanced concepts:

#### Basic Operations

- **ADDITION.asm** - Basic addition operations
- **addDataToReg.asm** - Adding data to registers
- **multiplication.asm** - Multiplication algorithms
- **division.asm** - Division algorithms

#### Data Manipulation

- **addAllNUmberFromtable.asm** - Sum all numbers from a table
- **addEvenNumberOnly.asm** - Add only even numbers from dataset
- **addTwoTable.asm** - Add corresponding elements of two tables
- **transferDatabetweentables.asm** - Transfer data between memory tables
- **forwardOrder.asm** - Forward order data arrangement

#### Bit Operations

- **COUNT1&0'S.asm** - Count number of 1s and 0s in data
- **countNoOf1.asm** - Count number of 1s in a byte
- **coutnNoOf1&0'sAdvanced.asm** - Advanced counting algorithms
- **count0EvenOdd.asm** - Count 0s and classify even/odd
- **exchangeBitOfD6andD7.asm** - Exchange specific bits

#### Data Conversion

- **binaryToGray.asm** / **binaryTOGrayCode.asm** - Binary to Gray code conversion
- **asciiToBinary.asm** - ASCII to binary conversion
- **binarytoASCII.asm** - Binary to ASCII conversion

#### Sorting & Comparison

- **largest.asm** / **LARGEST.asm** - Find largest number in array
- **ascending.asm** - Sort array in ascending order

#### Practice Files

- **6Jan.asm**, **7thJan.asm** - Date-specific class work
- **try.asm**, **try1.asm**, **try3.asm**, **TRY4.asm**, **TRY5.asm**, **TRY6.asm**, **TRY7.asm** - Experimental code
- **codeSnippet.asm** - Code snippets and utilities

### Self_Ques/

Contains self-practice programs and solved exercises:

#### Arithmetic Operations

- **add.asm** - Basic addition
- **add16Bit.asm** - 16-bit addition
- **8Bit_Multiply.asm** - 8-bit multiplication
- **8bitDivision.asm** - 8-bit division

#### Complement Operations

- **1s2sComplement.asm** - 1's and 2's complement (8-bit)
- **1s2sComplement_16_Bit.asm** - 1's and 2's complement (16-bit)

#### Selective Operations

- **AddEvenOnly.asm** - Add even numbers only
- **AddOddOnly.asm** - Add odd numbers only
- **AddTwoTableData.asm** - Add data from two tables with carry handling

#### Bit Manipulation

- **CountNoOf1.asm** - Count 1s in binary data
- **CountNoOf1And0.asm** - Count both 1s and 0s
- **SwapD1D4.asm** - Swap specific bit positions

#### Comparison & Analysis

- **CompareNibble.asm** - Compare nibbles (4-bit groups)
- **MaxMin.asm** - Find maximum and minimum values

## Common Instructions Used

| Instruction   | Description                               |
| ------------- | ----------------------------------------- |
| `LXI H, addr` | Load register pair HL with 16-bit address |
| `MOV A, M`    | Move data from memory to accumulator      |
| `ADD M`       | Add memory content to accumulator         |
| `INX H`       | Increment HL register pair                |
| `JMP addr`    | Unconditional jump                        |
| `JC addr`     | Jump if carry flag is set                 |
| `JNC addr`    | Jump if carry flag is not set             |
| `STA addr`    | Store accumulator content to memory       |
| `CMP M`       | Compare accumulator with memory           |
| `RLC/RRC`     | Rotate accumulator left/right             |

## 🤝 Contributing

Feel free to:

- Add more programs
- Optimize existing code
- Add better documentation
- Fix bugs or issues

## License

Educational purposes - Free to use and modify

## Author

Shivam Karn

---

**Note**: This is a learning repository. Code may contain educational comments and alternative implementations for better understanding.
