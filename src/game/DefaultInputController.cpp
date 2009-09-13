#include "DefaultInputController.h"
#include "Entity.h"
#include "EntityEvent.h"
#include "Positioner.h"

#include "../input/InputManager.h"
using namespace jvgs::input;

#include "../tinyxml/tinyxml.h"

using namespace jvgs::math;

using namespace std;

namespace jvgs
{
    namespace game
    {
        void DefaultInputController::loadData(TiXmlElement *element)
        {
            element->QueryFloatAttribute("minjumpdelay", &minJumpDelay);
            element->QueryFloatAttribute("jumpforce", &jumpForce);
        }

        DefaultInputController::DefaultInputController(Entity *entity)
                : InputController(entity)
        {
            /* Some defaults. */
            minJumpDelay = 200.0f;
            jumpForce = 50.0f;
            jumpDelay = 0.0f;
        }

        DefaultInputController::DefaultInputController(Entity *entity,
                TiXmlElement *element): InputController(entity)
        {
            jumpDelay = 0.0f;
            load(element);
        }

        DefaultInputController::~DefaultInputController()
        {
        }

        void DefaultInputController::affect(float ms)
        {
            Entity *entity = getEntity();
            Vector2D velocity = entity->getVelocity();
            Positioner *positioner = entity->getPositioner();

            /** In a jump. */
            if(jumpDelay > 0.0f)
                jumpDelay -= ms;

            /** Can start a jump. */
            if(!entity->isFalling() && isKeyDown(KEY_SPACE) &&
                    jumpDelay <= 0.0f) {
                jumpDelay = minJumpDelay;
                if(positioner)
                    velocity += positioner->getGravity() * -1.0f * jumpForce;
            }

            velocity.setX(isKeyDown(KEY_LEFT) ? -entity->getSpeed() : 0.0f);
            velocity.setX(isKeyDown(KEY_RIGHT) ? entity->getSpeed() :
                    velocity.getX());

            entity->setVelocity(velocity);
        }

        void DefaultInputController::setMinJumpDelay(float minJumpDelay)
        {
            this->minJumpDelay = minJumpDelay;
        }

        void DefaultInputController::setJumpForce(float jumpForce)
        {
            this->jumpForce = jumpForce;
        }
    }
}