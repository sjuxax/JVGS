#include "PathParser.h"
#include "Parser.h"
#include "Path.h"
#include "PathDataParser.h"

#include "../tinyxml/tinyxml.h"

#include "../core/LogManager.h"
using namespace jvgs::core;

#include <sstream>
#include <string>
#include <vector>
using namespace std;

namespace jvgs
{
    namespace sketch
    {
        PathParser::PathParser()
        {
        }

        PathParser::~PathParser()
        {
        }

        SketchElement *PathParser::parse(SketchElement *parent,
                TiXmlElement *element)
        {
            Path *path = new Path(parent);
            parseAttributes(path, element);

            string data =
                    element->Attribute("d") ? element->Attribute("d") : "";

            PathDataParser *pathDataParser = new PathDataParser(path, data);
            pathDataParser->parse();
            delete pathDataParser;

            return path;
        }
    }
}
