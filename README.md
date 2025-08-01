# Philosophers

A C implementation of the classic "Dining Philosophers" problem, demonstrating concurrent programming concepts and synchronization mechanisms.

## Overview

The Dining Philosophers problem is a classic synchronization problem in computer science that illustrates the challenges of resource allocation and deadlock prevention in concurrent systems. In this problem, philosophers sit around a circular table with forks between each pair of adjacent philosophers. Each philosopher alternates between thinking and eating, but needs two forks to eat.

## Project Structure

```
philosophers/
├── includes/
│   └── philo.h          # Header file with function prototypes and structures
├── srcs/
│   ├── main.c           # Main program entry point
│   └── utils.c          # Utility functions
├── Makefile             # Build configuration
├── .gitignore           # Git ignore rules
└── README.md            # This file
```

## Features

- **Concurrent Programming**: Implementation using threads and mutexes
- **Deadlock Prevention**: Strategies to prevent philosophers from deadlocking
- **Resource Management**: Proper handling of shared resources (forks)
- **Timing Control**: Precise timing for eating, sleeping, and thinking
- **Status Monitoring**: Real-time status updates of philosopher activities

## Building the Project

### Prerequisites

- GCC compiler
- Make utility
- POSIX-compliant system (Linux, macOS, etc.)

### Compilation

```bash
# Compile the project
make

# Clean object files
make clean

# Clean all generated files
make fclean

# Recompile everything
make re
```

## Usage

```bash
./philo number_of_philosophers time_to_die time_to_eat time_to_sleep [number_of_times_each_philosopher_must_eat]
```

### Parameters

- `number_of_philosophers`: Number of philosophers (and forks) around the table
- `time_to_die`: Time in milliseconds after which a philosopher dies if they haven't eaten
- `time_to_eat`: Time in milliseconds it takes for a philosopher to eat
- `time_to_sleep`: Time in milliseconds a philosopher spends sleeping
- `number_of_times_each_philosopher_must_eat` (optional): Simulation stops when all philosophers have eaten at least this many times

### Example

```bash
# 5 philosophers, die after 800ms, eat for 200ms, sleep for 200ms
./philo 5 800 200 200

# Same as above, but stop after each philosopher eats 7 times
./philo 5 800 200 200 7
```

## Implementation Details

### Key Concepts

- **Mutexes**: Used to protect shared resources (forks) from race conditions
- **Threading**: Each philosopher runs in a separate thread
- **Synchronization**: Careful coordination to prevent deadlocks and ensure fairness
- **Timing**: Precise millisecond timing for all philosopher activities

### Rules

1. Philosophers alternate between eating, sleeping, and thinking
2. A philosopher needs two forks to eat (left and right)
3. Philosophers cannot communicate with each other
4. Philosophers don't know when another philosopher is about to die
5. Each time a philosopher eats, sleeps, or thinks, a timestamped message is printed

### Output Format

The program outputs timestamped messages for each philosopher action:

```
[timestamp_ms] [philosopher_id] has taken a fork
[timestamp_ms] [philosopher_id] is eating
[timestamp_ms] [philosopher_id] is sleeping
[timestamp_ms] [philosopher_id] is thinking
[timestamp_ms] [philosopher_id] died
```

## Development Status

🚧 **Work in Progress** 🚧

This project is currently in development. The basic project structure is set up, but the core philosopher logic is not yet implemented.

### TODO

- [ ] Implement philosopher structure and initialization
- [ ] Add threading logic for each philosopher
- [ ] Implement fork (mutex) management
- [ ] Add timing and synchronization mechanisms
- [ ] Implement death detection
- [ ] Add proper argument parsing and validation
- [ ] Implement optional meal count termination
- [ ] Add comprehensive error handling

## Contributing

This appears to be a learning project. If you're working on this:

1. Start by implementing the basic philosopher structure in the header file
2. Add argument parsing and validation in main.c
3. Implement the core philosopher routine (eat, sleep, think cycle)
4. Add proper synchronization and deadlock prevention
5. Test with various parameter combinations

## Author

- **kokaimov** - *Initial work* - kokaimov@student.42berlin.de

## License

This project is part of the 42 School curriculum.

---

*Note: This README will be updated as the project develops and more features are implemented.*