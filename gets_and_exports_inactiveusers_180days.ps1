﻿search-adaccount -accountinactive -usersonly -timespan "180" | Select-Object samaccountname, name, enabled, lastlogondate | Export-Csv C:\Temp\inactiveusers.csv