--[[--
   acre

	Copyright (c) 2025 - r6915ee

	This library is free software; you can redistribute it and/or modify it
	under the terms of the MIT license. See LICENSE for details.
--]]

local acre = {
	--- The current state.
	state = {},
}

--- Clear the current state and then switch states.
-- Just like the current state table, any states passed
-- in should be in the form of a table; this includes
-- any objects when using the object-oriented paradigm.
-- @param state The state to switch to.
-- @return The current state after switching.
function acre:switchState(state)
	self.state = state

	return self.state
end

--- Pass a callback to the current state.
-- Because acre is supposed to be a framework-independent library,
-- this acts as a shortcut to the current state's respective callback.
-- However, this performs some checks before actually running the
-- callback, specifically whether or not the callback exists and
-- the name isn't allocated to a non-function. Only call the state's
-- function if you know what you are doing.
-- @param callback The actual callback.
-- @param ... The arguments to pass to the callback.
-- @return Whatever the callback returns if the callback is valid;
-- otherwise nil.
function acre:callback(callback, ...)
	if self.state[callback] ~= nil then
		return self.state[callback](self.state, ...)
	end

	return nil
end

return acre
