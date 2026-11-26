# Module 01 - Exercises

Work through these in order. Write your code in a new script (`exercises.R`) inside this module folder, run every line, and only then compare with `solutions/README.md`. Difficulty labels: (Easy) checks the lesson directly, (Medium) asks you to combine two ideas.

## Exercise 1 - Weekly clinic totals (Easy)

A clinic served 128 patients in week 1, 149 in week 2 and 132 in week 3.

1. Store the three numbers in a vector called `weekly_patients`.
2. Compute the total and the weekly average.
3. Round the average to one decimal place.

## Exercise 2 - Targets and progress (Easy)

1. Create variables: `clinic_name <- "Kilimani Health Centre"`, `year <- 2026`, `target_visits <- 15000`, `visits_so_far <- 9210`.
2. Compute `progress` as the share of the target achieved (a value between 0 and 1).
3. Convert it to a percentage rounded to one decimal place.

## Exercise 3 - Annual rainfall (Medium)

Monthly rainfall for a county, in millimetres:

```r
rainfall_mm <- c(38, 52, 105, 210, 175, 60, 15, 22, 30, 80, 140, 95)
```

1. Compute the total and the mean annual rainfall (mean rounded to one decimal).
2. Convert the total to inches (1 inch = 25.4 mm) and round to one decimal.
3. Count how many months exceeded 100 mm - using vectorization, not by counting by hand.

## Exercise 4 - Wettest and driest months (Medium)

With the same `rainfall_mm` vector (January to December, in order):

1. Find the position of the wettest month and its value. (Hint: `?which.max`)
2. Which rainfall values belong to months with less than 30 mm?
3. How many such months are there?

## Exercise 5 - Types and coercion (Easy)

Predict the output of each line **before** running it, then check yourself:

```r
class(42)
class(42L)
class("42")
class(TRUE)
class(NA)
class(c(1, 2, 3))
class(c(1, "two"))
```

Write a one-line comment explaining why `c(1, "two")` is character.

## Exercise 6 - Missing survey data (Medium)

```r
responses <- c(5, 4, NA, 3, 5, NA, 4)
```

1. What does `mean(responses)` return, and why?
2. Compute the mean of the non-missing responses.
3. Count how many responses are missing - without counting by hand.

## Exercise 7 - Reading a help page (Easy)

1. Open the help page for `paste()` with `?paste`.
2. From the Arguments section, find out what `sep` does.
3. Predict, then run: `paste("Module", 1)`, `paste("Module", 1, sep = "-")` and `paste0("Module", 1)`.

## Exercise 8 - Install, load, summarize (Medium)

1. Install `skimr` from CRAN (once per machine).
2. Build the table below, load skimr, and run `skim(visits)`.

```r
visits <- data.frame(
  month = month.name[1:6],
  rainfall_mm = c(12, 0, 45, 88, 130, 67)
)
```

3. Write one sentence reporting the mean and standard deviation of `rainfall_mm` as shown by `skim()`.
