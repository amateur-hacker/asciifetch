# asciifetch

asciifetch is a command-line tool that displays system information along with ASCII art. It allows users to customize the ASCII art displayed and provides options to show system details in a visually appealing manner.

## Features

### ASCII Art Selection

- Display a random ASCII art from a predefined list.
- Specify a particular ASCII art to display using the `-n` or `--name` option.
- List all available ASCII art options with the `-l` or `--list` option.

### System Information Display

- Show system information in a formatted box alongside ASCII art.
- Display user information, including username and hostname.
- Show system details such as the operating system, service manager, installed packages, desktop environment, terminal, and memory usage.

### Customization

- Customize the size of the ASCII art using the `-s` or `--size` option.
- Omit displaying the ASCII art name with the `--no-name` option.
- Provide help on command-line options using the `-h` or `--help` option.

## Usage

```bash
asciifetch [-r|--random] [-n|--name <ascii_name>] [-l|--list] [-h|--help]
```

- `-r, --random`: Display a random ASCII art (default).
- `-n, --name <name>`: Display a specific ASCII art by name.
- `-l, --list`: List all available ASCII art options.
- `-h, --help`: Display usage instructions.

## Examples

### Display a Random ASCII Art

```bash
asciifetch -r
```

### Display a Specific ASCII Art

```bash
asciifetch -n unicornsay
```

### List Available ASCII Art Options

```bash
asciifetch -l
```

## Dependencies

- `boxes`: Required for formatting ASCII art in a box. You can install it manually using your package manager, or let the installation script handle it automatically.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/amateur-hacker/asciifetch.git
   ```

2. Navigate to the `asciifetch` directory:

   ```bash
   cd asciifetch
   ```

3. Run the script:
   ```bash
   ./install.sh
   ```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request to suggest improvements or new features.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
