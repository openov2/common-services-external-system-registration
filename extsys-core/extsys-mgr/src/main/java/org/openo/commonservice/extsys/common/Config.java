/**
 * Copyright 2016 [ZTE] and others.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.openo.commonservice.extsys.common;

import org.openo.commonservice.extsys.ExtsysAppConfiguration;


public class Config {
    private static ExtsysAppConfiguration configration;

    public static ExtsysAppConfiguration getConfigration() {
        return configration;
    }

    public static void setConfigration(ExtsysAppConfiguration config) {
        configration = config;
    }
}