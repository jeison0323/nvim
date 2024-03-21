return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        if vim.fn.has("win32") == 1 then
            local powershell_options = {
                shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
                shellcmdflag =
                "-Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
                shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
                shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
                shellquote = "",
                shellxquote = "",
            }
            for option, value in pairs(powershell_options) do
                vim.opt[option] = value
            end
        end
        require("toggleterm").setup {
            open_mapping = [[<c-\>]],
            shell = vim.o.shell,
            close_mapping = [[<c-\>]],
            start_in_insert = true,
            direction = 'float'
        }
    end
}
