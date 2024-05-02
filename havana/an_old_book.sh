#!/bin/bash
# open sesame
echo "You carefully put the key into the lock..."

if [ "$(basename "$(pwd)")" != "ship" ]; then
    echo "Are you running this from the ship?"
    echo "The treasure, key, and manual need to be on (in) a directory called 'ship'"
    exit 1
fi

usage() {
    echo "Tresure Chest Opener Manual"
    echo "The lock can be stiff sometimes... Just give it a whack!"
    echo "Your key should be called my_key.txt"
    echo "Your chest should be called this_is_heavy.txt"
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    usage
    exit 0
fi


# Assign file names to variables
file1=my_key.txt
file2=this_is_heavy.txt

# Check if both files exist in the same directory
if [ -f "$file1" ] && [ -f "$file2" ]; then
    echo "The chest creaks open..."
    echo " 
                                                                                                    
                                                                                                    
                        @@@@@   @@@@@@                                                              
                       @@   @@             @@@@@@@@@@                                               
                      @@   @@@@@@@               @@    @ @@@@@@@@ @@                                
                      @  @@            @@@@@@@@   @@                    @@@  @@@@@                  
                        @@@@@@@@@@@@@@     @@     @@@@@@@ @@@         @@   @@    @@                 
                        @@@@      @@@@@@@@@@     @@           @@ @@@@@@   @@ @@@@  @                
                         @ @          @@   @@@  @@@@@@@@@@@@@        @    @@@@   @@@@               
                          @@@          @@                  @ @@@@ @@@@   @@@      @@@@              
                           @@@          @                             @@@@@        @ @              
                           @@@          @                             @@@ @        @@@              
                            @ @         @                              @ @@        @@               
                             @@@       @@                              @@@@        @@@              
                             @@@@      @                               @@@@        @@               
                              @@@      @                                @@@@      @@@               
                              @@@@    @                                 @@@@      @@@               
                               @@@  @@                                  @@@@      @@                
                                @@@@@                                    @@@@    @@@                
                                 @@@ @@@@@@                              @@@@    @@                 
                             @@@@@@@@@ @@@@@  @@@@@@                     @@@@   @@@                 
                         @@@@@@ @   @@@@@@@@@@@@@@@@ @@@@@@@             @@@@@  @@                  
                    @@@@@@@@    @@            @@@@@@@@@@@@@@ @ @@@@@      @ @@ @@                   
                @@@@@@@         @@                    @@@@@@@@@@@@@@@  @@@@@@@@@@                   
           @@@@@@@@@             @                             @@@@@@@@@@@@@@@@@                    
          @@ @@                  @                                    @@@@@ @@                      
         @@ @@@@@@@@@@@          @                                    @@@@@@@@                      
          @ @@@@@    @@@@@@@@@   @                                 @@@@@    @@                      
          @ @@@   @@@@ @ @@@@@@@@@@@@                           @@@@@@   @@ @                       
          @ @@@        @ @@@@ @@@@@@@@@@@@@                   @@@@@  @@@  @ @                       
           @@@@        @ @@@  @  @@@@@@@@@@@@@@@@          @@@@@  @@@    @@ @                       
           @ @@@       @@@@   @@@@  @ @@@@@   @@@@@@@@@@@@@@  @@@         @@@                       
           @ @ @        @@@@         @@@@     @@@@@@  @@@@ @@@           @@@@                       
           @@@ @        @@@@         @ @@@           @ @@@@@             @@@                        
           @@@@@        @@@@         @ @@            @ @ @@              @@@                        
           @  @@ @@@    @ @@         @ @@@           @ @@@@              @@@@                       
           @   @@@   @ @@@@@          @@@@           @ @@@              @@@ @@                      
             @@@   @@@@@   @@@@ @     @@@@           @ @ @           @@ @@  @                       
                        @@@@@   @@@@  @ @@           @@@@         @@@ @@ @@@                        
                              @@@     @@@@           @ @@ @     @@ @@@                              
                                    @@@      @@@@@   @ @ @  @@@ @@@                                 
                                         @@@      @@@@@@@ @@ @@@                                    
                                              @@@@  @  @ @@ @@                                      
                                                  @@@  @@ @@                                        
                                                   @@@  @@@                                         
"
echo "Congratulations!! You found the treasure!"

else
    echo "Hmm... It seems that you don't have the treasure chest and the key... Make sure they are named correctly!"
fi

