Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A54C76F9074
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 May 2023 10:11:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F8A24435C
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 May 2023 08:10:59 +0000 (UTC)
Received: from out30-113.freemail.mail.aliyun.com (out30-113.freemail.mail.aliyun.com [115.124.30.113])
	by lists.linaro.org (Postfix) with ESMTPS id C83EF3F062
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 May 2023 08:10:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.113 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046050;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0Vhsn6o0_1683360647;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0Vhsn6o0_1683360647)
          by smtp.aliyun-inc.com;
          Sat, 06 May 2023 16:10:49 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: alexander.deucher@amd.com
Date: Sat,  6 May 2023 16:10:43 +0800
Message-Id: <20230506081043.73456-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Spamd-Result: default: False [-9.80 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linux.alibaba.com];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.915];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[115.124.30.113:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C83EF3F062
X-Spamd-Bar: ---------
Message-ID-Hash: XEQYEZ6YBXPOBUYF6URPVBVIUX7QRZLQ
X-Message-ID-Hash: XEQYEZ6YBXPOBUYF6URPVBVIUX7QRZLQ
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: Remove the unused variable golden_settings_gc_9_4_3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XEQYEZ6YBXPOBUYF6URPVBVIUX7QRZLQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VmFyaWFibGUgZ29sZGVuX3NldHRpbmdzX2djXzlfNF8zIGlzIG5vdCBlZmZlY3RpdmVseSB1c2Vk
LCBzbyBkZWxldGUgaXQuDQoNCmRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV80XzMu
Yzo0ODozODogd2FybmluZzog4oCYZ29sZGVuX3NldHRpbmdzX2djXzlfNF8z4oCZIGRlZmluZWQg
YnV0IG5vdCB1c2VkLg0KDQpSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNpQGxpbnV4LmFs
aWJhYmEuY29tPg0KTGluazogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlzLmNuL3Nob3dfYnVn
LmNnaT9pZD00ODc3DQpTaWduZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxqaWFwZW5nLmNob25n
QGxpbnV4LmFsaWJhYmEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y5XzRfMy5jIHwgNCAtLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfNF8zLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfNF8zLmMNCmluZGV4IDMxMjQ5MTQ1NTM4Mi4u
NzRiZTQ2ZDM4MmY0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y5XzRfMy5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfNF8zLmMN
CkBAIC00NSwxMCArNDUsNiBAQCBNT0RVTEVfRklSTVdBUkUoImFtZGdwdS9nY185XzRfM19ybGMu
YmluIik7DQogI2RlZmluZSBHRlg5X01FQ19IUERfU0laRSA0MDk2DQogI2RlZmluZSBSTENHX1VD
T0RFX0xPQURJTkdfU1RBUlRfQUREUkVTUyAweDAwMDAyMDAwTA0KIA0KLXN0YXRpYyBjb25zdCBz
dHJ1Y3Qgc29jMTVfcmVnX2dvbGRlbiBnb2xkZW5fc2V0dGluZ3NfZ2NfOV80XzNbXSA9IHsNCi0N
Ci19Ow0KLQ0KIHN0YXRpYyB2b2lkIGdmeF92OV80XzNfc2V0X3JpbmdfZnVuY3Moc3RydWN0IGFt
ZGdwdV9kZXZpY2UgKmFkZXYpOw0KIHN0YXRpYyB2b2lkIGdmeF92OV80XzNfc2V0X2lycV9mdW5j
cyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldik7DQogc3RhdGljIHZvaWQgZ2Z4X3Y5XzRfM19z
ZXRfZ2RzX2luaXQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYpOw0KLS0gDQoyLjIwLjEuNy5n
MTUzMTQ0Yw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
