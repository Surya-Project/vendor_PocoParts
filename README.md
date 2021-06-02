# Poco Parts
* Add in device.mk: $(call inherit-product-if-exists, vendor/PocoParts/pocoparts.mk)

# Dirac/MI Sound Enhancer

Add this to your audio_effects.xml

     <library name="dirac" path="libdirac.so"/>
     <effect name="dirac" library="dirac" uuid="e069d9e0-8329-11df-9168-0002a5d5c51b"/>
