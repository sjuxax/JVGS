INCLUDE_DIRECTORIES(
    ${SDL_INCLUDE_DIR}
)

ADD_LIBRARY( 
    game STATIC 
    AbstractCamera.cpp
    AbstractEntity.cpp
    Affector.cpp
    Animation.cpp
    BullController.cpp
    Camera.cpp
    CameraFactory.cpp
    CollisionDestroyPositioner.cpp
    CollisionResponsePositioner.cpp
    Controller.cpp
    DefaultInputController.cpp
    Entity.cpp
    EntityEvent.cpp
    EntityEventManager.cpp
    FlyStraightController.cpp
    FollowCamera.cpp
    InputController.cpp
    NaivePositioner.cpp
    PatrollingController.cpp
    Positioner.cpp
    SillyController.cpp
    SimpleBirdController.cpp
    SimpleCamera.cpp
    Sprite.cpp
    Level.cpp
    LevelManager.cpp
)

TARGET_LINK_LIBRARIES(
    game input
)
