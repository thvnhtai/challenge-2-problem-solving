# Product Inventory Management

## Overview
This command-line tool is designed for managing a simple product inventory. The tool performs several tasks:

- **Calculate the total value of products in stock** (price * quantity).
- **Find the most expensive product** in the inventory.
- **Check if a product is in stock** (by name).
- **Sort products** based on either price or quantity.

## Steps to Build and Run

### Prerequisites:
- macOS system with Xcode installed.

### Build and Run Instructions:

1. **Open the Project:**
   - Open the `ProductInventoryManagement.xcodeproj` in Xcode.

2. **Build the Project:**
   - Press `Cmd + B` to build the project.

3. **Run the Project:**
   - Press `Cmd + R` to run the command-line tool. The program will print the total inventory value, most expensive product, and sorted products based on user-specified criteria.

4. **Modify the Inventory:**
   - Edit the `inventory` array in `main.swift` to update product details (name, price, quantity).

## Challenges or Notes

- **Sorting**: The tool allows sorting by both price and quantity, providing flexibility in how the products are displayed.
- **Edge Cases**: The program assumes that the inventory list is non-empty and all products have distinct names.
- **Modularity**: The inventory-related functions (e.g., calculating total value, finding the most expensive product) are separated for easy updates or expansions (e.g., adding more fields or functions).

# Missing Number Finder

## Overview
This command-line tool solves the "Missing Number" problem using an XOR-based approach. Given an array of distinct numbers ranging from 1 to n+1, with one number missing, the tool finds and returns the missing number. The approach leverages the properties of XOR to efficiently calculate the missing number in O(n) time with O(1) space complexity.

### Features:
- Finds the missing number in an array of distinct integers from 1 to n+1.
- Efficient XOR-based solution, with minimal space usage.
- Example input array is provided to demonstrate the functionality.

---

## Steps to Build and Run

### Prerequisites:
- macOS system with Xcode installed.

### Build and Run Instructions:
1. **Open the Project**:
   - Open the `MissingNumberFinder.xcodeproj` in Xcode.

2. **Build the Project**:
   - Press `Cmd + B` to build the project.

3. **Run the Project**:
   - Press `Cmd + R` to run the command-line tool. The program will output the missing number from the provided array.
     
4. **Modify the Input Array**:
- Edit the `inputArray` variable in `main.swift` to test with different arrays.

## Challenges or Notes

- **Efficiency**: The XOR approach is highly efficient for this problem, working in linear time (O(n)) and constant space (O(1)).
- **Edge Cases**: This approach assumes that the input contains distinct numbers and that exactly one number is missing. It won't handle arrays with duplicate values or no missing number.
- **Overflow Consideration**: The XOR approach does not suffer from overflow issues, but be mindful of the array size for very large inputs.


