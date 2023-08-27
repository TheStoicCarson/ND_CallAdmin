# ND_CallAdmin
A very simple way to add a new job, with notifications for Admin Calls.

![ND_CallAdmin](https://i.imgur.com/JoDT7T4.png)


# Usage

---------------


/calladmin [Report]


# Installation

---------------

1) Unpack ZIP File.
2) Drag and Drop ND_CallAdmin into your [ND] Folder
3) Navigate to our Server.cfg and add the following ensure that [ND_Core, and ND_Characters] start before this.
4) Navigate to ND_Characters and add the following or if you renamed your already you can **ADD** them your Departments
```lua
departments = {                         -- these are the required discord role ids to be able to access these departments (enable developer mode in discord's advanced settings and right click the role)
        ["CIV"] = {"0"},
        ["SAHP"] = {"0"},
        ["LSPD"] = {"0"},
        ["BCSO"] = {"0"},
        ["LSFD"] = {"0"},
        ["STAFF"] = {"0"}
    },


    departmentPaychecks = false,            -- if you would like salaries to be paid out to the departments, set this to true
    paycheckInterval = 24,                  -- this is how often (in minutes) paychecks are to be paid out if departmentPaychecks is set to true
    departmentSalaries = {                  -- the amount given to the character per interval of time set via paycheckInterval
        ["CIV"] = 300,
        ["SAHP"] = 700,
        ["LSPD"] = 600,
        ["BCSO"] = 500,
        ["LSFD"] = 650,
        ["STAFF"] = 0
    },
```
# Examples
![1](https://www.cheapyardsignsage.com/cdn/shop/products/Starburst_ComingSoon_1024x1024@2x.png?v=1586370932)














