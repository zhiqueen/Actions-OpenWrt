#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

echo '修改网关地址'
sed -i 's/192.168.1.1/192.168.66.1/g' package/base-files/files/bin/config_generate

echo '添加软件包'
svn co https://github.com/vernesong/OpenClash/branches/master/luci-app-openclash package/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus
svn co https://github.com/sypopo/openwrt-package/trunk/lienol/luci-app-passwall/  package/lienol/luci-app-passwall
rm -rf package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon -b 19.07_stable package/lean/luci-theme-argon
