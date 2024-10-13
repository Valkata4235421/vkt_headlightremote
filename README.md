# Introduction to the Headlight Remote Script

## 📺 PREVIEW
[Watch the Headlight Remote Script in action!](https://youtu.be/lIc92fk6ii0?si=liuKr8cC-NdMNEku)

## Overview

Welcome to the **Headlight Remote Script**! This script allows players to change the headlight color of their vehicles easily using a remote control item. You can customize your vehicle’s aesthetics with a variety of vibrant colors.

## Dependencies

This script requires the following resources:
- **qb-core:** The core framework for QBCore resources.
- **qb-inventory:** The inventory management system for handling items.
- **qb-menu:** (Optional if you want to use `qb-menu`)
- **ox_lib:** (Optional if you want to use `ox_lib`)

## Item Details

The remote control item is defined as follows:
```lua
['distancionno'] = {
    ['name'] = 'distancionno',
    ['label'] = 'Remote for colored headlights',
    ['weight'] = 100,
    ['type'] = 'item',
    ['image'] = 'distancionno.png',
    ['unique'] = true,
    ['useable'] = true,
    ['shouldClose'] = true,
    ['description'] = ''
},
```

## Features

- **Headlight Color Change:** Players can change their vehicle's headlights to various colors such as White, Blue, Electric Blue, Mint Green, and many more.
- **User-Friendly Menu:** The script provides an intuitive menu for selecting headlight colors, compatible with both `qb-menu` and `ox_lib`.
- **Multi-Language Support:** The script supports multiple languages, allowing for a personalized experience based on the player's preferred language.
- **Notification System:** Players receive feedback notifications after changing the headlight color, confirming success or informing them of any errors.

## How to Use

1. **Acquire the Remote Control:**
   - Obtain the item named `distancionno` in your inventory. This is the remote control used to change headlight colors.

2. **Using the Remote:**
   - While in a vehicle and seated in the driver’s seat, use the remote item to bring up the menu.
   - Select your desired headlight color from the menu.

3. **Supported Colors:**
   - Available colors include:
     - White
     - Blue
     - Electric Blue
     - Mint Green
     - Lime Green
     - Yellow
     - Gold
     - Orange
     - Red
     - Pink
     - Bright Pink
     - Purple

4. **Notifications:**
   - You will receive a notification confirming the color change or alerting you if there was an issue (e.g., not being in the driver’s seat).

## Error Handling

- If you attempt to change the color while not in a vehicle or not in the driver’s seat, you will receive an error message.
- If an invalid color ID is selected, you will be notified of the invalid input.

## Configuration

The script is highly configurable:
- **Item Name:** The remote control item is set to `distancionno` but can be changed in the configuration.
- **Menu Type:** The script can be configured to use either `qb-menu` or `ox_lib` for displaying the color selection menu.
- **Language Support:** The current language can be set to `en` (English) or `bg` (Bulgarian), allowing notifications to appear in the selected language.