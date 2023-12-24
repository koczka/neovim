-- import comment plugin safely
local setup, tint = pcall(require, "tint")
if not setup then
	print("Tint not found")
	return
end

-- enable comment
tint.setup()
