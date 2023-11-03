# 🎰 Aleo Roulette Game 🎲

Welcome to the Aleo Roulette Game, where the excitement of the casino meets the cutting-edge technology of blockchain! 🚀

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Running the Game](#running-the-game)
- [Gameplay](#gameplay)
  - [Placing Bets](#placing-bets)
  - [Game Outcome](#game-outcome)
- [Betting Options](#betting-options)
- [Blockchain and Security](#blockchain-and-security)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Dive into the world of decentralized gaming with our Aleo Roulette Game, written in the Leo language for the Aleo blockchain. Our game ensures a provably fair gaming experience, allowing you to place bets and potentially win big, all while maintaining the highest standards of security and transparency.

## Getting Started

### Installation

Ensure you have Leo installed on your system. If not, you can find the installation guide on the [Aleo documentation](https://developer.aleo.org/leo/installation).

### Running the Game

To get the roulette wheel spinning, you'll use one of the following commands:

```
leo run main <bet_number>
```

Or, to execute on the blockchain:

```
leo execute main <bet_number>
```

Replace `<bet_number>` with the [number or category](#betting-options) you wish to bet on.

## Gameplay

### Placing Bets

To start the game, pass your bet to the `main` function. The bet can be a single number (0-36) or a category (37-43), representing different group bets.

### Game Outcome

After placing your bet, the `finalize main` function will be invoked to determine the winning number. If your bet matches the outcome, you win!

## Betting Options

Explore the range of bets available in the Aleo Roulette Game:

- **Numbers (0-36)**: Place your bet on any single number.
- **Red (37)**: All red numbers on the roulette table.
- **Black (38)**: All black numbers.
- **Low (1-18)**: Any number from 1 to 18.
- **High (19-36)**: Any number from 19 to 36.
- **Dozens**: 
  - **First Dozen (41)**: Numbers 1-12.
  - **Second Dozen (42)**: Numbers 13-24.
  - **Third Dozen (43)**: Numbers 25-36.

Each bet comes with its own set of odds and payout structure, reflecting the true spirit of the roulette experience.

## Blockchain and Security

Every spin and outcome is recorded on the Aleo blockchain, providing a permanent and transparent record that ensures fairness and eliminates any possibility of tampering.

## Contributing

Feel free to fork the repository, submit pull requests, or send us your feedback and suggestions!

## License

This project is open-sourced under the [MIT License](LICENSE.md).

Let the good times roll! Good luck, and may the odds be ever in your favor! 🍀
