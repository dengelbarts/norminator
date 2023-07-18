# Norminator
Created for the "Ecole 42" Piscine:

Norminator is a bash script, combined with a bash alias that will run norminette in a loop in the current directory of your terminal until the output contains "OK", which will mean your code passes the norminette.

## Setup

1. Go to your root `~` directory.

```bash
cd ~
```

2. Clone the git there.

```bash
git clone https://github.com/dengelbarts/norminator.git Norminator
```

3. Run this command to create .zshrc if it doesn't yet exist in your root.

```bash
touch .zshrc
```

4. Run this command to add an alias to .zshrc.

```bash
echo 'alias norminator="bash ~/Norminator/Norminator.sh"' >> ~/.zshrc
```

5. Close and Re-open the Terminal, to initialise the alias.

6. Go to your assignment directory where you want to test.

```bash
cd cXX
```

7. Run using command `norminator`, which will run norminette with the required flags on all the files in said directory and update every second.

```bash
norminator
```

8. Norminator will stop running when the output contains "OK!" (It will also play a sound, declaring your victory over the vile norminette.)

## Warnings

Please run Norminator when your code logic is finished. 
Running Norminator while creating the code might not work out, as once the code is OK at any point it will stop checking.
This of course also applies to directories that contain multiple files.
Please only run Norminator in a directory containing one code file, if you want it to loop.

## Other Recommendations

Sublime Text editor has an autosave feature that can be setup. While I will not explain how, I do heavily recommend it, as it allows you to have the code directory open in your terminal with Norminator running, while you edit the code in Sublime Text. Whenever you fix a norm error in Sublime Text, it will autosave and the change will immediately appear in your terminal running Norminator

## Authors

dengelba and joguerra from the 2023 July Piscine.

## Contributors

dengelba and joguerra from the 2023 July Piscine and Bing Chat.
