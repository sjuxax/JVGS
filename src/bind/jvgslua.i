%module jvgslua
%include <std_string.i>

%{
#include "../bind/ScriptManager.h"
#include "../core/DataManager.h"
#include "../core/LogManager.h"
#include "../core/PropertyMap.h"
#include "../core/XMLLoadable.h"
#include "../game/Affector.h"
#include "../game/AffectorFactory.h"
#include "../game/Animation.h"
#include "../game/BullController.h"
#include "../game/Camera.h"
#include "../game/CameraFactory.h"
#include "../game/CollisionResponsePositioner.h"
#include "../game/NaivePositioner.h"
#include "../game/Controller.h"
#include "../game/ControllerFactory.h"
#include "../game/Entity.h"
#include "../game/EntityEvent.h"
#include "../game/FollowCamera.h"
#include "../game/InputController.h"
#include "../game/Level.h"
#include "../game/Positioner.h"
#include "../game/PositionerFactory.h"
#include "../game/SillyController.h"
#include "../game/Sprite.h"
#include "../input/InputManager.h"
#include "../input/Key.h"
#include "../input/KeyListener.h"
#include "../math/AffineTransformationMatrix.h"
#include "../math/BoundedObject.h"
#include "../math/BoundingBox.h"
#include "../math/CollisionDetector.h"
#include "../math/CubicCurve.h"
#include "../math/Curve.h"
#include "../math/Line.h"
#include "../math/LineSegment.h"
#include "../math/MathManager.h"
#include "../math/Matrix.h"
#include "../math/Noise.h"
#include "../math/PathSegment.h"
#include "../math/QuadTree.h"
#include "../math/QuadTreeNode.h"
#include "../math/QuadraticCurve.h"
#include "../math/Vector2D.h"
#include "../sketch/CPathCommandParser.h"
#include "../sketch/Group.h"
#include "../sketch/GroupParser.h"
#include "../sketch/LPathCommandParser.h"
#include "../sketch/MPathCommandParser.h"
#include "../sketch/MatrixTransformCommand.h"
#include "../sketch/Parser.h"
#include "../sketch/Path.h"
#include "../sketch/PathCommandParser.h"
#include "../sketch/PathComponent.h"
#include "../sketch/PathDataParser.h"
#include "../sketch/PathParser.h"
#include "../sketch/QPathCommandParser.h"
#include "../sketch/RotateTransformCommand.h"
#include "../sketch/SPathCommandParser.h"
#include "../sketch/ScaleTransformCommand.h"
#include "../sketch/Sketch.h"
#include "../sketch/SketchElement.h"
#include "../sketch/SketchElementParser.h"
#include "../sketch/SketchElementRenderer.h"
#include "../sketch/SketchManager.h"
#include "../sketch/SkewXTransformCommand.h"
#include "../sketch/SkewYTransformCommand.h"
#include "../sketch/TPathCommandParser.h"
#include "../sketch/TextParser.h"
#include "../sketch/TransformCommand.h"
#include "../sketch/TransformParser.h"
#include "../sketch/TranslateTransformCommand.h"
#include "../sketch/ZPathCommandParser.h"
#include "../video/Color.h"
#include "../video/ListManager.h"
#include "../video/Renderer.h"
#include "../video/VideoManager.h"
using namespace jvgs::core;
using namespace jvgs::input;
using namespace jvgs::game;
using namespace jvgs::video;
using namespace jvgs::math;
using namespace jvgs::sketch;
using namespace jvgs;
%}

%include "../math/Vector2D.h"
%include "../bind/ScriptManager.h"
%include "../core/DataManager.h"
%include "../core/LogManager.h"
%include "../core/XMLLoadable.h"
%include "../core/PropertyMap.h"
%include "../game/Affector.h"
%include "../game/AffectorFactory.h"
%include "../game/Animation.h"
%include "../game/Camera.h"
%include "../game/CameraFactory.h"
%include "../game/Positioner.h"
%include "../game/CollisionResponsePositioner.h"
%include "../game/NaivePositioner.h"
%include "../game/Controller.h"
%include "../game/BullController.h"
%include "../game/ControllerFactory.h"
%include "../game/Entity.h"
%include "../game/EntityEvent.h"
%include "../game/FollowCamera.h"
%include "../game/InputController.h"
%include "../game/Level.h"
%include "../game/PositionerFactory.h"
%include "../game/SillyController.h"
%include "../game/Sprite.h"
%include "../input/InputManager.h"
%include "../input/Key.h"
%include "../input/KeyListener.h"
%include "../math/AffineTransformationMatrix.h"
%include "../math/BoundedObject.h"
%include "../math/BoundingBox.h"
%include "../math/CollisionDetector.h"
%include "../math/CubicCurve.h"
%include "../math/Curve.h"
%include "../math/Line.h"
%include "../math/LineSegment.h"
%include "../math/MathManager.h"
%include "../math/Matrix.h"
%include "../math/Noise.h"
%include "../math/PathSegment.h"
%include "../math/QuadTree.h"
%include "../math/QuadTreeNode.h"
%include "../math/QuadraticCurve.h"
%include "../sketch/CPathCommandParser.h"
%include "../sketch/Group.h"
%include "../sketch/GroupParser.h"
%include "../sketch/LPathCommandParser.h"
%include "../sketch/MPathCommandParser.h"
%include "../sketch/MatrixTransformCommand.h"
%include "../sketch/Parser.h"
%include "../sketch/Path.h"
%include "../sketch/PathCommandParser.h"
%include "../sketch/PathComponent.h"
%include "../sketch/PathDataParser.h"
%include "../sketch/PathParser.h"
%include "../sketch/QPathCommandParser.h"
%include "../sketch/RotateTransformCommand.h"
%include "../sketch/SPathCommandParser.h"
%include "../sketch/ScaleTransformCommand.h"
%include "../sketch/Sketch.h"
%include "../sketch/SketchElement.h"
%include "../sketch/SketchElementParser.h"
%include "../sketch/SketchElementRenderer.h"
%include "../sketch/SketchManager.h"
%include "../sketch/SkewXTransformCommand.h"
%include "../sketch/SkewYTransformCommand.h"
%include "../sketch/TPathCommandParser.h"
%include "../sketch/TextParser.h"
%include "../sketch/TransformCommand.h"
%include "../sketch/TransformParser.h"
%include "../sketch/TranslateTransformCommand.h"
%include "../sketch/ZPathCommandParser.h"
%include "../video/Color.h"
%include "../video/ListManager.h"
%include "../video/Renderer.h"
%include "../video/VideoManager.h"
