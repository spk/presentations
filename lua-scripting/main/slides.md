!SLIDE
## Laurent
## @af83
## 2011-12-04

!SLIDE bullets incremental transition=fade
# Intro #

* Procedural
* Prototype based like JavaScript
* Functional
* Portable (From Debian project: alpha amd64 armel armhf hurd-i386 i386 ia64
	kfreebsd-amd64 kfreebsd-i386 m68k mips mipsel powerpc powerpcspe s390
	s390x sparc sparc64)

!SLIDE
# Function

	function hello(name)
		print("Hello " .. name)
	end
	hello('spk')

!SLIDE
# Closure

	c = nil
	function foo()
		x = 0
		c = function()
			x = x + 1
			return x
		end
		x = 1
		print('inside foo, call to c()', c()) -- 2
	end
	foo()
	print('call to c()', c()) -- 3

!SLIDE
# Table

	settings = { name = "1", layout = "awesome", mwfact = 0.70 }
	for k, v in pairs(settings) do
		print(k)
		print(v)
	end
	print(settings.layout)

!SLIDE
# Array

	tags = { 1, 2, 3 }
	table.insert(tags, 4)
	for i = 1, #tags do
		print(tags[i])
	end

!SLIDE
# Namespace

	Screen = {}
	Screen.new = function(h,w)
		return {h = h, w = w}
	end
	s = Screen.new(299, 300)
	print(s.h)
	print(s.w)

!SLIDE
# Object oriented

	Screen = {}
	function Screen:new(h,w)
		local object = {h = h, w = w}
		setmetatable(object, { __index = Screen })  -- Inheritance
		return object
	end
	function Screen:set_h(h)
		if h == nil then
			self.h = 1024
		else
			self.h = h
		end
	end

!SLIDE

# That's all °\o/°
