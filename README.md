# Vending Machine Controller using Verilog HDL

## Overview

Designed and implemented a Finite State Machine (FSM)-based Vending Machine Controller using Verilog HDL. The system supports multiple product selections, coin-based payments, online payments, automatic change return, transaction cancellation, and product dispensing. The design was verified using simulation and waveform analysis in Xilinx Vivado.

## Features

- FSM-Based Control Architecture
- Multiple Product Selection Support
- Coin-Based Payment Processing
- Online Payment Support
- Automatic Change Return
- Transaction Cancellation Feature
- Product Dispensing Logic
- Parameterized Product Pricing
- Functional Verification using Testbenches

## Available Products

| Product | Price |
|----------|--------|
| Pen | 10 |
| Notebook | 50 |
| Coke | 35 |
| Lays | 20 |
| Water Bottle | 20 |

## System Architecture

The vending machine operates through the following stages:

```text
IDLE
  ↓
SELECT PRODUCT
  ↓
PAYMENT VALIDATION
  ↓
DISPENSE PRODUCT
  ↓
RETURN CHANGE
  ↓
IDLE
```

## FSM States

The controller consists of the following states:

- IDLE_STATE
- SELECT_PRODUCT_STATE
- PEN_SELECTION_STATE
- NOTEBOOK_SELECTION_STATE
- COKE_SELECTION_STATE
- LAYS_SELECTION_STATE
- WATER_BOTTLE_SELECTION_STATE
- DISPENSE_AND_RETURN_STATE

## Payment Methods

### Coin Payment

The machine verifies whether the inserted amount is sufficient for the selected product.

Example:

```text
Notebook Price = 50
Inserted Coins = 60
Change Returned = 10
```

### Online Payment

The machine supports online payment transactions and directly proceeds to product dispensing after payment validation.

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Project Structure

```text
src/          -> RTL Source Files
testbench/    -> Verification Testbench
screenshots/  -> Simulation Waveforms
```

## Simulation Results

### Vending Machine Waveform

![Vending Machine](screenshots/vending%20machine.png)

The simulation verifies:

- Product Selection Logic
- Coin Payment Transactions
- Online Payment Transactions
- Product Dispensing
- Change Return Logic
- State Transitions
- Transaction Cancellation

## Applications

- Snack Vending Machines
- Beverage Dispensers
- Smart Retail Kiosks
- Railway Station Vending Systems
- Airport Self-Service Machines
- Automated Ticket Dispensing Systems

## Key Learnings

- Finite State Machine Design
- Verilog HDL Development
- RTL Design Methodology
- Payment Processing Logic
- Change Calculation Logic
- Hardware Verification
- Waveform Analysis
- Digital System Design

## Future Improvements

- Touchscreen-Based Product Selection
- Digital Wallet Integration
- Inventory Monitoring
- Product Availability Detection
- FPGA Hardware Deployment
- SystemVerilog Verification Environment
- IoT-Based Smart Vending Machine
