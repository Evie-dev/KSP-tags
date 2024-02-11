// this is here to show you how to interface a developer part tag with a kOS part if you wish to do something highly specific
// as mentioned in the repo, this is public domain code, therefore you can place it wherever you wish

// a function to use for part finding, returns a list
// Recomended use:

// at the start of a program


// part finder can also return a dictionary (lexicon) of items if you input a LIST of developer parts to find
// likewise it functions exactly like ship:getpartstagged(partTag)
FUNCTION partFinder {
    parameter developerTag.
    local returnInformation is LIST().
    IF developerTag:istype("List") {
        set returnInformation to LEXICON().
        FOR i in developerTag {
            returnInformation:add(i, partFinder(i)).
        }
        return returnInformation.
    }
    FOR i in SHIP:PARTS {
        IF i:hasmodule("ModuleDeveloperPartTag") {
            IF i:getmodule("ModuleDeveloperPartTag"):getfield("PartTag") = developerTag { returnInformation:add(i). }
        }
    }
    return returnInformation.
}