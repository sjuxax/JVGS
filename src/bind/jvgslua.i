%module jvgslua

%include <std_string.i>

%{
#include "../core/LogManager.h"
#include "../input/KeyListener.h"
#include "../input/Key.h"
#include "../input/InputManager.h"
#include "../game/Entity.h"
#include "../game/InputAffector.h"
#include "../game/Affector.h"
#include "../game/CollisionResponseAffector.h"
#include "../video/VideoManager.h"
#include "../video/Renderer.h"
#include "../video/Color.h"
#include "../video/ListManager.h"
#include "../math/PathSegment.h"
#include "../math/Vector2D.h"
#include "../math/Matrix.h"
#include "../math/Noise.h"
#include "../math/AffineTransformationMatrix.h"
#include "../math/SegmentQuadTree.h"
#include "../math/LineSegment.h"
#include "../math/MathManager.h"
#include "../math/Line.h"
#include "../math/SegmentQuadTreeNode.h"
#include "../math/BoundingBox.h"
#include "../math/CubicCurve.h"
#include "../sketch/GroupParser.h"
#include "../sketch/PathParser.h"
#include "../sketch/CPathCommandParser.h"
#include "../sketch/PathCommandParser.h"
#include "../sketch/PathComponent.h"
#include "../sketch/ScaleTransformCommand.h"
#include "../sketch/SketchElementRenderer.h"
#include "../sketch/SketchElementParser.h"
#include "../sketch/MPathCommandParser.h"
#include "../sketch/SkewXTransformCommand.h"
#include "../sketch/LPathCommandParser.h"
#include "../sketch/Group.h"
#include "../sketch/Path.h"
#include "../sketch/Parser.h"
#include "../sketch/Sketch.h"
#include "../sketch/PathDataParser.h"
#include "../sketch/SketchElement.h"
#include "../sketch/TextParser.h"
#include "../sketch/SkewYTransformCommand.h"
#include "../sketch/TranslateTransformCommand.h"
#include "../sketch/SPathCommandParser.h"
#include "../sketch/MatrixTransformCommand.h"
#include "../sketch/ZPathCommandParser.h"
#include "../sketch/TransformParser.h"
#include "../sketch/TransformCommand.h"
#include "../sketch/RotateTransformCommand.h"
using namespace jvgs::core;
using namespace jvgs::input;
using namespace jvgs::game;
using namespace jvgs::video;
using namespace jvgs::math;
using namespace jvgs::sketch;
using namespace jvgs;
%}

%include "../core/LogManager.h"
%include "../input/KeyListener.h"
%include "../input/Key.h"
%include "../input/InputManager.h"
%include "../game/Entity.h"
%include "../game/InputAffector.h"
%include "../game/Affector.h"
%include "../game/CollisionResponseAffector.h"
%include "../video/VideoManager.h"
%include "../video/Renderer.h"
%include "../video/Color.h"
%include "../video/ListManager.h"
%include "../math/PathSegment.h"
%include "../math/Vector2D.h"
%include "../math/Matrix.h"
%include "../math/Noise.h"
%include "../math/AffineTransformationMatrix.h"
%include "../math/SegmentQuadTree.h"
%include "../math/LineSegment.h"
%include "../math/MathManager.h"
%include "../math/Line.h"
%include "../math/SegmentQuadTreeNode.h"
%include "../math/BoundingBox.h"
%include "../math/CubicCurve.h"
%include "../sketch/GroupParser.h"
%include "../sketch/PathParser.h"
%include "../sketch/CPathCommandParser.h"
%include "../sketch/PathCommandParser.h"
%include "../sketch/PathComponent.h"
%include "../sketch/ScaleTransformCommand.h"
%include "../sketch/SketchElementRenderer.h"
%include "../sketch/SketchElementParser.h"
%include "../sketch/MPathCommandParser.h"
%include "../sketch/SkewXTransformCommand.h"
%include "../sketch/LPathCommandParser.h"
%include "../sketch/Group.h"
%include "../sketch/Path.h"
%include "../sketch/Parser.h"
%include "../sketch/Sketch.h"
%include "../sketch/PathDataParser.h"
%include "../sketch/SketchElement.h"
%include "../sketch/TextParser.h"
%include "../sketch/SkewYTransformCommand.h"
%include "../sketch/TranslateTransformCommand.h"
%include "../sketch/SPathCommandParser.h"
%include "../sketch/MatrixTransformCommand.h"
%include "../sketch/ZPathCommandParser.h"
%include "../sketch/TransformParser.h"
%include "../sketch/TransformCommand.h"
%include "../sketch/RotateTransformCommand.h"
