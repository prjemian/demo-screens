# demo-screens

Screen files for various EPICS Display Managers to demonstrate features.

application | subdirectory | suffix | description
--- | --- | --- | ---
MEDM | `medm` | `.adl` | files created in MEDM editor
caQtDM | `caqtdm` | `.ui` | files converted by `adl2ui`
PyDM | `pydm` | `.ui` | files converted by `adl2pydm`
CSS BOY | -tba- | `.opi` | files converted by -tba-
Phoebus | -tba- | `.bob` | files converted within the application

There is an additional directory for EPICS Database 
files (ends with `.db`) used by these screens.
Run any of these with `softIoc -d the_file_name.db`
