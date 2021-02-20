/**
 * @param {object[]} listOfExoPlanet
 * @param {number} minJ
 * @param {number} maxJ
 */
function searchBetweenPlanetMass(listOfExoPlanet, minJ, maxJ) {
    return listOfExoPlanet.filter(({ mass }) => minJ < mass && mass < maxJ)
}

/**
 * @param {object[]} listOfExoplanet
 */
function totalMass(listOfExoplanet) {
    return listOfExoplanet.reduce(
        (accumulator, { mass }) => accumulator + mass,
        0,
    )
}
