{ pkgs, yazi, ... }:

{
  programs.yazi = {
    keymap = {
      manager.append_keymap = [



	# Linemode
	{ on = [ "m", "s" ]; run = "linemode size";        desc = "Set linemode to size"; }
	{ on = [ "m", "p" ]; run = "linemode permissions"; desc = "Set linemode to permissions"; }
	{ on = [ "m", "c" ]; run = "linemode ctime";       desc = "Set linemode to ctime"; }
	{ on = [ "m", "m" ]; run = "linemode mtime";       desc = "Set linemode to mtime"; }
	{ on = [ "m", "o" ]; run = "linemode owner";       desc = "Set linemode to owner"; }
	{ on = [ "m", "n" ]; run = "linemode none";        desc = "Set linemode to none"; }

	# Copy
	{ on = [ "c", "c" ], run = "copy path",             desc = "Copy the file path" },
	{ on = [ "c", "d" ], run = "copy dirname",          desc = "Copy the directory path" },
	{ on = [ "c", "f" ], run = "copy filename",         desc = "Copy the filename" },
	{ on = [ "c", "n" ], run = "copy name_without_ext", desc = "Copy the filename without extension" },

	# Filter
	{ on = "f", run = "filter --smart", desc = "Filter files" },

	# Find
	{ on = "/", run = "find --smart",            desc = "Find next file" },
	{ on = "?", run = "find --previous --smart", desc = "Find previous file" },
	{ on = "n", run = "find_arrow",              desc = "Go to the next found" },
	{ on = "N", run = "find_arrow --previous",   desc = "Go to the previous found" },

	# Sorting
	{ on = [ ",", "m" ], run = [ "sort modified --reverse=no", "linemode mtime" ], desc = "Sort by modified time" },
	{ on = [ ",", "M" ], run = [ "sort modified --reverse", "linemode mtime" ],    desc = "Sort by modified time (reverse)" },
	{ on = [ ",", "c" ], run = [ "sort created --reverse=no", "linemode ctime" ],  desc = "Sort by created time" },
	{ on = [ ",", "C" ], run = [ "sort created --reverse", "linemode ctime" ],     desc = "Sort by created time (reverse)" },
	{ on = [ ",", "e" ], run = "sort extension --reverse=no",                      desc = "Sort by extension" },
	{ on = [ ",", "E" ], run = "sort extension --reverse",                         desc = "Sort by extension (reverse)" },
	{ on = [ ",", "a" ], run = "sort alphabetical --reverse=no",                   desc = "Sort alphabetically" },
	{ on = [ ",", "A" ], run = "sort alphabetical --reverse",                      desc = "Sort alphabetically (reverse)" },
	{ on = [ ",", "n" ], run = "sort natural --reverse=no",                        desc = "Sort naturally" },
	{ on = [ ",", "N" ], run = "sort natural --reverse",                           desc = "Sort naturally (reverse)" },
	{ on = [ ",", "s" ], run = [ "sort size --reverse=no", "linemode size" ],      desc = "Sort by size" },
	{ on = [ ",", "S" ], run = [ "sort size --reverse", "linemode size" ],         desc = "Sort by size (reverse)" },
	{ on = [ ",", "r" ], run = "sort random --reverse=no",                         desc = "Sort randomly" },

	# Goto
	{ on = [ "g", "h" ],       run = "cd ~",             desc = "Go to the home directory" },
	{ on = [ "g", "c" ],       run = "cd ~/.config",     desc = "Go to the config directory" },
	{ on = [ "g", "d" ],       run = "cd ~/Downloads",   desc = "Go to the downloads directory" },
	{ on = [ "g", "<Space>" ], run = "cd --interactive", desc = "Go to a directory interactively" },

	# Tabs
	{ on = "t", run = "tab_create --current", desc = "Create a new tab with CWD" },

	{ on = "1", run = "tab_switch 0", desc = "Switch to the first tab" },
	{ on = "2", run = "tab_switch 1", desc = "Switch to the second tab" },
	{ on = "3", run = "tab_switch 2", desc = "Switch to the third tab" },
	{ on = "4", run = "tab_switch 3", desc = "Switch to the fourth tab" },
	{ on = "5", run = "tab_switch 4", desc = "Switch to the fifth tab" },
	{ on = "6", run = "tab_switch 5", desc = "Switch to the sixth tab" },
	{ on = "7", run = "tab_switch 6", desc = "Switch to the seventh tab" },
	{ on = "8", run = "tab_switch 7", desc = "Switch to the eighth tab" },
	{ on = "9", run = "tab_switch 8", desc = "Switch to the ninth tab" },

	{ on = "[", run = "tab_switch -1 --relative", desc = "Switch to the previous tab" },
	{ on = "]", run = "tab_switch 1 --relative",  desc = "Switch to the next tab" },

	{ on = "{", run = "tab_swap -1", desc = "Swap current tab with previous tab" },
	{ on = "}", run = "tab_swap 1",  desc = "Swap current tab with next tab" },

	# Tasks
	{ on = "w", run = "tasks_show", desc = "Show task manager" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" }
	{
  on = "<F1>"; 
  run = "help"; 
  desc = "Open help"; 
  }


      ]; 
    };
  };
}



[manager]

keymap = [
]

[tasks]

keymap = [
	{ on = "<Esc>", run = "close", desc = "Close task manager" },
	{ on = "<C-[>", run = "close", desc = "Close task manager" },
	{ on = "<C-c>", run = "close", desc = "Close task manager" },
	{ on = "w",     run = "close", desc = "Close task manager" },

	{ on = "k", run = "arrow -1", desc = "Move cursor up" },
	{ on = "j", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Up>",   run = "arrow -1", desc = "Move cursor up" },
	{ on = "<Down>", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Enter>", run = "inspect", desc = "Inspect the task" },
	{ on = "x",       run = "cancel",  desc = "Cancel the task" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" },
	{ on = "<F1>", run = "help", desc = "Open help" },
]

[select]

keymap = [
	{ on = "<Esc>",   run = "close",          desc = "Cancel selection" },
	{ on = "<C-[>",   run = "close",          desc = "Cancel selection" },
	{ on = "<C-c>",   run = "close",          desc = "Cancel selection" },
	{ on = "<Enter>", run = "close --submit", desc = "Submit the selection" },

	{ on = "k", run = "arrow -1", desc = "Move cursor up" },
	{ on = "j", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Up>",   run = "arrow -1", desc = "Move cursor up" },
	{ on = "<Down>", run = "arrow 1",  desc = "Move cursor down" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" },
	{ on = "<F1>", run = "help", desc = "Open help" },
]

[input]

keymap = [
	{ on = "<C-c>",   run = "close",          desc = "Cancel input" },
	{ on = "<Enter>", run = "close --submit", desc = "Submit input" },
	{ on = "<Esc>",   run = "escape",         desc = "Go back the normal mode, or cancel input" },
	{ on = "<C-[>",   run = "escape",         desc = "Go back the normal mode, or cancel input" },

	# Mode
	{ on = "i", run = "insert",                              desc = "Enter insert mode" },
	{ on = "a", run = "insert --append",                     desc = "Enter append mode" },
	{ on = "I", run = [ "move -999", "insert" ],             desc = "Move to the BOL, and enter insert mode" },
	{ on = "A", run = [ "move 999", "insert --append" ],     desc = "Move to the EOL, and enter append mode" },
	{ on = "v", run = "visual",                              desc = "Enter visual mode" },
	{ on = "V", run = [ "move -999", "visual", "move 999" ], desc = "Enter visual mode and select all" },

	# Character-wise movement
	{ on = "h",       run = "move -1", desc = "Move back a character" },
	{ on = "l",       run = "move 1",  desc = "Move forward a character" },
	{ on = "<Left>",  run = "move -1", desc = "Move back a character" },
	{ on = "<Right>", run = "move 1",  desc = "Move forward a character" },
	{ on = "<C-b>",   run = "move -1", desc = "Move back a character" },
	{ on = "<C-f>",   run = "move 1",  desc = "Move forward a character" },

	# Word-wise movement
	{ on = "b",     run = "backward",              desc = "Move back to the start of the current or previous word" },
	{ on = "w",     run = "forward",               desc = "Move forward to the start of the next word" },
	{ on = "e",     run = "forward --end-of-word", desc = "Move forward to the end of the current or next word" },
	{ on = "<A-b>", run = "backward",              desc = "Move back to the start of the current or previous word" },
	{ on = "<A-f>", run = "forward --end-of-word", desc = "Move forward to the end of the current or next word" },

	# Line-wise movement
	{ on = "0",      run = "move -999", desc = "Move to the BOL" },
	{ on = "$",      run = "move 999",  desc = "Move to the EOL" },
	{ on = "<C-a>",  run = "move -999", desc = "Move to the BOL" },
	{ on = "<C-e>",  run = "move 999",  desc = "Move to the EOL" },
	{ on = "<Home>", run = "move -999", desc = "Move to the BOL" },
	{ on = "<End>",  run = "move 999",  desc = "Move to the EOL" },

	# Delete
	{ on = "<Backspace>", run = "backspace",	       desc = "Delete the character before the cursor" },
	{ on = "<Delete>",    run = "backspace --under", desc = "Delete the character under the cursor" },
	{ on = "<C-h>",       run = "backspace",         desc = "Delete the character before the cursor" },
	{ on = "<C-d>",       run = "backspace --under", desc = "Delete the character under the cursor" },

	# Kill
	{ on = "<C-u>", run = "kill bol",      desc = "Kill backwards to the BOL" },
	{ on = "<C-k>", run = "kill eol",      desc = "Kill forwards to the EOL" },
	{ on = "<C-w>", run = "kill backward", desc = "Kill backwards to the start of the current word" },
	{ on = "<A-d>", run = "kill forward",  desc = "Kill forwards to the end of the current word" },

	# Cut/Yank/Paste
	{ on = "d", run = "delete --cut",                              desc = "Cut the selected characters" },
	{ on = "D", run = [ "delete --cut", "move 999" ],              desc = "Cut until the EOL" },
	{ on = "c", run = "delete --cut --insert",                     desc = "Cut the selected characters, and enter insert mode" },
	{ on = "C", run = [ "delete --cut --insert", "move 999" ],     desc = "Cut until the EOL, and enter insert mode" },
	{ on = "x", run = [ "delete --cut", "move 1 --in-operating" ], desc = "Cut the current character" },
	{ on = "y", run = "yank",           desc = "Copy the selected characters" },
	{ on = "p", run = "paste",          desc = "Paste the copied characters after the cursor" },
	{ on = "P", run = "paste --before", desc = "Paste the copied characters before the cursor" },

	# Undo/Redo
	{ on = "u",     run = "undo", desc = "Undo the last operation" },
	{ on = "<C-r>", run = "redo", desc = "Redo the last operation" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" },
	{ on = "<F1>", run = "help", desc = "Open help" },
]

[confirm]
keymap = [
	{ on = "<Esc>",   run = "close",          desc = "Cancel the confirm" },
	{ on = "<C-[>",   run = "close",          desc = "Cancel the confirm" },
	{ on = "<C-c>",   run = "close",          desc = "Cancel the confirm" },
	{ on = "<Enter>", run = "close --submit", desc = "Submit the confirm" },

	{ on = "n", run = "close",          desc = "Cancel the confirm" },
	{ on = "y", run = "close --submit", desc = "Submit the confirm" },

	{ on = "k", run = "arrow -1", desc = "Move cursor up" },
	{ on = "j", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Up>",   run = "arrow -1", desc = "Move cursor up" },
	{ on = "<Down>", run = "arrow 1",  desc = "Move cursor down" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" },
	{ on = "<F1>", run = "help", desc = "Open help" },
]

[completion]

keymap = [
	{ on = "<C-c>",   run = "close",                                      desc = "Cancel completion" },
	{ on = "<Tab>",   run = "close --submit",                             desc = "Submit the completion" },
	{ on = "<Enter>", run = [ "close --submit", "close_input --submit" ], desc = "Submit the completion and input" },

	{ on = "<A-k>", run = "arrow -1", desc = "Move cursor up" },
	{ on = "<A-j>", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Up>",   run = "arrow -1", desc = "Move cursor up" },
	{ on = "<Down>", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<C-p>", run = "arrow -1", desc = "Move cursor up" },
	{ on = "<C-n>", run = "arrow 1",  desc = "Move cursor down" },

	# Help
	{ on = "~",    run = "help", desc = "Open help" },
	{ on = "<F1>", run = "help", desc = "Open help" },
];

[help]

keymap = [
	{ on = "<Esc>", run = "escape", desc = "Clear the filter, or hide the help" },
	{ on = "<C-[>", run = "escape", desc = "Clear the filter, or hide the help" },
	{ on = "q",     run = "close",  desc = "Exit the process" },
	{ on = "<C-c>", run = "close",  desc = "Hide the help" },

	# Navigation
	{ on = "k", run = "arrow -1", desc = "Move cursor up" },
	{ on = "j", run = "arrow 1",  desc = "Move cursor down" },

	{ on = "<Up>",   run = "arrow -1", desc = "Move cursor up" },
	{ on = "<Down>", run = "arrow 1",  desc = "Move cursor down" },

	# Filtering
	{ on = "f", run = "filter", desc = "Apply a filter for the help items" },
]

}
