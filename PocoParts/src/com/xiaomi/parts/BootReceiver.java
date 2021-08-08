/*
 * Copyright (C) 2018 The Asus-SDM660 Project
 * Copyright (c) 2020 ronaxdevil <pratabidya.007@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.xiaomi.parts;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import android.os.SELinux;
import android.util.Log;
import android.widget.Toast;
import android.text.TextUtils;

import com.xiaomi.parts.R;

import java.io.IOException;
import java.util.List;

public class BootReceiver extends BroadcastReceiver {

    public void onReceive(Context context, Intent intent) {
        boolean enabled = false;
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        enabled = sharedPrefs.getBoolean(DeviceSettings.KEY_USB2_SWITCH, false);
        if (enabled) {
        restore(USB2FastChargeModeSwitch.getFile(), enabled);
        }
    }

    private void restore(String file, boolean enabled) {
        if (file == null) {
            return;
        }
        if (enabled) {
            FileUtils.writeValue(file, "1");
        }
    }
    private void restore(String file, String value) {
        if (file == null) {
            return;
        }
        FileUtils.writeValue(file, value);
    }

    private void showToast(String toastString, Context context) {
    Toast.makeText(context, toastString, Toast.LENGTH_SHORT)
            .show();
    }
}
