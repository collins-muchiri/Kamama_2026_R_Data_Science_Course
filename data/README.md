# Data

Course datasets live here. Rules for anything added to this folder:

1. **Open licenses only.** Every dataset must come from an openly licensed source (for example: govdata.ke, data.humdata.org, Kaggle open datasets, UCI ML Repository, gapminder). Record the source and license in the dataset's own README.
2. **No copyrighted or personal data.** Never commit scraped content, restricted publications or anything containing personal identifiers.
3. **Naming convention:** `dataset-name_source_year.csv` (lowercase, hyphens, no spaces), for example `hiv-prevalence_knbs_2023.csv`.
4. **Small files only.** Keep raw files under ~25 MB; larger data should be downloaded by a script in the module, not committed.

Each dataset folder contains: the raw file, a `README.md` (source, license, column dictionary, known quirks) and, where useful, a `load_data.R` script showing the canonical way to import it.
