return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- Set to "tabs" to only show tabpages instead
        themable = true, -- Allows highlight groups to be overridden
        numbers = 'none', -- Can be "ordinal" | "buffer_id" | "both"
        close_command = 'Bdelete! %d', -- Close buffer command
        buffer_close_icon = '✗',
        close_icon = '✗',
        path_components = 1, -- Show only file name
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, -- Prefix used when buffer is de-duplicated
        tab_size = 21,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        persist_buffer_sort = true, -- Preserve buffer sorting
        separator_style = { '│', '│' }, -- Can be "thick" | "thin" | { 'any', 'any' }
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = false,
        indicator = {
          style = 'none', -- Options: 'icon', 'underline', 'none'
        },
        icon_pinned = '󰐃',
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end', -- Ensure this is a valid option for bufferline.nvim
        offsets = {
          {
            filetype = "neo-tree",
            text = "Nvim Tree",
            separator = true,
            text_align = "left"
          }
        },
      },
      highlights = {
        separator = {
          fg = '#434C5E',
        },
        buffer_selected = {
          bold = true,
          italic = false,
        },
      },
    }
  end,
}

