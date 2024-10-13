Config = {}

Config.Item = {
    remoteItem = "distancionno",
}

Config.Menu = 'ox_lib' -- Choose from ox_lib or qb-menu

Config.Notify = {
    currentLanguage = 'en',
    displayTime     = 5000,
    Languages = {
        en = {
            successType    = 'success',
            errorType      = 'error',
            successMessage = 'The headlight color has been changed to %s',
            errorMessage   = 'You are not in a vehicle or in the driver\'s seat',
            invalidColorMessage = 'Invalid color ID',
            invalidLangMessage = 'Language configuration is invalid',
            menuConfigMessage = 'Menu configuration is not set',
            menuHeader     = 'Headlight Colors',
            chooseMessage  = "Choose %s color",
            headlightColors = {
                white          = { name = "White",          id = 0 },
                blue           = { name = "Blue",           id = 1 },
                electricBlue   = { name = "Electric Blue",  id = 2 },
                mintGreen      = { name = "Mint Green",     id = 3 },
                limeGreen      = { name = "Lime Green",     id = 4 },
                yellow         = { name = "Yellow",         id = 5 },
                gold           = { name = "Gold",           id = 6 },
                orange         = { name = "Orange",         id = 7 },
                red            = { name = "Red",            id = 8 },
                pink           = { name = "Pink",           id = 9 },
                brightPink     = { name = "Bright Pink",    id = 10 },
                purple         = { name = "Purple",         id = 11 },
            },
        },
        bg = {
            successType    = 'success',
            errorType      = 'error',
            successMessage = 'Цветът на фаровете е променен на %s',
            errorMessage   = 'Не сте в автомобил или не седите на шофьорското място',
            invalidColorMessage = 'Невалиден идентификатор на цвета',
            invalidLangMessage = 'Конфигурацията на езика е невалидна',
            menuConfigMessage = 'Конфигурацията на менюто не е зададена',
            menuHeader     = 'Цветове на фаровете',
            chooseMessage  = "Изберете %s цвят",
            headlightColors = {
                white          = { name = "Бял",           id = 0 },
                blue           = { name = "Син",           id = 1 },
                electricBlue   = { name = "Електрически син", id = 2 },
                mintGreen      = { name = "Ментово зелен",  id = 3 },
                limeGreen      = { name = "Лайм зелено",    id = 4 },
                yellow         = { name = "Жълт",          id = 5 },
                gold           = { name = "Златен",        id = 6 },
                orange         = { name = "Оранжев",       id = 7 },
                red            = { name = "Червен",        id = 8 },
                pink           = { name = "Розов",         id = 9 },
                brightPink     = { name = "Ярко розов",    id = 10 },
                purple         = { name = "Лилав",         id = 11 },
            },
        }
    },
}