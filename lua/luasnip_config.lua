-- [[ luasnip config ]]


-----------------------[[
--       setup         --
-----------------------]]


local ls = require('luasnip')

ls.config.set_config {
    history = true,
    updateevents = 'TextChanged,TextChangedI',
    
}
vim.keymap.set({ "i", "s" }, "<c-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

local types = require('luasnip.util.types')

-----------------------[[
--      snippets       --
-----------------------]]


ls.add_snippets ('python', {
    ls.snippet({
            trig='iu', name='importunittest', descr='import unittest'
        }, 
        {
            ls.text_node('import unittest')
        }),
        ls.snippet({
            trig='tc', name='TestCase', descr='unittest.TestCase'
        }, 
        {
            ls.text_node('class Test'),
            ls.insert_node(1, 'ClassName'),
            ls.text_node('(unittest.TestCase):')
        }),
        ls.snippet({
            trig='class', name='class', descr='class'
        }, 
        {
            ls.text_node('class '),
            ls.insert_node(1, 'Class Name'),
            ls.text_node('('),
            ls.insert_node(2, 'object'),
            ls.text_node('):')
        }),
        ls.snippet({
            trig='fn', name='function', descr='function'
        }, 
        {
            ls.text_node('def '),
            ls.insert_node(1, 'func_name'),
            ls.text_node('(self'),
            ls.insert_node(2, 'args'),
            ls.text_node(') -> '),
            ls.insert_node(3, 'return_val'),
            ls.text_node(':')
        }),
        ls.snippet({
            trig='init', name='initfunction', descr='init function'
        }, 
        {
            ls.text_node('def __init__(self'),
            ls.insert_node(1, 'args'),
            ls.text_node(') -> None:'),
        }),
        ls.snippet({
            trig='test', name='testfunction', descr='test function'
        }, 
        {
            ls.text_node('def test_'),
            ls.insert_node(1, 'func_name'),
            ls.text_node({'(self):', '\tpass', ''})
        }),
        ls.snippet({
            trig='ae', name='assertequal', descr='assert equal'
        }, 
        {
            ls.text_node('self.assertEqual('),
            ls.insert_node(1, 'expected_value'),
            ls.text_node(', '),
            ls.insert_node(2, 'func_call'),
            ls.text_node(')')
        }),
        ls.snippet({
            trig='ai', name='assertinstance', descr='assert instance'
        }, 
        {
            ls.text_node('self.assertIsInstance('),
            ls.insert_node(1, 'object'),
            ls.text_node(', '),
            ls.insert_node(2, 'class'),
            ls.text_node(')')
        }),
        ls.snippet({
            trig='at', name='asserttrue', descr='assert true'
        }, 
        {
            ls.text_node('self.assertTrue('),
            ls.insert_node(1, 'func_call'),
            ls.text_node(')')
        }),
        ls.snippet({
            trig='af', name='assertfalse', descr='assert false'
        }, 
        {
            ls.text_node('self.assertFalse('),
            ls.insert_node(1, 'func_call'),
            ls.text_node(')')
        }),
        ls.snippet({
            trig='utm', name='unittest.main', descr='unittest main call'
        }, 
        {
            ls.text_node({'if __name__ == \'__main__\':', 'unittest.main()'})
        })
})
