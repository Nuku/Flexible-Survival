-- ToME - Tales of Middle-Earth
-- Copyright (C) 2009, 2010, 2011, 2012, 2013 Nicolas Casalini
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- Nicolas Casalini "DarkGod"
-- darkgod@te4.org

return function(gen, id)
	local w = rng.range(5, 12)
	local h = rng.range(5, 12)
	return { name="simple"..w.."x"..h, w=w, h=h, generator = function(self, x, y, is_lit)
		for i = 1, self.w do
			for j = 1, self.h do
				if i == 1 or i == self.w or j == 1 or j == self.h then
					gen.map.room_map[i-1+x][j-1+y].can_open = true
					gen.map(i-1+x, j-1+y, Map.TERRAIN, gen.grid_list[gen:resolve('#')])
				else
					gen.map.room_map[i-1+x][j-1+y].room = id
					gen.map(i-1+x, j-1+y, Map.TERRAIN, gen.grid_list[gen:resolve('.')])
				end
				if is_lit then gen.map.lites(i-1+x, j-1+y, true) end
			end
		end
	end}
end
