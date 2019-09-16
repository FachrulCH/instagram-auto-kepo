*** Variables ***
#Format naming => ScreenName - kind name/label

${Main - menu explore}                   accessibility_id=Search and Explore
${Explorer - input search}               id=action_bar_search_edit_text
${Explorer - list result}                id=row_search_user_container
${Profile - area follow}                 id=profile_header_actions_top_row
${Profile - btn following}               xpath=//android.widget.LinearLayout[@resource-id='com.instagram.android:id/profile_header_actions_top_row']/android.widget.TextView[@text='Following']
${Profile - btn following status}        xpath=//android.widget.LinearLayout[@resource-id='com.instagram.android:id/profile_header_actions_top_row']/android.widget.TextView