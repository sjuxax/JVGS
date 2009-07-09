#ifndef JVGS_GAME_COLLISIONRESPONDER_H
#define JVGS_GAME_COLLISIONRESPONDER_H

#include "../sketch/Sketch.h"
#include "../sketch/Group.h"
#include "../sketch/Path.h"
#include "../math/LineSegment.h"
#include "../math/MathManager.h"
#include "../math/AffineTransformationMatrix.h"
#include <vector>

namespace jvgs
{
    namespace game
    {
        class LineSelector;
        class Entity;

        class CollisionResponder
        {
            private:
                Entity *entity;

                math::AffineTransformationMatrix toEllipseSpace,
                        fromEllipseSpace;

                /** Segments in ellipse space. */
                std::vector<math::LineSegment*> segments;

                /** MathManager to perform calculations. */
                math::MathManager *mathManager;

            public:
                CollisionResponder(Entity *entity, sketch::Sketch *sketch);
                virtual ~CollisionResponder();

                /** Add lines from a sketch group.
                 *  @param group Group to add the lines from.
                 */
                virtual void addLinesFromGroup(sketch::Group *group);

                /** Divide a path into lines and add the lines
                 *  to this selector.
                 *  @param path Path to add the lines from.
                 */
                virtual void addLinesFromPath(sketch::Path *path);

                virtual void update(float ms);

                /** Get the first point at which an entity will collide
                 *  with the world.
                 *  @param ms Milliseconds the entity can be moved.
                 *  @param collision Will contain the exact collision point.
                 *  @param time Will contain the exact collision time.
                 *  @return The LineSegment the entity collided with.
                 */
                virtual math::LineSegment *closestCollision(float ms,
                        math::Vector2D *collision, float *time);

            protected:
                /** Checks if a collision occurs between a moving unit circle
                 *  and a point.
                 *  @param position Initial position of the unit circle.
                 *  @param velocity Velocity of the unit circle.
                 *  @param point Point to check collision against.
                 *  @param treshold Check only the time frame before treshold.
                 *  @param time Will contain the exact collision time.
                 *  @param collision Will contain the exact collision point.
                 *  @return If there was a collision.
                 */
                bool pointCollision(const math::Vector2D &position,
                        const math::Vector2D &velocity,
                        const math::Vector2D &point, float treshold,
                        float *time, math::Vector2D *collision) const;
        };
    }
}

#endif