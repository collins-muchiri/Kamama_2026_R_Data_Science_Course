# Module 01 - R, RStudio and the R Ecosystem

**Estimated time:** 4-5 hours
**Prerequisites:** Module 00 (R, RStudio and Git installed and working)
**Track:** Required

## Learning Objectives

By the end of this module you will be able to:

1. Explain what R is, what it is good at, and where it sits next to tools like Excel and Python.
2. Navigate the four panes of RStudio and run code from both the console and a script.
3. Describe how the R ecosystem fits together: R itself, CRAN, packages and the tidyverse.
4. Use R as a calculator, create variables, and build and subset vectors.
5. Recognize the basic data types and handle missing values (NA) correctly.
6. Install and load a package from CRAN, and look up help efficiently.

## 1. What is R?

R is a free, open-source programming language designed around one idea: **data**. It was created in the 1990s by Ross Ihaka and Robert Gentleman at the University of Auckland as a modern implementation of the older S language, and it is now maintained by the R Core Team as a GNU project.

R is popular in data science, statistics, epidemiology, finance, ecology and monitoring & evaluation because it covers the whole pipeline in one place:

- importing messy data,
- cleaning and reshaping it,
- summarizing and visualizing it,
- running statistical models,
- and turning everything into reproducible reports.

**How R compares to familiar tools:**

| Tool | Good for | Limits |
| --- | --- | --- |
| Excel | Quick looks, small tables | Manual steps; hard to reproduce; struggles with big data |
| R | Analysis, statistics, charts, reports of any size | You must write code (this course teaches you how) |
| Python | General programming, machine learning, web | Less specialized statistical output than R |

The decisive advantage of R over spreadsheets is **reproducibility**: your analysis is a script that can be re-run on tomorrow's data, checked by a colleague, or scheduled to update a report automatically. In research and M&E settings, that property repays the initial learning curve many times over.

## 2. What is RStudio?

RStudio (built by Posit, the company formerly named RStudio) is an integrated development environment - the workshop where you write and run R code. R is the engine; RStudio is the cockpit around it.

RStudio's window has four panes:

| Pane | What it does | You will use it to |
| --- | --- | --- |
| Console | Runs code immediately | Experiment and check small things |
| Source editor | Holds saved scripts (`.R` files) | Write everything you want to keep |
| Environment / History | Lists objects currently in memory | See your variables and their values |
| Files / Plots / Packages / Help / Viewer | File browser, graphics, package manager, help pages | View charts, manage packages, read docs |

**Two habits to build from day one:**

1. **The console is a scratchpad, scripts are memory.** Anything typed only in the console disappears when you close RStudio. Anything saved in a script survives and can be re-run.
2. **Run script lines with Ctrl+Enter** (Windows/Linux) or **Cmd+Return** (Mac) with the cursor on the line. The line is sent to the console and its result appears below.

If you completed Module 00, R and RStudio already work on your machine. Open the course project (File > Open Project) and keep it open while you read this module.

## 3. The R ecosystem

- **R itself** - the language interpreter plus the packages that always ship with it (`base`, `stats`, `utils`, `graphics`). This is what you installed in Module 00.
- **CRAN** - the Comprehensive R Archive Network at https://cran.r-project.org, the official package archive with more than 20,000 contributed packages. When this course says "install a package", CRAN is where it comes from.
- **Packages** - bundles of functions, documentation and example data contributed by the community. Someone has usually already solved the problem you are facing; your job is to find and load their package.
- **The tidyverse** - a collection of packages that share a common design philosophy (`dplyr`, `ggplot2`, `tidyr`, `readr`, `purrr`, `tibble`, `stringr`, `forcats`, `lubridate`). This course teaches the tidyverse style on a base R foundation: base R first, because it is the vocabulary everything else is written in.
- **The community** - the Posit Community forum (https://forum.posit.co), Stack Overflow's `[r]` tag, R-Ladies chapters and the annual useR! conference. Real humans answer beginner questions every day.

## 4. Hands-on: R as a calculator

Run each line in the console, or in `01_first_session.R` (provided in this folder). Expected results are shown as comments.

```r
5 + 3          # 8
10 / 4         # 2.5
2^10           # 1024
17 %% 5        # 2    modulo: the remainder of 17 divided by 5
17 %/% 5       # 3    integer division: how many times 5 fits into 17
```

Operator precedence follows standard mathematics: powers first, then multiplication and division, then addition and subtraction. Parentheses override everything:

```r
2 + 3 * 4      # 14
(2 + 3) * 4    # 20
```

The most useful built-in math functions:

```r
sqrt(144)          # 12
abs(-7)            # 7
log(100)           # 4.605170  natural logarithm
log10(100)         # 2         base-10 logarithm
exp(1)             # 2.718282  e to the power 1
round(3.14159, 2)  # 3.14
```

## 5. Variables: giving names to values

A variable is a name attached to a value. Create one with the assignment operator `<-`:

```r
clinic_visits <- 342
clinic_visits       # 342
```

Read `<-` as "gets": "clinic_visits gets 342". The tidyverse style guide recommends `<-` for assignment and snake_case for names:

```r
patients <- 120
referrals <- 45
total_contacts <- patients + referrals
total_contacts      # 165
```

Naming rules and conventions:

- Names are case-sensitive: `visits` and `Visits` are different objects.
- A name cannot start with a digit, cannot contain spaces, and cannot be a reserved word such as `TRUE`, `FALSE`, `if` or `function`.
- Prefer descriptive snake_case: `monthly_rainfall` beats `mr` or `x1`.

You can reassign at any time - the old value is simply replaced:

```r
total_contacts <- total_contacts + 10
total_contacts      # 175
```

The Environment pane (top right) lists every object you have created; in code, `ls()` does the same.

## 6. Vectors: R's core data structure

A vector is a sequence of values of the same type, and it is the structure behind almost every line of R data code. Create one with `c()` (combine):

```r
rainfall_mm <- c(12, 0, 45, 88, 130, 67)   # six months of rainfall, mm
length(rainfall_mm)   # 6
mean(rainfall_mm)     # 57
sum(rainfall_mm)      # 342
```

Sequences and repetition:

```r
1:6                    # 1 2 3 4 5 6
seq(0, 100, by = 25)   # 0 25 50 75 100
rep("Q1", times = 3)   # "Q1" "Q1" "Q1"
```

**Vectorization** is R's superpower: operations apply to every element at once, with no loop required.

```r
rainfall_mm * 2                   # 24 0 90 176 260 134
rainfall_mm - mean(rainfall_mm)   # -45 -57 -12 31 73 10
```

Extract elements with square brackets. Important: **R counts from 1**, not from 0.

```r
rainfall_mm[1]                  # 12        first element
rainfall_mm[c(1, 3)]            # 12 45     first and third
rainfall_mm[rainfall_mm > 50]   # 88 130 67 logical subsetting
```

That last line is the pattern behind most real R work: put a TRUE/FALSE condition inside `[]` and you keep only the values that pass.

## 7. Basic data types and missing values

The four types you meet constantly:

```r
class(3.14)         # "numeric"
class(7L)           # "integer"  the L suffix forces integer
class("Nairobi")    # "character"
class(TRUE)         # "logical"
```

Two special values to know immediately:

- `NA` means "missing" - the value is unknown. Real datasets are full of NAs.
- `TRUE` / `FALSE` are logical values, typically produced by comparisons.

```r
5 > 3               # TRUE
c(1, 5, 9) > 4      # FALSE TRUE TRUE
```

NA behaves carefully in arithmetic - it contaminates results rather than being ignored:

```r
survey <- c(5, 4, NA, 3)
mean(survey)                 # NA  NA is contagious!
mean(survey, na.rm = TRUE)   # 4   remove NAs before computing
```

When you mix types in one vector, R silently converts everything to the most flexible type present (this is called coercion):

```r
class(c(1, 2, 3))    # "numeric"
class(c(1, "two"))   # "character" - the 1 became "1"
```

Factors (categorical data) and dates are important but get their own modules (05 and 06). For now, knowing that `class()` reveals a value's type is enough.

## 8. Getting help - a skill, not an afterthought

Nobody remembers every function. Professionals look things up constantly; the skill is knowing where.

```r
?mean          # open the help page for mean()
help("mean")   # same thing, useful when the name is in a string
args(round)    # just the argument names: function (x, digits = 0)
example(mean)  # run the examples from the help page directly
```

A help page has fixed sections: **Description** (what it does), **Usage** (how to call it), **Arguments** (what each input means), **Value** (what it returns) and **Examples** (runnable code). Read Description, then Arguments, then Examples, in that order.

When a function is not enough: copy the exact error message and search it. In this order: help page, then a search engine, then the Posit Community forum or Stack Overflow (see `resources/README.md` for how to ask a good question).

## 9. Your first package

Packages come from CRAN. The rhythm is: **install once per machine, load in every session**.

```r
install.packages("skimr")   # run once; needs internet, takes a minute
library(skimr)              # run in every new session before using it
```

`skimr` produces richer summaries than base R's `summary()`. Build a small table and take a first look:

```r
visits <- data.frame(
  month = month.name[1:6],
  rainfall_mm = c(12, 0, 45, 88, 130, 67)
)

skim(visits)   # compact summary: type, missing count, mean, sd, percentiles
```

The exact layout of `skim()` output varies slightly between versions - what matters is the habit: one function, one glance, and you know whether a column has missing values, what its center and spread look like, and whether anything looks odd.

(If you are curious: `month.name` used above is a built-in vector of month names that ships with R - `?month.name` explains it.)

## 10. Key takeaways

- R is a free language purpose-built for data; RStudio is the environment you work in; CRAN is its app store with 20,000+ packages.
- Scripts beat the console for anything you will ever repeat - the script is your reproducible record.
- Vectors plus vectorized operations are the core mental model of R; subsetting with `[]` and a condition is the pattern behind most analyses.
- `NA` is not zero and not an error - it is missingness, and you must decide explicitly how to handle it.
- Getting help (`?fn`, `args()`, `example()`, searching) is a core skill, not a fallback.

## Checklist before Module 02

- [ ] All code blocks in this lesson ran without errors in your RStudio session.
- [ ] `01_first_session.R` runs top to bottom from a fresh session.
- [ ] You can predict the `class()` of a value before running it.
- [ ] `skimr` is installed and loads with `library(skimr)`.
- [ ] Exercises attempted before opening `solutions/`.

**Next:** Module 02 - R syntax, variables and basic data types, where these ideas are practiced until they are automatic.
