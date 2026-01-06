--[[
  
]]

Config = {}

-------------------------------------------------
-- GENERAL SETTINGS
-------------------------------------------------
Config.Debug = false
Config.EnableBlip = true
Config.WhistleWait = 10000

-------------------------------------------------
-- PET LIFESPAN SETTINGS
-------------------------------------------------
Config.PetLifespan = 2 * 30 * 24 * 60 * 60 -- 2 months in seconds (real time)
Config.HungerDecayRate = 5 -- Hunger decreases by 5 every interval
Config.HungerCheckInterval = 2 * 60 * 60 * 1000 -- 2 hours in milliseconds (IRL time)

-------------------------------------------------
-- PET FOOD ITEMS
-- hunger: amount of hunger restored
-- health: amount of health restored
-- Items must exist in rsg-core/shared/items.lua
-------------------------------------------------
Config.PetFood = {
    -- Basic Food
    ['bread'] = { label = 'Bread', hunger = 15, health = 5 },
    ['stew'] = { label = 'Stew', hunger = 40, health = 20 },
    
    -- Raw Meat
    ['raw_meat'] = { label = 'Raw Meat', hunger = 25, health = 10 },
    
    -- Fish (all sizes)
    ['a_c_fishbluegil_01_ms'] = { label = 'Blue Gil (M)', hunger = 20, health = 8 },
    ['a_c_fishbluegil_01_sm'] = { label = 'Blue Gil (S)', hunger = 15, health = 5 },
    ['a_c_fishbullheadcat_01_ms'] = { label = 'Bullhead Cat (M)', hunger = 20, health = 8 },
    ['a_c_fishbullheadcat_01_sm'] = { label = 'Bullhead Cat (S)', hunger = 15, health = 5 },
    ['a_c_fishchainpickerel_01_ms'] = { label = 'Chain Pickerel (M)', hunger = 20, health = 8 },
    ['a_c_fishchainpickerel_01_sm'] = { label = 'Chain Pickerel (S)', hunger = 15, health = 5 },
    ['a_c_fishchannelcatfish_01_lg'] = { label = 'Channel Catfish (L)', hunger = 30, health = 12 },
    ['a_c_fishchannelcatfish_01_xl'] = { label = 'Channel Catfish (XL)', hunger = 35, health = 15 },
    ['a_c_fishlakesturgeon_01_lg'] = { label = 'Lake Sturgeon (L)', hunger = 30, health = 12 },
    ['a_c_fishlargemouthbass_01_lg'] = { label = 'Large Mouth Bass (L)', hunger = 30, health = 12 },
    ['a_c_fishlargemouthbass_01_ms'] = { label = 'Large Mouth Bass (M)', hunger = 20, health = 8 },
    ['a_c_fishlongnosegar_01_lg'] = { label = 'Long Nose Gar (L)', hunger = 30, health = 12 },
    ['a_c_fishmuskie_01_lg'] = { label = 'Muskie (L)', hunger = 30, health = 12 },
    ['a_c_fishnorthernpike_01_lg'] = { label = 'Northern Pike (L)', hunger = 30, health = 12 },
    ['a_c_fishperch_01_ms'] = { label = 'Perch (M)', hunger = 20, health = 8 },
    ['a_c_fishperch_01_sm'] = { label = 'Perch (S)', hunger = 15, health = 5 },
    ['a_c_fishrainbowtrout_01_lg'] = { label = 'Rainbow Trout (L)', hunger = 30, health = 12 },
    ['a_c_fishrainbowtrout_01_ms'] = { label = 'Rainbow Trout (M)', hunger = 20, health = 8 },
    ['a_c_fishredfinpickerel_01_ms'] = { label = 'Red Fin Pickerel (M)', hunger = 20, health = 8 },
    ['a_c_fishredfinpickerel_01_sm'] = { label = 'Red Fin Pickerel (S)', hunger = 15, health = 5 },
    ['a_c_fishrockbass_01_ms'] = { label = 'Rock Bass (M)', hunger = 20, health = 8 },
    ['a_c_fishrockbass_01_sm'] = { label = 'Rock Bass (S)', hunger = 15, health = 5 },
    ['a_c_fishsalmonsockeye_01_lg'] = { label = 'Salmon Sockeye (L)', hunger = 30, health = 12 },
    ['a_c_fishsalmonsockeye_01_ml'] = { label = 'Salmon Sockeye (ML)', hunger = 25, health = 10 },
    ['a_c_fishsalmonsockeye_01_ms'] = { label = 'Salmon Sockeye (M)', hunger = 20, health = 8 },
    ['a_c_fishsmallmouthbass_01_lg'] = { label = 'Small Mouth Bass (L)', hunger = 30, health = 12 },
    ['a_c_fishsmallmouthbass_01_ms'] = { label = 'Small Mouth Bass (M)', hunger = 20, health = 8 },
    
    -- Fruits/Vegetables (pets can eat these too)
    ['carrot'] = { label = 'Carrot', hunger = 10, health = 5 },
    ['corn'] = { label = 'Corn', hunger = 10, health = 5 },
    ['potato'] = { label = 'Potato', hunger = 10, health = 5 },
}

-------------------------------------------------
-- BLIP SETTINGS
-------------------------------------------------
Config.Blip = {
    blipName = 'Pet Shop',
    blipSprite = 1475879922,
    blipScale = 0.2
}

-------------------------------------------------
-- UI THEME SETTINGS (Wild West)
-------------------------------------------------
Config.UI = {
    primaryColor = '#3d2914',       -- Dark brown
    secondaryColor = '#c9a959',     -- Gold/brass
    backgroundColor = '#f4e4c1',    -- Aged parchment
    textColor = '#2c1810',          -- Dark sepia
    accentColor = '#8b4513',        -- Saddle brown
}

-------------------------------------------------
-- PET REGISTRY
-- All pets are defined here with their properties
-- type: "dog" or "cat"
-------------------------------------------------
Config.Pets = {
    -- DOGS
    ['foxhound'] = {
        name = 'foxhound',
        label = 'American Foxhound',
        model = 'A_C_DogAmericanFoxhound_01',
        type = 'dog',
        price = 650,
        description = 'A loyal hound with a keen nose for tracking.',
        image = 'animal_dog_americanfoxhound.png',
        skin = 0
    },
    ['sheperd'] = {
        name = 'sheperd',
        label = 'Australian Shepherd',
        model = 'A_C_DogAustralianSheperd_01',
        type = 'dog',
        price = 900,
        description = 'An intelligent herding dog, quick and agile.',
        image = 'animal_dog_australianshepherd.png',
        skin = 0
    },
    ['coonhound'] = {
        name = 'coonhound',
        label = 'Bluetick Coonhound',
        model = 'A_C_DogBluetickCoonhound_01',
        type = 'dog',
        price = 700,
        description = 'Expert tracker with a distinctive howl.',
        image = 'animal_dog_bluetickcoonhound.png',
        skin = 0
    },
    ['catahoulacur'] = {
        name = 'catahoulacur',
        label = 'Catahoula Cur',
        model = 'A_C_DogCatahoulaCur_01',
        type = 'dog',
        price = 950,
        description = 'Versatile working dog from Louisiana.',
        image = 'animal_dog_catahoularcur.png',
        skin = 0
    },
    ['bayretriever'] = {
        name = 'bayretriever',
        label = 'Chesapeake Bay Retriever',
        model = 'A_C_DogChesBayRetriever_01',
        type = 'dog',
        price = 1100,
        description = 'Excellent swimmer and retriever.',
        image = 'animal_dog_chesbayretriever.png',
        skin = 0
    },
    ['collie'] = {
        name = 'collie',
        label = 'Border Collie',
        model = 'A_C_DogCollie_01',
        type = 'dog',
        price = 1000,
        description = 'The smartest of all dog breeds.',
        image = 'animal_dog_collie.png',
        skin = 0
    },
    ['hound'] = {
        name = 'hound',
        label = 'Hound Dog',
        model = 'A_C_DogHound_01',
        type = 'dog',
        price = 600,
        description = 'Classic hunting companion.',
        image = 'animal_dog_hound.png',
        skin = 0
    },
    ['husky'] = {
        name = 'husky',
        label = 'Siberian Husky',
        model = 'A_C_DogHusky_01',
        type = 'dog',
        price = 1400,
        description = 'Strong and tireless sled dog.',
        image = 'animal_dog_husky.png',
        skin = 0
    },
    ['lab'] = {
        name = 'lab',
        label = 'Labrador Retriever',
        model = 'A_C_DogLab_01',
        type = 'dog',
        price = 800,
        description = 'Friendly family companion.',
        image = 'animal_dog_lab.png',
        skin = 0
    },
    ['poodle'] = {
        name = 'poodle',
        label = 'Poodle',
        model = 'A_C_DogPoodle_01',
        type = 'dog',
        price = 1200,
        description = 'Elegant and intelligent breed.',
        image = 'animal_dog_poodle.png',
        skin = 0
    },
    ['street'] = {
        name = 'street',
        label = 'Street Mutt',
        model = 'A_C_DogStreet_01',
        type = 'dog',
        price = 400,
        description = 'Tough survivor of the streets.',
        image = 'animal_dog_street.png',
        skin = 0
    },
    ['rufus'] = {
        name = 'rufus',
        label = 'Rufus',
        model = 'A_C_DogRufus_01',
        type = 'dog',
        price = 450,
        description = 'A reliable and sturdy farm dog.',
        image = 'animal_dog_rufus.png',
        skin = 0
    },
    ['lionpoodle'] = {
        name = 'lionpoodle',
        label = 'Lion Poodle',
        model = 'A_C_DogLion_01',
        type = 'dog',
        price = 1500,
        description = 'Fancy, groomed, and full of character.',
        image = 'animal_dog_lionpoodle.png',
        skin = 0
    },
    ['fox'] = nil, -- 
    ['raccoon'] = nil, --
    -- CATS
    ['tabbycat'] = {
        name = 'tabbycat',
        label = 'Tabby Cat',
        model = 'A_C_Cat_01',
        type = 'cat',
        price = 450,
        description = 'Common but lovable barn cat.',
        image = 'animal_cat_tabby.png',
        skin = 0
    },
    
    --


-------------------------------------------------
-- SHOP LOCATIONS
-- NPC will spawn at this location for third-eye interaction
-------------------------------------------------
Config.PetShopLocations = {
    {
        name = 'Pet Shop',
        shopname = 'main-pets',
        coords = vector3(-330.7, 738.4, 117.2),
        heading = 180.0,
        showblip = true,
        npcModel = 'u_m_m_valgenstoreowner_01'
    },
}

-------------------------------------------------
-- PET BEHAVIOR SETTINGS
-------------------------------------------------
Config.PetBehavior = {
    followingRange = 4.0,
    wanderingRange = 10.0,
    smellingRange = 60.0,
    playerRange = 1.2,
}

-------------------------------------------------
-- LOCALE (Change to your language file)
-------------------------------------------------
Config.Locale = 'en'

-------------------------------------------------
-- LOCALIZATION STRINGS
-------------------------------------------------
Locales = {
    ['en'] = {
        -- Shop UI
        ['shop_title'] = "Pet Shop",
        ['shop_subtitle'] = "Animal Companions",
        ['category_dogs'] = "Dogs",
        ['category_cats'] = "Cats",
        ['btn_purchase'] = "Purchase",
        ['btn_close'] = "Close",
        ['price_label'] = "Price",
        
        -- Notifications
        ['pet_called'] = "Your %s comes running!",
        ['pet_dismissed'] = "Sent your pet to the kennel.",
        ['no_pet'] = "You don't have this pet!",
        ['pet_already_out'] = "You already have a pet out!",
        ['purchase_success'] = "Purchased %s for $%d!",
        ['purchase_failed'] = "Not enough money!",
        
        -- Commands
        ['cmd_whistle'] = "Whistle",
        ['cmd_stay'] = "Stay",
        ['cmd_follow'] = "Follow",
        ['cmd_sit'] = "Sit",
        ['cmd_dismiss'] = "Dismiss",
        
        -- Prompts
        ['prompt_shop'] = "Open Pet Shop",
    }
}

-- Helper function to get locale string
function _L(key)
    local locale = Config.Locale or 'en'
    if Locales[locale] and Locales[locale][key] then
        return Locales[locale][key]
    elseif Locales['en'] and Locales['en'][key] then
        return Locales['en'][key]
    end
    return key
end
