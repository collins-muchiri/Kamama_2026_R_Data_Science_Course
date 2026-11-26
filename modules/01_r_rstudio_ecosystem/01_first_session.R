# ============================================================
# Module 01 - First R Session
# Course: Kamama_2026_R_Data_Science_Course
#
# Run this file top to bottom (Ctrl+Enter line by line, or
# select all and click Run). Every expected output is shown
# as a comment. A fresh session is assumed.
# ============================================================

# ---- 1. Calculator -----------------------------------------

5 + 3          # 8
10 / 4         # 2.5
2^10           # 1024
17 %% 5        # 2    (remainder)
17 %/% 5       # 3    (integer division)

2 + 3 * 4      # 14  - multiplication before addition
(2 + 3) * 4    # 20  - parentheses win

sqrt(144)      # 12
abs(-7)        # 7
log10(100)     # 2
round(3.14159, 2)  # 3.14

# ---- 2. Variables ------------------------------------------

clinic_visits <- 342
clinic_visits        # 342

patients  <- 120
referrals <- 45
total_contacts <- patients + referrals
total_contacts       # 165

total_contacts <- total_contacts + 10
total_contacts       # 175

ls()                 # lists every object you have created

# ---- 3. Vectors and vectorization --------------------------

rainfall_mm <- c(12, 0, 45, 88, 130, 67)  # six months, mm
rainfall_mm

length(rainfall_mm)  # 6
mean(rainfall_mm)    # 57
sum(rainfall_mm)     # 342

rainfall_mm * 2                    # every element, no loop needed
rainfall_mm - mean(rainfall_mm)    # deviations from the mean

1:6                    # 1 2 3 4 5 6
seq(0, 100, by = 25)   # 0 25 50 75 100
rep("Q1", times = 3)   # "Q1" "Q1" "Q1"

rainfall_mm[1]                  # 12  (R counts from 1)
rainfall_mm[c(1, 3)]            # 12 45
rainfall_mm[rainfall_mm > 50]   # 88 130 67

# ---- 4. Data types and NA ----------------------------------

class(3.14)        # "numeric"
class(7L)          # "integer"
class("Nairobi")   # "character"
class(TRUE)        # "logical"

5 > 3              # TRUE
c(1, 5, 9) > 4     # FALSE TRUE TRUE

class(c(1, "two")) # "character" - coercion: the 1 became "1"

survey <- c(5, 4, NA, 3)
mean(survey)                 # NA - missing values contaminate
mean(survey, na.rm = TRUE)   # 4  - handle NA explicitly

# ---- 5. Your first package ---------------------------------
# Uncomment the next two lines the first time you run this file:

# install.packages("skimr")
# library(skimr)

visits <- data.frame(
  month = month.name[1:6],
  rainfall_mm = rainfall_mm
)
visits

# After installing and loading skimr, this gives a rich summary:
# skim(visits)

# ---- 6. Session facts --------------------------------------

R.version.string   # the exact R version you are running
sessionInfo()      # full session details: versions and loaded packages

# Done. Tick Module 01 in PROGRESS.md and move to the exercises.
