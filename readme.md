## `git-workshop/README.md`

```md
# 🐔🥑 git-workshop

A small, fun repository containing:
- A **colorful animated smiley face** script for your terminal
- A **classic guacamole recipe** (with some extra ASCII art flair)
- A **mysterious chicken cooking note**

---

## 📂 Project Structure

```
git-workshop
├── chicken.md       # A short note about cooking chicken
├── guacamole.md     # A guacamole recipe + ASCII art
└── smiley.sh        # Animated smiley face Bash script
```

---

## 📜 File Descriptions

### `smiley.sh`
A Bash script that displays an **animated, colorful smiley face** (and other fun frames) in the center of your terminal.  
It cycles through emojis and text, with each frame in a different color.

**Features:**
- Color cycling (red, green, yellow, blue, magenta, cyan)
- Centered animation based on terminal size
- Graceful exit with `Ctrl+C`
- Customizable animation speed

**Run it:**
```bash
chmod +x smiley.sh
./smiley.sh
```

---

### `guacamole.md`
A **classic guacamole recipe** with ingredients, instructions, and tips.  
Also includes some **ASCII art** for extra fun — including a guacamole bowl and a (slightly cursed) dog.

**Preview:**
```
🥑 Guac Bowl 🥑
(    @\___
 /         O   *nom nom*
/   (_____/
/_____/   U
```

---

### `chicken.md`
A very short cooking note:
```
put it in the oven
```
Interpret as you wish. 🍗

---

## ⚙️ Requirements

- **For `smiley.sh`**:
  - Bash shell
  - A terminal that supports ANSI colors and Unicode emojis
  - `tput` command (usually included in most Unix-like systems)

---

## 🛠 Customization

You can edit `smiley.sh` to:
- Change the **frames** (add your own emojis or text)
- Adjust the **delay** between frames:
  ```bash
  delay=0.3  # seconds
  ```
- Add more **colors** by extending the `colors` array

---

## 📸 Example Output

When running `smiley.sh`, you’ll see something like this in your terminal:

```
        😊
        😐
        😉
        😄
        🐱‍👤
 SAUL NEEDS A PINT ASAP!!
```
…with each frame in a different color, smoothly cycling.

---

## 📜 License
This project is just for fun — do whatever you want with it.  
If you improve the animation or add more recipes, send them! 😄

