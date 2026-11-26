# Module 00 - Course Orientation and Environment Setup

**Estimated time:** 2-3 hours
**Prerequisites:** none
**Track:** Required

## Learning Objectives

By the end of this module you will be able to:

1. Install R, RStudio Desktop and Git on your own machine.
2. Explain how this course repository is organized and how to work through it.
3. Run your first R commands in the RStudio console and save them in a script.

## How This Course Works

Every module in `modules/` follows the same fixed structure:

- **Estimated time** - expected hours to complete.
- **Prerequisites** - modules you must finish first.
- **Track** - Required (core path), Optional (nice to have) or Advanced (go deeper).
- **Learning Objectives** - what you will be able to do afterwards.
- **Lesson** - explanations with runnable code examples.
- **Exercises** - hands-on tasks, from `exercises/` in the module folder.
- **Solutions** - worked answers in `solutions/`; open them only after attempting.
- **Key Takeaways** - short summary of the module.

After each module, tick it off in `PROGRESS.md`.

## Setup Checklist

1. Install R (4.3 or newer) from https://cran.r-project.org/
2. Install RStudio Desktop from https://posit.co/download/rstudio-desktop/
3. Install Git from https://git-scm.com/downloads
4. Clone this repository and open the folder in RStudio (File > Open Project).
5. In the RStudio console, run:

```r
R.version.string
cat("Hello, data science!")
```

If both lines run without errors, your environment is ready.

## Exercises

1. Create a new R script called `first_script.R`, add the two commands above, and run them line by line.
2. Change the text inside `cat()` to print your own greeting, then re-run.
3. In one sentence, write down (in a comment with `#`) what you want to build by the end of this course.

## Key Takeaways

- R is the language; RStudio is the interface you use to work with it.
- The console runs commands immediately; scripts save them for reuse.
- Every module follows the same structure: read, run, practice, check.
