local weekly_template = [[
# %A %B %d %Y

Weekly GOAL Reflection:

1) What turned out  good this week?

2) What didn't work this week?

3) What have I learned? 

Weekly IDENTITY Reflection:

1) What is the reason behind me existing the previous week?

2) How did I upkeep my integrity this week?

3) How I increase my goals for next week?

]]
local daily_template = [[
# %A %B %d %Y

S.I.M.P.L.E goals v1.3:

[ ] READ daily GROKKING & weekly ATOMIC from 10am-12pm
[ ] OPEN Anki
[ ] DO 25 minutes from 3:30pm-4:30pm
[ ] LEAVE phone on desk from 12am-2am

Wrap ups:

]]
local one_month_challenge = [[

30 DAY CHALLENGE: BECOME A CLEAN AND ORGANIZED PERSON

[ ] Pick something up from the floor
]]
return {
  'jakobkhansen/journal.nvim',
  config = function()
    require('journal').setup {
      filetype = 'md', -- Filetype to use for new journal entries
      root = '~/journal', -- Root directory for journal entries
      date_format = '%d/%m/%Y', -- Date format for `:Journal <date-modifier>`
      autocomplete_date_modifier = 'end', -- "always"|"never"|"end". Enable date modifier autocompletion

      -- Configuration for journal entries
      journal = {
        -- Default configuration for `:Journal <date-modifier>`
        format = '%Y/%m-%B/daily/%d-%A',
        template = '# %A %B %d %Y\n',
        frequency = { day = 1 },

        -- Nested configurations for `:Journal <type> <type> ... <date-modifier>`
        entries = {
          day = {
            format = '%Y/%m-%B/daily/%d-%A', -- Format of the journal entry in the filesystem.
            template = daily_template .. one_month_challenge, -- Optional. Template used when creating a new journal entry
            frequency = { day = 1 }, -- Optional. The frequency of the journal entry. Used for `:Journal next`, `:Journal -2` etc
          },
          week = {
            format = '%Y/%m-%B/weekly/week-%W',
            template = weekly_template,
            frequency = { day = 7 },
            date_modifier = 'monday', -- Optional. Date modifier applied before other modifier given to `:Journal`
          },
          month = {
            format = '%Y/%m-%B/%B',
            template = '# %B %Y\n',
            frequency = { month = 1 },
          },
          year = {
            format = '%Y/%Y',
            template = '# %Y\n',
            frequency = { year = 1 },
          },
        },
      },
    }
  end,
}
