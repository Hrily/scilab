/* Generated by GIWS (version 2.0.2) with command:
giws --disable-return-size-array --output-dir src/jni/ --throws-exception-on-error --description-file src/jni/Datatip.giws.xml
*/
/*

This is generated code.

This software is a computer program whose purpose is to hide the complexity
of accessing Java objects/methods from C++ code.

Copyright (C) 2012 - 2016 - Scilab Enterprises

This file is hereby licensed under the terms of the GNU GPL v2.0,
pursuant to article 5.3.4 of the CeCILL v.2.1.
This file was originally licensed under the terms of the CeCILL v2.1,
and continues to be available under such terms.
For more information, see the COPYING file which you should have received
along with this program.
*/


#ifndef __ORG_SCILAB_MODULES_GUI_DATATIP_DATATIPMANAGER__
#define __ORG_SCILAB_MODULES_GUI_DATATIP_DATATIPMANAGER__
#include <iostream>
#include <string>
#include <string.h>
#include <stdlib.h>
#include <jni.h>

#include "GiwsException.hxx"

        #if defined(_MSC_VER) /* Defined anyway with Visual */
            #include <Windows.h>
        #else
            typedef signed char byte;
        #endif


#ifndef GIWSEXPORT
# if defined(_MSC_VER) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define GIWSEXPORT
#   else
#     define GIWSEXPORT __declspec(dllexport)
#   endif
# else
#   if __GNUC__ >= 4
#     define GIWSEXPORT __attribute__ ((visibility ("default")))
#   else
#     define GIWSEXPORT
#   endif
# endif
#endif

namespace org_scilab_modules_gui_datatip {
class GIWSEXPORT DatatipManager {

private:
JavaVM * jvm;

protected:
jmethodID voidsetEnabledjintintjbooleanbooleanID; // cache method id
jmethodID jbooleanisEnabledjintintID; // cache method id
jmethodID jintgetSelectedjintintID; // cache method id
jmethodID voidsetSelectedjintintjintintID; // cache method id



jobject instance;
jclass instanceClass; // cache class

                       
// Caching (if any)


/**
* Get the environment matching to the current thread.
*/
virtual JNIEnv * getCurrentEnv();

public:
// Constructor
/**
* Create a wrapping of the object from a JNIEnv.
* It will call the default constructor
* @param JEnv_ the Java Env
*/
DatatipManager(JavaVM * jvm_);

/**
* Create a wrapping of an already existing object from a JNIEnv.
* The object must have already been instantiated
* @param JEnv_ the Java Env
* @param JObj the object
*/
DatatipManager(JavaVM * jvm_, jobject JObj);


/** 
* This is a fake constructor to avoid the constructor
* chaining when dealing with extended giws classes 
*/
#ifdef FAKEGIWSDATATYPE
DatatipManager(fakeGiwsDataType::fakeGiwsDataType /* unused */) {}
#endif

// Destructor
~DatatipManager();

// Generic method
// Synchronization methods
/**
* Enter monitor associated with the object.
* Equivalent of creating a "synchronized(obj)" scope in Java.
*/
void synchronize();

/**
* Exit monitor associated with the object.
* Equivalent of ending a "synchronized(obj)" scope.
*/
void endSynchronize();

// Methods
static void setEnabled(JavaVM * jvm_, int uid, bool b);

static bool isEnabled(JavaVM * jvm_, int uid);

static int getSelected(JavaVM * jvm_, int uid);

static void setSelected(JavaVM * jvm_, int figureUid, int tipUid);


                        /**
                        * Get class name to use for static methods
                        * @return class name to use for static methods
                        */
                        
                static const std::string className()
                {
                return "org/scilab/modules/gui/datatip/DatatipManager";
                }
                

                        /**
                        * Get class to use for static methods
                        * @return class to use for static methods
                        */
                        
                static jclass initClass(JNIEnv * curEnv)
                {
                    static jclass cls = 0;

                    if (cls == 0)
                    {
                        jclass _cls = curEnv->FindClass(className().c_str());
                        if (_cls)
                        {
                            cls = static_cast<jclass>(curEnv->NewGlobalRef(_cls));
                        }
                    }

                    return cls;
                 }
                
};


}
#endif
