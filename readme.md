# Project Pilot 🚀

A tool to quickly start, build, and manage your projects from the command line. Add new projects easily and run them with just one command.

---

## Features
- Manage your projects from one place.
- Run or build projects with just a few keystrokes.
- Add new projects with custom commands easily.
- Simple and clean command-line interface with colored output.

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/dhruvlathia/project-pilot.git
   ```
2. Move the `project-pilot.bat` file to a directory of your choice (e.g., `C:\ProjectPilot`).
3. Add the directory to the system `PATH` variable:
   - Go to **System Properties → Advanced → Environment Variables**.
   - Under **System variables**, find **Path**, and click **Edit**.
   - Add your directory path (e.g., `C:\ProjectPilot`).
   - Click **OK** to save changes.

---

## Usage

Open Command Prompt and type:
```bash
project-pilot
```

Follow the on-screen instructions to:
1. Add a new project.
2. Run or build an existing project.
3. Exit the launcher.

### Example
Adding a new project:
```
Hello Zade, Which Project?
--------------------------
1. Add New
X. Exit
--------------------------
Select The Project: 1
Enter project name: MyApp
Enter project path: D:\Projects\MyApp
Enter run command: npm start
Enter build command: npm run build
```

Running or building a project:
```
Select The Project: 2
Run or Build? (R/B): R
```

---

## Contributing

Feel free to open issues and submit pull requests to improve this tool. Contributions are welcome!

---

## Credits

Made with ❤️ by Dhruv Lathia

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

