# RSG-Pets: 

A comprehensive and interactive pet system for RedM (RSG Framework), allowing players to buy, own, name, and care for a variety of domestic dogs and cats.

## 🌟 Features

*   **Inventory Integration**: Pets are items in your inventory! You can own multiple pets. Use the item to summon your companion.
*   **Pet Shop UI**: Beautiful, interactive NUI for purchasing pets with custom icons.
*   **Persistent Naming**: Name your pet! The name is saved to the item itself, so your "Rufus" stays "Rufus" forever.
*   **Needs System**: Pets get hungry and lose health. Feed them to keep them happy.
*   **Interactions (Third-Eye)**:
    *   ❤️ **Pet**: Show some love.
    *   ✋ **Stay**: Tell your pet to wait at a location.
    *   🚶 **Follow**: Call your pet to your side.
    *   🛏️ **Rest**: Have your pet lay down/sleep.
    *   📊 **Status**: Check health, hunger, and age.
    *   🍗 **Feed**: Open a menu to feed your pet specific food items.
    *   🖊️ **Rename**: Give your friend a unique name.
    *   🚪 **Flee**: Dismiss your pet (despawn) back to the "ether" (it remains in your inventory).
*   **Consistent Appearance**: Pets spawn with fixed coat colors—no more random changing identities!
*   **Smart AI**: Pets follow you, relax when you stop, and can be whistled for if they get lost.

## 📋 Dependencies

*   `rsg-core`
*   `rsg-inventory`
*   `rsg-target`
*   `ox_lib`

## 🛠️ Installation

1.  **Download & Install**:
    *   Place `rsg-pets` into your `resources` directory.
    *   Add `ensure rsg-pets` to your `server.cfg`.

2.  **Add Items**:
    *   Add the following items to your `rsg-core/shared/items.lua` (or database):

    ```lua
    -- Pet Items
    ['foxhound'] = {['name'] = 'foxhound', ['label'] = 'American Foxhound', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_americanfoxhound.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A loyal hound.'},
    ['sheperd'] = {['name'] = 'sheperd', ['label'] = 'Australian Shepherd', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_australianshepherd.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'An intelligent herder.'},
    ['coonhound'] = {['name'] = 'coonhound', ['label'] = 'Bluetick Coonhound', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_bluetickcoonhound.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Expert tracker.'},
    ['catahoulacur'] = {['name'] = 'catahoulacur', ['label'] = 'Catahoula Cur', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_catahoularcur.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Versatile working dog.'},
    ['bayretriever'] = {['name'] = 'bayretriever', ['label'] = 'Chesapeake Retriever', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_chesbayretriever.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Excellent swimmer.'},
    ['collie'] = {['name'] = 'collie', ['label'] = 'Border Collie', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_collie.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Smartest dog breed.'},
    ['hound'] = {['name'] = 'hound', ['label'] = 'Hound Dog', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_hound.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Classic hunter.'},
    ['husky'] = {['name'] = 'husky', ['label'] = 'Husky', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_husky.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Strong sled dog.'},
    ['lab'] = {['name'] = 'lab', ['label'] = 'Labrador', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_lab.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Friendly companion.'},
    ['poodle'] = {['name'] = 'poodle', ['label'] = 'Poodle', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_poodle.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Elegant breed.'},
    ['street'] = {['name'] = 'street', ['label'] = 'Street Mutt', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_street.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Tough survivor.'},
    ['rufus'] = {['name'] = 'rufus', ['label'] = 'Rufus', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_rufus.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Reliable farm dog.'},
    ['lionpoodle'] = {['name'] = 'lionpoodle', ['label'] = 'Lion Poodle', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_dog_lionpoodle.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Fancy groomed poodle.'},
    ['tabbycat'] = {['name'] = 'tabbycat', ['label'] = 'Tabby Cat', ['weight'] = 0, ['type'] = 'item', ['image'] = 'animal_cat_tabby.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Lovable barn cat.'},
    
    -

3.  **Images**:
    *   Ensure all pet images (found in `html/img/`) are also copied to `rsg-inventory/html/images/`.

## ⚙️ Configuration

Check `config.lua` to customize:
*   **Pets**: Define breeds, prices, models, descriptions, and **skins** (set `skin = 0` to fix colors).
*   **Pet Shop Locations**: Move the NPC and shop interaction zone.
*   **Pet Behavior**: Adjust follow distance, wandering radius, etc.
*   **Pet Food**: Define what items can be fed to pets and how much they restore.

## 🎮 Usage

*   **Buying**: Visit the Pet Shop (blip on map) and talk to the NPC.
*   **Summoning**: Use the pet item in your inventory.
*   **Dismissing**: Target your pet (Left Alt) and select **"Flee"**.
*   **Interacting**: Target your pet to see all options (Feed, Rename, Stay, etc.).

## 📝 Commands

*   `/petwhistle` - Call your active pet to your current location (if they are spawned).
*   `/petdismiss` - Emergency command to despawn your active pet.

## 🐛 Troubleshooting

*   **Floating NPC**: Ensure `SpawnShopNPC` has valid ground snapping logic (already fixed in `client.lua`).
*   **Random Colors**: Ensure `skin = 0` is set in `config.lua` for each pet (already fixed).
*   **Missing Images**: Ensure images are in BOTH `rsg-pets/html/img/` AND `rsg-inventory/html/images/`.

---
*Created for RedM RSG Framework*
