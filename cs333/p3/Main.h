header Main

  uses System, Thread, Synch

  functions
    main ()
    testBarber()
    get_haircut()
    cut_hair()
    barber(waitTime: int)
    customer(waitTime: int)
    loopWait(waitTime: int)

  class GameParlor
    superclass Object
    fields
      numberDiceAvail: int
      lobbyCondition:  Condition
      gmutex:          Mutex
      diceCountMutex:  Mutex
    methods
      Init ()
      Request (numNeeded: int)
      Return (numReturned: int)
      Print (str: String, count: int)
  endClass



endHeader
