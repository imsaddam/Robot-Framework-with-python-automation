*** Variables ***
@{mammals}    Horse    Tiger    Lion    Snake
@{birds}    Parrots    Owls    Bluebirds    Sparrows

${user1}    Jon
${user2}    Kelly
${user3}    Chodna


*** Test Cases ***
Loop over list
    Log To Console    Four mammals:
    FOR   ${var}    IN    @{mammals}
        Log To Console    ${var}
    END

Loop over two lists after each other
    Log To Console    Four mammals & four birds:
    FOR   ${var}    IN    @{mammals}    @{birds}
        Log To Console    ${var}
    END

Loop over multiple values
    Log To Console    Four users:
    FOR   ${var}    IN    ${user1}    ${user2}    ${user3}    Jon
        Log To Console    ${var}
    END