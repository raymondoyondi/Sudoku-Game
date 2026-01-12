# Sudoku Game 🧩

A lightweight, high-performance command-line interface (CLI) Sudoku game written in C. This project offers a pure terminal-based experience featuring dynamic puzzle generation, real-time input validation, and an automated solver.

---

## 🚀 Features

* **Dynamic Generation:** Creates unique Sudoku puzzles with varying difficulty levels.
* **Backtracking Solver:** Includes a built-in solver based on the recursive backtracking algorithm.
* **Input Validation:** Ensures all moves follow standard Sudoku rules (row, column, and 3x3 grid checks).
* **Lightweight & Fast:** Optimized C code with minimal dependencies, ensuring a smooth experience even on older hardware.
* **Interactive CLI:** Simple, intuitive terminal commands for a seamless gameplay loop.

---

## 🛠️ How It Works

### The Backtracking Algorithm
The built-in solver uses a **depth-first search** approach to fill the board. It attempts to place a number in an empty cell, validates it, and moves to the next. If it hits a dead end, it "backtracks" to the previous cell and tries a different number.



### Logic Flow
1.  **Initialization:** The board is cleared and a seed is generated.
2.  **Generation:** The solver fills a blank board, then removes a specific number of digits to create the puzzle.
3.  **Validation:** Every time a user enters a value, the system checks:
    * Is the number unique in the **Row**?
    * Is the number unique in the **Column**?
    * Is the number unique in the **3x3 Subgrid**?

---

## 💻 Getting Started

### Prerequisites
* A C compiler (e.g., `gcc`, `clang`)
* `make` (optional, for build automation)

### Installation & Execution
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/raymondoyondi/Sudoku-Game.git](https://github.com/raymondoyondi/Sudoku-Game.git)
   cd Sudoku-Game

2. **Compile the source code using GCC**
gcc main.c -o game

3. **Run the game**
./game

## 🎮 Gameplay Instructions

Once the game is running, you will interact with the board through terminal prompts.

### Command Guide
| Action | Terminal Input | Description |
| :--- | :--- | :--- |
| **Enter Move** | `row col value` | Places a number (e.g., `3 4 9` places a 9 at Row 3, Col 4). |
| **Solve** | `s` or `solve` | Triggers the backtracking algorithm to fill the board. |
| **Quit** | `q` or `quit` | Safely exits the game and returns to the terminal. |

### Terminal Example
    ```text
    Current Board:
    5 6 . | . 2 . | . . . 
    3 . . | 4 1 5 | . . . 
    . 2 9 | . . . | . 5 . 
    ------+-------+------
    8 . . | . 5 . | . . 9
    7 . . | 3 . 6 | . . 1
    1 . . | . 8 . | . . 5
    ------+-------+------
    . 8 . | . . . | 5 1 .
    . . . | 8 3 1 | . . 4
    . . . | . 4 . | . 7 2

    Enter move (row col val) to solve: 1 3 4
    Move accepted!


### 🛠️ Technical Overview

**The Backtracking Algorithm**

The built-in solver employs a **recursive backtracking** strategy, which is a form of depth-first search. It systematically explores the grid to find a valid solution.

**Logic Flow:**

1. **Find Empty:** Locate the first empty cell on the board.

2. **Attempt:** Try placing digits 1 through 9 in that cell.

3. **Validate:** Check if the digit is valid (unique in Row, Column, and 3x3 Subgrid).

4. **Recurse:** If valid, move to the next empty cell.

5. **Backtrack:** If no digit fits, reset the current cell to empty and return to the previous step to try a different number.
