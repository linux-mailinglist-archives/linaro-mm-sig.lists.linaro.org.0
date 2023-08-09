Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1886775342
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Aug 2023 08:52:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC1F13F6E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Aug 2023 06:52:49 +0000 (UTC)
Received: from out30-98.freemail.mail.aliyun.com (out30-98.freemail.mail.aliyun.com [115.124.30.98])
	by lists.linaro.org (Postfix) with ESMTPS id 0EDA83EF10
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Aug 2023 06:52:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.98 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045170;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0VpOrdpm_1691563950;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VpOrdpm_1691563950)
          by smtp.aliyun-inc.com;
          Wed, 09 Aug 2023 14:52:40 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: maarten.lankhorst@linux.intel.com
Date: Wed,  9 Aug 2023 14:52:29 +0800
Message-Id: <20230809065229.71300-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0EDA83EF10
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.80 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linux.alibaba.com];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.544];
	RCVD_IN_DNSWL_NONE(0.00)[115.124.30.98:from];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[115.124.30.98:from]
Message-ID-Hash: ZL2TU2XL2Y4MXLXQQQD36HIGP4G24I4H
X-Message-ID-Hash: ZL2TU2XL2Y4MXLXQQQD36HIGP4G24I4H
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mripard@kernel.org, tzimmermann@suse.de, daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm: manager: Remove the unused variable prev
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZL2TU2XL2Y4MXLXQQQD36HIGP4G24I4H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VmFyaWFibGUgcHJldiBpcyBub3QgZWZmZWN0aXZlbHkgdXNlZCwgc28gZGVsZXRlIGl0Lg0KDQpk
cml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jOjEwNzk6MzI6IHdhcm5pbmc6IHZhcmlhYmxl
IOKAmHByZXbigJkgc2V0IGJ1dCBub3QgdXNlZC4NCg0KUmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90
IDxhYmFjaUBsaW51eC5hbGliYWJhLmNvbT4NClNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcg
PGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2dwdXZhX21nci5jIHwgMyArLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZh
X21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9ncHV2YV9tZ3IuYw0KaW5kZXggZjg2YmZhZDc0
ZmY4Li5hZmE1MzMwNDQ1YjMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZh
X21nci5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dwdXZhX21nci5jDQpAQCAtMTA3Niw3
ICsxMDc2LDcgQEAgX19kcm1fZ3B1dmFfc21fbWFwKHN0cnVjdCBkcm1fZ3B1dmFfbWFuYWdlciAq
bWdyLA0KIAkJICAgdTY0IHJlcV9hZGRyLCB1NjQgcmVxX3JhbmdlLA0KIAkJICAgc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICpyZXFfb2JqLCB1NjQgcmVxX29mZnNldCkNCiB7DQotCXN0cnVjdCBkcm1f
Z3B1dmEgKnZhLCAqbmV4dCwgKnByZXYgPSBOVUxMOw0KKwlzdHJ1Y3QgZHJtX2dwdXZhICp2YSwg
Km5leHQgPSBOVUxMOw0KIAl1NjQgcmVxX2VuZCA9IHJlcV9hZGRyICsgcmVxX3JhbmdlOw0KIAlp
bnQgcmV0Ow0KIA0KQEAgLTEyMDYsNyArMTIwNiw2IEBAIF9fZHJtX2dwdXZhX3NtX21hcChzdHJ1
Y3QgZHJtX2dwdXZhX21hbmFnZXIgKm1nciwNCiAJCQl9DQogCQl9DQogbmV4dDoNCi0JCXByZXYg
PSB2YTsNCiAJfQ0KIA0KIAlyZXR1cm4gb3BfbWFwX2NiKG9wcywgcHJpdiwNCi0tIA0KMi4yMC4x
LjcuZzE1MzE0NGMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
