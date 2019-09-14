*** Settings ***

*** Variables ***
${REMOTE_URL}       http://localhost:4723/wd/hub
${MAX_WAIT}         60
${APPIUM_URL}       http://localhost:4723/wd/hub

# local devices
${DEVICE.ANDROID.PLATFORM_VERSION}      7.0
${DEVICE.ANDROID.PLATFORM_NAME}         Android
${DEVICE.ANDROID.DEVICE_NAME}           emulator-5554
${DEVICE.ANDROID.AUTOMATION_NAME}       UIAutomator2
${DEVICE.ANDROID.NO_RESET}              true
${DEVICE.ANDROID.APP_PACKAGE}           com.instagram.android
${DEVICE.ANDROID.APP_ACTIVITY}          .activity.MainTabActivity


*** Keywords ***
Setup Desired Capabilities For "${mobile_os}" device
    [Documentation]     setup desired caps for android or IOS
    ${caps}     Create Dictionary   platformName=${DEVICE.${mobile_os}.PLATFORM_NAME}
    Set To Dictionary   ${caps}
    ...     platformName=${DEVICE.${mobile_os}.PLATFORM_NAME}
    ...     deviceName=${DEVICE.${mobile_os}.DEVICE_NAME}
    ...     automationName=${DEVICE.${mobile_os}.AUTOMATION_NAME}
    ...     appPackage=${DEVICE.${mobile_os}.APP_PACKAGE}
    ...     appActivity=${DEVICE.${mobile_os}.APP_ACTIVITY}
    ...     noReset=${DEVICE.${mobile_os}.NO_RESET}
    Comment     Set desired caps
    Set Suite Variable      ${desired_capabilities}     ${caps}
    Console Log         ${caps}


Open "${mobile_os}" Instagram App
    Setup Desired Capabilities For "${mobile_os}" device
    Open Application        ${REMOTE_URL}       &{desired_capabilities}