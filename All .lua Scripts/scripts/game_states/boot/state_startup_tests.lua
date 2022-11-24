require("scripts/game_states/boot/state_boot_sub_state_base")

local StateStartupTests = class("StateStartupTests", "StateBootSubStateBase")

function StateStartupTests:on_enter(...)
	StateStartupTests.super.on_enter(self, ...)

	local state_params = self:_state_params()
	local tests = state_params.tests

	self:_run_tests(tests)
end

function StateStartupTests:_run_tests(tests)
	for i = 1, #tests do
		local test_path = tests[i]
		local test_func = require(test_path)
		local success, error_msg = test_func()

		print(string.format("[StateStartupTests] Startup test %q success", test_path))
	end
end

function StateStartupTests:_state_update(dt)
	return true, false
end

return StateStartupTests
