This environment simulates running prettier-install in a project using eslint
with json configuration.

### Updates .eslintrc.json

Configuration options used in original [`.eslintrc.json`](files/.eslintrc.json)
must be preserved after modification.

### Handles conflicts

Source code in [`src/index.js`](files/src/index.js) is fabricated to introduce
conflict between eslint and prettier. Eslint uses google style guide which
expects strings to be denoted by single quotes, while prettier expects double
quotes.

`eslint-config-prettier` introduced into configuration is supposed to silence
this rule, among others. Expected behavior can be verified by attempting to run
`npm run prettier && npm run eslint .`


### Makes eslint use prettier for inspection

`eslint-plugin-prettier` makes eslint use prettier for its inspections. Correct
behavior can be verified by running `npm run eslint .` after reintroducing
overly long line to [`src/index.js`](files/src/index.js)
