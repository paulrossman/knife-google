# Copyright 2013 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Google compute engine, attached disk of an instance

require 'google/compute/mixins/utils'

module Google
  module Compute
    
    class AttachedDisk
      include Utils

      attr_reader :kind, :index, :type, :mode, :auto_delete
      attr_reader :source, :device_name, :boot
      
      def initialize(data)
        @kind = data["kind"]
        @index = data["index"]
        @type = data["type"]
        @mode= data["mode"]
        @source = data["source"]
        @device_name = data["deviceName"] 
        @boot = data["boot"]
        @auto_delete = data["autoDelete"]
      end
    end
  end
end
