#!groovy
def connectionstring

pipeline {
    agent{label 'Term01'}

    environment {
        Storage = credentials('ci_bot')
    }
    
    stages {
        stage("Обновление тестового контура") {
            steps {
               timestamps  {
                   script{connectionstring  = "\"/S${env.Server1C}\\${env.Database1C}\""}                   
                   cmd("deployka session kill -ras ${env.Server1C} -db ${env.Database1C} -lockuccode \"123\"")
                   cmd("deployka loadrepo ${connectionstring}  ${env.StoragePath} -storage-user ${env.storage_Usr} -storage-pwd ${env.Storage_Psw}")
                   cmd("deployka dbupdate ${connectionstring} -allow-warnings -uccode \"123\"")
                    }
            }
        }
    }
}

def cmd(command) {
    // при запуске Jenkins не в режиме UTF-8 нужно написать chcp 1251 вместо chcp 65001
    bat "chcp 65001\n${command}"
}