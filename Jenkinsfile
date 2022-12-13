pipeline {
    agent any
    stages("build") {
        steps {
            echo 'building the application'
        }
    }
    stages("test") {
        when {
            expression {
                BRANCH_NAME == 'dev'
            }
        }
        steps {
            echo 'building the application'
        }
    }
    
    
    
}
