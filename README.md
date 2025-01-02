# Bash Automate Folder Cleanup

This repository contains a Bash script (`main.sh`) to automate folder cleanup by deleting files older than a specified number of days. This script is designed to help maintain organized directories and free up storage space by removing outdated files.

## Features

- Automatically delete files older than a user-specified number of days.
- Supports custom folder paths for cleanup.
- Provides a dry-run mode to preview files that will be deleted.
- Logs cleanup actions for audit purposes.

## Requirements

- Bash shell
- A Unix-based operating system (Linux, macOS) or Windows with a Bash environment (e.g., WSL, Git Bash).

## Setup and Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/Darshan-KC/Bash-Automate-Folder-Cleanup.git
   cd Bash-Automate-Folder-Cleanup
   ```

2. Make the script executable:
   ```bash
   chmod +x main.sh
   ```

3. Run the script:
   ```bash
   ./main.sh
   ```

4. Follow the prompts to:
   - Specify the folder path.
   - Set the number of days for file retention.
   - Enable or disable dry-run mode.

## Example

```bash
./main.sh
Enter the folder path: /path/to/cleanup
Enter the number of days: 30
Dry-run mode enabled? (y/n): y
```

This example will preview files in `/path/to/cleanup` that are older than 30 days.

## Logging

The script logs details of deleted files (or files to be deleted in dry-run mode) in a log file located in the same directory as the script. The log file is named `cleanup_log_YYYYMMDD.log`.

## Customization

You can modify the script to:
- Exclude certain file types or directories.
- Perform additional actions, such as archiving files before deletion.

## Contribution

Contributions are welcome! Feel free to submit issues or pull requests to enhance the functionality of this script.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

Thank you for using this script! If you find it helpful, consider giving the repository a ⭐ on GitHub.

---

Happy cleaning! 🚀
