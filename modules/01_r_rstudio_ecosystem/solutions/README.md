# Module 01 - Solutions

Open this file only after attempting the exercises in `exercises/README.md`. Your console formatting may differ slightly; the values are what matter.

## Exercise 1 - Weekly clinic totals

```r
weekly_patients <- c(128, 149, 132)
total   <- sum(weekly_patients)             # 409
average <- round(mean(weekly_patients), 1)  # 136.3
total
average
```

`sum()` adds the elements of the vector; `mean()` divides by its length automatically.

## Exercise 2 - Targets and progress

```r
clinic_name   <- "Kilimani Health Centre"
year          <- 2026
target_visits <- 15000
visits_so_far <- 9210

progress     <- visits_so_far / target_visits  # 0.614
progress_pct <- round(progress * 100, 1)       # 61.4
progress
progress_pct
```

The clinic has reached 61.4 percent of its annual target.

## Exercise 3 - Annual rainfall

```r
rainfall_mm <- c(38, 52, 105, 210, 175, 60, 15, 22, 30, 80, 140, 95)

total_mm   <- sum(rainfall_mm)                 # 1022
mean_mm    <- round(mean(rainfall_mm), 1)      # 85.2
total_in   <- round(total_mm / 25.4, 1)        # 40.2
wet_months <- sum(rainfall_mm > 100)           # 4

total_mm
mean_mm
total_in
wet_months
```

`rainfall_mm > 100` produces a TRUE/FALSE vector, and `sum()` counts the TRUEs - the standard vectorized way to count a condition.

## Exercise 4 - Wettest and driest months

```r
which.max(rainfall_mm)               # 4 - April
rainfall_mm[which.max(rainfall_mm)]  # 210
rainfall_mm[rainfall_mm < 30]        # 15 22
sum(rainfall_mm < 30)                # 2
```

`which.max()` returns the position of the first maximum. With months in calendar order, position 4 is April.

## Exercise 5 - Types and coercion

```r
class(42)          # "numeric"
class(42L)         # "integer"
class("42")        # "character" - quotes make text, even of digits
class(TRUE)        # "logical"
class(NA)          # "logical"   NA is a logical missing marker
class(c(1, 2, 3))  # "numeric"
class(c(1, "two")) # "character"
# c(1, "two") is character because when types are mixed, R coerces
# every element to the most flexible type present.
```

Two easy-to-miss facts: a number in quotes (`"42"`) is text, and the class of `NA` is logical by default.

## Exercise 6 - Missing survey data

```r
responses <- c(5, 4, NA, 3, 5, NA, 4)

mean(responses)                # NA
mean(responses, na.rm = TRUE)  # 4.2
sum(is.na(responses))          # 2
```

`mean()` refuses to return a number when any input is missing, unless you explicitly remove NAs with `na.rm = TRUE`. `is.na()` marks missing positions as TRUE, and `sum()` counts them.

## Exercise 7 - Reading a help page

`sep` controls the string placed between items, and its default is a single space:

```r
paste("Module", 1)              # "Module 1"  (default sep = " ")
paste("Module", 1, sep = "-")   # "Module-1"
paste0("Module", 1)             # "Module1"   (paste0 has no separator)
```

## Exercise 8 - Install, load, summarize

```r
install.packages("skimr")   # once per machine
library(skimr)

visits <- data.frame(
  month = month.name[1:6],
  rainfall_mm = c(12, 0, 45, 88, 130, 67)
)

skim(visits)
```

The `skim()` output reports, among other statistics, mean = 57 and sd = 48.6 for `rainfall_mm`. A one-sentence report might read: "Monthly rainfall in the first half of the year averaged 57 mm, with a standard deviation of 48.6 mm, indicating high month-to-month variability."

## Where to go next

Tick Module 01 in `PROGRESS.md`. If any solution still feels unclear after reading it, re-run the lesson examples for that topic before moving to Module 02.
