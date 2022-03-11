*** Settings ***
Resource        base.robot

Test Setup       Nova sessão
Test Teardown    Encerra sessão

*** Variables ***
${url}            https://training-wheels-protocol.herokuapp.com/
${check_thor}     id:thor
${check_iron}     CSS:input[value='iron-man']
${check_panther}  xpath://*['checkboxes']/input[7]  

*** Test Cases ***
Marcando opção com Id
   Go To                          ${url}/checkboxes
   Select Checkbox                ${check_thor}
   Checkbox Should Be Selected    ${check_thor}

Marcando opção com CSS 
   Go To                          ${url}/checkboxes
   Select Checkbox                ${check_iron}
   Checkbox Should Be Selected    ${check_iron}

Marcando opção com Xpath
   [tags]  ironman
   
   Go To                          ${url}/checkboxes
   Select Checkbox                ${check_panther}
   Checkbox Should Be Selected    ${check_panther}

