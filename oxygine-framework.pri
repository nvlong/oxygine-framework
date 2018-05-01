CONFIG += link_pkgconfig
PKGCONFIG += \
    sdl2 \
    zlib \
    libpng

linux-g++ {
    PKGCONFIG += gl
}

DEFINES += \
    OXYGINE_SDL \
    OX_NO_HTTP \
    OX_HAVE_LIBPNG \
    OX_RESOURCE_USE_ABSOLUTE_PATH

debug
{
    DEFINES += _DEBUG
    DEFINES += OBJECT_POOL_ALLOCATOR
}

release
{
}

QMAKE_LFLAGS += -pthread

INCLUDEPATH += $$PWD/oxygine/src

DISTFILES += \
    $$PWD/oxygine/src/oxygine/pugixml/readme.txt \
    $$PWD/oxygine/src/oxygine/winnie_alloc/LICENSE_1_0.txt \
    $$PWD/license.txt

HEADERS += \
    $$PWD/oxygine/src/oxygine/actor/Actor.h \
    $$PWD/oxygine/src/oxygine/actor/Box9Sprite.h \
    $$PWD/oxygine/src/oxygine/actor/Button.h \
    $$PWD/oxygine/src/oxygine/actor/ClipRectActor.h \
    $$PWD/oxygine/src/oxygine/actor/ColorRectSprite.h \
    $$PWD/oxygine/src/oxygine/actor/DebugActor.h \
    $$PWD/oxygine/src/oxygine/actor/MaskedSprite.h \
    $$PWD/oxygine/src/oxygine/actor/Polygon.h \
    $$PWD/oxygine/src/oxygine/actor/ProgressBar.h \
    $$PWD/oxygine/src/oxygine/actor/SlidingActor.h \
    $$PWD/oxygine/src/oxygine/actor/Sprite.h \
    $$PWD/oxygine/src/oxygine/actor/Stage.h \
    $$PWD/oxygine/src/oxygine/actor/TextField.h \
    $$PWD/oxygine/src/oxygine/actor/WebImage.h \
    $$PWD/oxygine/src/oxygine/closure/closure.h \
    $$PWD/oxygine/src/oxygine/closure/closure_impl.h \
    $$PWD/oxygine/src/oxygine/core/gl/NativeTextureGLES.h \
    $$PWD/oxygine/src/oxygine/core/gl/oxgl.h \
    $$PWD/oxygine/src/oxygine/core/gl/ShaderProgramGL.h \
    $$PWD/oxygine/src/oxygine/core/gl/VertexDeclarationGL.h \
    $$PWD/oxygine/src/oxygine/core/gl/VideoDriverGL.h \
    $$PWD/oxygine/src/oxygine/core/gl/VideoDriverGLES20.h \
    $$PWD/oxygine/src/oxygine/core/file.h \
    $$PWD/oxygine/src/oxygine/core/FileSystem.h \
    $$PWD/oxygine/src/oxygine/core/ImageData.h \
    $$PWD/oxygine/src/oxygine/core/ImageDataOperations.h \
    $$PWD/oxygine/src/oxygine/core/intrusive_ptr.h \
    $$PWD/oxygine/src/oxygine/core/log.h \
    $$PWD/oxygine/src/oxygine/core/Mutex.h \
    $$PWD/oxygine/src/oxygine/core/NativeTexture.h \
    $$PWD/oxygine/src/oxygine/core/Object.h \
    $$PWD/oxygine/src/oxygine/core/ox_debug.h \
    $$PWD/oxygine/src/oxygine/core/oxygine.h \
    $$PWD/oxygine/src/oxygine/core/pixel.h \
    $$PWD/oxygine/src/oxygine/core/ref_counter.h \
    $$PWD/oxygine/src/oxygine/core/Renderer.h \
    $$PWD/oxygine/src/oxygine/core/Restorable.h \
    $$PWD/oxygine/src/oxygine/core/ShaderProgram.h \
    $$PWD/oxygine/src/oxygine/core/STDFileSystem.h \
    $$PWD/oxygine/src/oxygine/core/system_data.h \
    $$PWD/oxygine/src/oxygine/core/Texture.h \
    $$PWD/oxygine/src/oxygine/core/ThreadDispatcher.h \
    $$PWD/oxygine/src/oxygine/core/ThreadMessages.h \
    $$PWD/oxygine/src/oxygine/core/UberShaderProgram.h \
    $$PWD/oxygine/src/oxygine/core/vertex.h \
    $$PWD/oxygine/src/oxygine/core/VertexDeclaration.h \
    $$PWD/oxygine/src/oxygine/core/VideoDriver.h \
    $$PWD/oxygine/src/oxygine/core/ZipFileSystem.h \
    $$PWD/oxygine/src/oxygine/dev_tools/DeveloperMenu.h \
    $$PWD/oxygine/src/oxygine/dev_tools/TexturesInspector.h \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspector.h \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorLine.h \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorPage.h \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorPreview.h \
    $$PWD/oxygine/src/oxygine/json/json-forwards.h \
    $$PWD/oxygine/src/oxygine/json/json.h \
    $$PWD/oxygine/src/oxygine/math/AffineTransform.h \
    $$PWD/oxygine/src/oxygine/math/Color.h \
    $$PWD/oxygine/src/oxygine/math/Matrix.h \
    $$PWD/oxygine/src/oxygine/math/OBBox.h \
    $$PWD/oxygine/src/oxygine/math/Rect.h \
    $$PWD/oxygine/src/oxygine/math/ScalarMath.h \
    $$PWD/oxygine/src/oxygine/math/Vector2.h \
    $$PWD/oxygine/src/oxygine/math/Vector3.h \
    $$PWD/oxygine/src/oxygine/math/Vector4.h \
    $$PWD/oxygine/src/oxygine/minizip/ioapi.h \
    $$PWD/oxygine/src/oxygine/minizip/ioapi_mem.h \
    $$PWD/oxygine/src/oxygine/minizip/unzip.h \
    $$PWD/oxygine/src/oxygine/pugixml/pugiconfig.hpp \
    $$PWD/oxygine/src/oxygine/pugixml/pugixml.hpp \
    $$PWD/oxygine/src/oxygine/res/CreateResourceContext.h \
    $$PWD/oxygine/src/oxygine/res/ResAnim.h \
    $$PWD/oxygine/src/oxygine/res/ResAtlas.h \
    $$PWD/oxygine/src/oxygine/res/ResAtlasGeneric.h \
    $$PWD/oxygine/src/oxygine/res/ResAtlasPrebuilt.h \
    $$PWD/oxygine/src/oxygine/res/ResBuffer.h \
    $$PWD/oxygine/src/oxygine/res/ResFont.h \
    $$PWD/oxygine/src/oxygine/res/ResFontBM.h \
    $$PWD/oxygine/src/oxygine/res/Resource.h \
    $$PWD/oxygine/src/oxygine/res/Resources.h \
    $$PWD/oxygine/src/oxygine/res/ResStarlingAtlas.h \
    $$PWD/oxygine/src/oxygine/res/SingleResAnim.h \
    $$PWD/oxygine/src/oxygine/text_utils/Aligner.h \
    $$PWD/oxygine/src/oxygine/text_utils/Node.h \
    $$PWD/oxygine/src/oxygine/text_utils/TextBuilder.h \
    $$PWD/oxygine/src/oxygine/tween/Tween.h \
    $$PWD/oxygine/src/oxygine/tween/TweenAlphaFade.h \
    $$PWD/oxygine/src/oxygine/tween/TweenAnim.h \
    $$PWD/oxygine/src/oxygine/tween/TweenGlow.h \
    $$PWD/oxygine/src/oxygine/tween/TweenOutline.h \
    $$PWD/oxygine/src/oxygine/tween/TweenQueue.h \
    $$PWD/oxygine/src/oxygine/utils/AtlasBuilder.h \
    $$PWD/oxygine/src/oxygine/utils/cdecode.h \
    $$PWD/oxygine/src/oxygine/utils/ImageUtils.h \
    $$PWD/oxygine/src/oxygine/utils/intrusive_list.h \
    $$PWD/oxygine/src/oxygine/utils/stringUtils.h \
    $$PWD/oxygine/src/oxygine/winnie_alloc/system_alloc.h \
    $$PWD/oxygine/src/oxygine/winnie_alloc/winnie_alloc.h \
    $$PWD/oxygine/src/oxygine/winnie_alloc/winnie_alloc_config.h \
    $$PWD/oxygine/src/oxygine/AnimationFrame.h \
    $$PWD/oxygine/src/oxygine/AsyncTask.h \
    $$PWD/oxygine/src/oxygine/Clock.h \
    $$PWD/oxygine/src/oxygine/Draggable.h \
    $$PWD/oxygine/src/oxygine/Event.h \
    $$PWD/oxygine/src/oxygine/EventDispatcher.h \
    $$PWD/oxygine/src/oxygine/Font.h \
    $$PWD/oxygine/src/oxygine/HttpRequestTask.h \
    $$PWD/oxygine/src/oxygine/Image.h \
    $$PWD/oxygine/src/oxygine/initActor.h \
    $$PWD/oxygine/src/oxygine/Input.h \
    $$PWD/oxygine/src/oxygine/InputText.h \
    $$PWD/oxygine/src/oxygine/key.h \
    $$PWD/oxygine/src/oxygine/KeyEvent.h \
    $$PWD/oxygine/src/oxygine/MaskedRenderer.h \
    $$PWD/oxygine/src/oxygine/Material.h \
    $$PWD/oxygine/src/oxygine/MaterialCache.h \
    $$PWD/oxygine/src/oxygine/oxygine-forwards.h \
    $$PWD/oxygine/src/oxygine/oxygine-include.h \
    $$PWD/oxygine/src/oxygine/PointerState.h \
    $$PWD/oxygine/src/oxygine/PostProcess.h \
    $$PWD/oxygine/src/oxygine/Property.h \
    $$PWD/oxygine/src/oxygine/RenderDelegate.h \
    $$PWD/oxygine/src/oxygine/RenderState.h \
    $$PWD/oxygine/src/oxygine/Serializable.h \
    $$PWD/oxygine/src/oxygine/Serialize.h \
    $$PWD/oxygine/src/oxygine/STDRenderDelegate.h \
    $$PWD/oxygine/src/oxygine/STDRenderer.h \
    $$PWD/oxygine/src/oxygine/TextStyle.h \
    $$PWD/oxygine/src/oxygine/ThreadLoader.h \
    $$PWD/oxygine/src/oxygine/TouchEvent.h \
    $$PWD/oxygine/src/oxygine/UpdateState.h \
    $$PWD/oxygine/src/oxygine/VisualStyle.h

SOURCES += \
    $$PWD/oxygine/src/oxygine/actor/Actor.cpp \
    $$PWD/oxygine/src/oxygine/actor/Box9Sprite.cpp \
    $$PWD/oxygine/src/oxygine/actor/Button.cpp \
    $$PWD/oxygine/src/oxygine/actor/ClipRectActor.cpp \
    $$PWD/oxygine/src/oxygine/actor/ColorRectSprite.cpp \
    $$PWD/oxygine/src/oxygine/actor/DebugActor.cpp \
    $$PWD/oxygine/src/oxygine/actor/MaskedSprite.cpp \
    $$PWD/oxygine/src/oxygine/actor/Polygon.cpp \
    $$PWD/oxygine/src/oxygine/actor/ProgressBar.cpp \
    $$PWD/oxygine/src/oxygine/actor/SlidingActor.cpp \
    $$PWD/oxygine/src/oxygine/actor/Sprite.cpp \
    $$PWD/oxygine/src/oxygine/actor/Stage.cpp \
    $$PWD/oxygine/src/oxygine/actor/TextField.cpp \
    $$PWD/oxygine/src/oxygine/actor/WebImage.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/NativeTextureGLES.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/oxgl.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/ShaderProgramGL.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/VertexDeclarationGL.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/VideoDriverGL.cpp \
    $$PWD/oxygine/src/oxygine/core/gl/VideoDriverGLES20.cpp \
    $$PWD/oxygine/src/oxygine/core/file.cpp \
    $$PWD/oxygine/src/oxygine/core/FileSystem.cpp \
    $$PWD/oxygine/src/oxygine/core/ImageData.cpp \
    $$PWD/oxygine/src/oxygine/core/ImageDataOperations.cpp \
    $$PWD/oxygine/src/oxygine/core/log.cpp \
    $$PWD/oxygine/src/oxygine/core/Mutex.cpp \
    $$PWD/oxygine/src/oxygine/core/NativeTexture.cpp \
    $$PWD/oxygine/src/oxygine/core/Object.cpp \
    $$PWD/oxygine/src/oxygine/core/oxygine.cpp \
    $$PWD/oxygine/src/oxygine/core/Renderer.cpp \
    $$PWD/oxygine/src/oxygine/core/Restorable.cpp \
    $$PWD/oxygine/src/oxygine/core/STDFileSystem.cpp \
    $$PWD/oxygine/src/oxygine/core/system_data.cpp \
    $$PWD/oxygine/src/oxygine/core/Texture.cpp \
    $$PWD/oxygine/src/oxygine/core/ThreadDispatcher.cpp \
    $$PWD/oxygine/src/oxygine/core/UberShaderProgram.cpp \
    $$PWD/oxygine/src/oxygine/core/VideoDriver.cpp \
    $$PWD/oxygine/src/oxygine/core/ZipFileSystem.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/DeveloperMenu.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/TexturesInspector.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspector.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorLine.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorPage.cpp \
    $$PWD/oxygine/src/oxygine/dev_tools/TreeInspectorPreview.cpp \
    $$PWD/oxygine/src/oxygine/json/jsoncpp.cpp \
    $$PWD/oxygine/src/oxygine/math/AffineTransform.cpp \
    $$PWD/oxygine/src/oxygine/math/Color.cpp \
    $$PWD/oxygine/src/oxygine/pugixml/pugixml.cpp \
    $$PWD/oxygine/src/oxygine/res/CreateResourceContext.cpp \
    $$PWD/oxygine/src/oxygine/res/ResAnim.cpp \
    $$PWD/oxygine/src/oxygine/res/ResAtlas.cpp \
    $$PWD/oxygine/src/oxygine/res/ResAtlasGeneric.cpp \
    $$PWD/oxygine/src/oxygine/res/ResAtlasPrebuilt.cpp \
    $$PWD/oxygine/src/oxygine/res/ResBuffer.cpp \
    $$PWD/oxygine/src/oxygine/res/ResFont.cpp \
    $$PWD/oxygine/src/oxygine/res/ResFontBM.cpp \
    $$PWD/oxygine/src/oxygine/res/Resource.cpp \
    $$PWD/oxygine/src/oxygine/res/Resources.cpp \
    $$PWD/oxygine/src/oxygine/res/ResStarlingAtlas.cpp \
    $$PWD/oxygine/src/oxygine/res/SingleResAnim.cpp \
    $$PWD/oxygine/src/oxygine/text_utils/Aligner.cpp \
    $$PWD/oxygine/src/oxygine/text_utils/Node.cpp \
    $$PWD/oxygine/src/oxygine/text_utils/TextBuilder.cpp \
    $$PWD/oxygine/src/oxygine/tween/Tween.cpp \
    $$PWD/oxygine/src/oxygine/tween/TweenAlphaFade.cpp \
    $$PWD/oxygine/src/oxygine/tween/TweenAnim.cpp \
    $$PWD/oxygine/src/oxygine/tween/TweenGlow.cpp \
    $$PWD/oxygine/src/oxygine/tween/TweenOutline.cpp \
    $$PWD/oxygine/src/oxygine/tween/TweenQueue.cpp \
    $$PWD/oxygine/src/oxygine/utils/AtlasBuilder.cpp \
    $$PWD/oxygine/src/oxygine/utils/ImageUtils.cpp \
    $$PWD/oxygine/src/oxygine/utils/stringUtils.cpp \
    $$PWD/oxygine/src/oxygine/winnie_alloc/system_alloc.cpp \
    $$PWD/oxygine/src/oxygine/winnie_alloc/winnie_alloc.cpp \
    $$PWD/oxygine/src/oxygine/AnimationFrame.cpp \
    $$PWD/oxygine/src/oxygine/AsyncTask.cpp \
    $$PWD/oxygine/src/oxygine/Clock.cpp \
    $$PWD/oxygine/src/oxygine/Draggable.cpp \
    $$PWD/oxygine/src/oxygine/EventDispatcher.cpp \
    $$PWD/oxygine/src/oxygine/Font.cpp \
    $$PWD/oxygine/src/oxygine/HttpRequestTask.cpp \
    $$PWD/oxygine/src/oxygine/Image.cpp \
    $$PWD/oxygine/src/oxygine/Input.cpp \
    $$PWD/oxygine/src/oxygine/InputText.cpp \
    $$PWD/oxygine/src/oxygine/key.cpp \
    $$PWD/oxygine/src/oxygine/MaskedRenderer.cpp \
    $$PWD/oxygine/src/oxygine/Material.cpp \
    $$PWD/oxygine/src/oxygine/MaterialCache.cpp \
    $$PWD/oxygine/src/oxygine/PointerState.cpp \
    $$PWD/oxygine/src/oxygine/PostProcess.cpp \
    $$PWD/oxygine/src/oxygine/RenderDelegate.cpp \
    $$PWD/oxygine/src/oxygine/Serializable.cpp \
    $$PWD/oxygine/src/oxygine/Serialize.cpp \
    $$PWD/oxygine/src/oxygine/STDRenderDelegate.cpp \
    $$PWD/oxygine/src/oxygine/STDRenderer.cpp \
    $$PWD/oxygine/src/oxygine/ThreadLoader.cpp \
    $$PWD/oxygine/src/oxygine/VisualStyle.cpp \
    $$PWD/oxygine/src/oxygine/minizip/ioapi.c \
    $$PWD/oxygine/src/oxygine/minizip/ioapi_mem.c \
    $$PWD/oxygine/src/oxygine/minizip/unzip.c \
    $$PWD/oxygine/src/oxygine/utils/cdecode.c


