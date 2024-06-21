os.execute("chcp 65001")
print("=======================")

local letters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"!", "@", "#", "$", "%", "&", "*", "(", ")", "/", "?", ".", ",", ">", "<", ";", ":", "°", "ª", "=", "+", "_", "-", }
local CharacterLists = {
    letters,
    numbers,
    specials
}

print("Quantos caracteres deseja na senha")
local lenght = io.read("*n")

 local password = ""
 for i = 1, lenght, 1 do


    local ListIndex = math.random(#CharacterLists)
local list = CharacterLists[ListIndex]



    local CharacterIndex = math.random(#list)
    local char = list[CharacterIndex]
    
    password = password .. char
 end

 print("Sua senha:")
 print(password)