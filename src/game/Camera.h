#ifndef JVGS_GAME_CAMERA_H
#define JVGS_GAME_CAMERA_H

#include "../math/BoundedObject.h"

namespace jvgs
{
    namespace game
    {
        /** Abstract camera class.
         */
        class Camera: public math::BoundedObject
        {
            private:
            public:
                /** Constructor.
                 */
                Camera();

                /** Destructor.
                 */
                virtual ~Camera();

                /** Update the camera.
                 *  @param ms Milliseconds to update for.
                 */
                virtual void update(float ms) = 0;

                /** Transform the current matrices so the scene will be rendered
                 *  correctly.
                 */
                virtual void transform() const = 0;
        };
    }
}

#endif
