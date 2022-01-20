Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C622F494F08
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:30:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F201B3EE9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:30:18 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id 978753EE9C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:57 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id i187-20020a1c3bc4000000b0034d2ed1be2aso20480464wma.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZOOWkC73PSVhRT0FPLika7h1bqOJ9nqV8+v2bYOzvlk=;
        b=UBR2K0LXvA6q899ewEbk5cHXPN48CBhwnITW5+jzl0QjmWV4iUrZb/m03lc7Gtr95N
         mSQGCb5n/WTibjCZila+49evvjycum7p6RnIs9Ql+cd8XjbQneAgi8RyXTKFvsr6sVAG
         JZ5Kx1SyVFNKI4FpZTIrFXExgq4ffuW5MLys+9mhhflDP4wkEoKN1bv6CbvK1jdqTXYj
         MM1rvnDpr+lmWbvTDIGoUonqrRWpeHZ6x/KibtCpJ5inlWamxxvdvnYHUfMk75BzTJRO
         nKTmjOIf8CMk/ILyJMF+6GX4QkCRot2n37FZpHQaJYKwGzMpHNggsSgJS4HrQKVtbYbg
         jqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZOOWkC73PSVhRT0FPLika7h1bqOJ9nqV8+v2bYOzvlk=;
        b=6eWWd/G+78vF8GK4VqkZV2rVLRtUFiOiurP6kwmaQDSQCJSbebtyLueZzaDdb2iGKX
         rb4Q5YCmKLLLikyRwV4YjPN6FLDwtxWtsx3qRNJokS1XdrjtkQYvDmqp9Fk3SoOINW4V
         K4yi7zyAIpRaJ+wnVKWL+55IRFAn9MdnagbG5InIUBSYMS6I2r/lfK2K/RO6Asz88OXW
         5qqL/gnK7Es6IttPlaGbZ8dwDjDD0Bw6yqjv1OZzbYsGQ3yXo7Z+EmRtUYtfT2lFTLlT
         jKMvtmw0H9U4yWHVaa2Q6je2JevPb/05CDnM578LgWEBBiRHdYpqLtzepckgC60GCrbH
         EgpA==
X-Gm-Message-State: AOAM530ANsTGlRN3fsUv0NZ/3ot+T41hShGJ0W3rjjdlI8v524Wp8iI2
	3/GyQ9qU/J5xP7uA9U6ypQ6g+4A8BDU=
X-Google-Smtp-Source: ABdhPJwbsld08mlMfr/IBFDjNumOb6sFSstlPEWRopfXeMgcdFI3eq3KdHI69f9plBqiIWu/mX9OQQ==
X-Received: by 2002:a5d:6e83:: with SMTP id k3mr7256083wrz.506.1642685276730;
        Thu, 20 Jan 2022 05:27:56 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:56 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:47 +0100
Message-Id: <20220120132747.2348-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: IWVDLEGOGWAGPKEVLC5Y25SK6AR35TFP
X-Message-ID-Hash: IWVDLEGOGWAGPKEVLC5Y25SK6AR35TFP
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 9/9] drm/vmwgfx: remove vmw_wait_dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IWVDLEGOGWAGPKEVLC5Y25SK6AR35TFP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVjb21wb3NpbmcgZmVuY2UgY29udGFpbmVycyBkb24ndCBzZWVtIHRvIG1ha2UgYW55IHNlbnNl
IGhlcmUuDQoNClNvIGp1c3QgcmVtb3ZlIHRoZSBmdW5jdGlvbiBlbnRpcmVseSBhbmQgY2FsbCBk
bWFfZmVuY2Vfd2FpdCgpIGRpcmVjdGx5Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogVk13YXJlIEdyYXBoaWNzIDxsaW51
eC1ncmFwaGljcy1tYWludGFpbmVyQHZtd2FyZS5jb20+DQpDYzogWmFjayBSdXNpbiA8emFja3JA
dm13YXJlLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2V4ZWNidWYu
YyB8ICAyICstDQogZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuYyAgIHwgNDYg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4
X2ZlbmNlLmggICB8ICAzIC0tDQogMyBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNTAg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF9leGVjYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9leGVjYnVmLmMNCmlu
ZGV4IDQ0Y2EyM2IwZWE0ZS4uMGZmMjhmMGUzZWI0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3Ztd2dmeC92bXdnZnhfZXhlY2J1Zi5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4
L3Ztd2dmeF9leGVjYnVmLmMNCkBAIC00NTAwLDcgKzQ1MDAsNyBAQCBpbnQgdm13X2V4ZWNidWZf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCiAJCQlnb3RvIG1rc3N0
YXRzX291dDsNCiAJCX0NCiANCi0JCXJldCA9IHZtd193YWl0X2RtYV9mZW5jZShkZXZfcHJpdi0+
Zm1hbiwgaW5fZmVuY2UpOw0KKwkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoaW5fZmVuY2UsIHRydWUp
Ow0KIAkJaWYgKHJldCkNCiAJCQlnb3RvIG91dDsNCiAJfQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS92bXdnZngvdm13Z2Z4X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF9mZW5jZS5jDQppbmRleCBjNjBkMzk1ZjllMmUuLjQzMGY4M2ExODQ3YyAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2ZlbmNlLmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS92bXdnZngvdm13Z2Z4X2ZlbmNlLmMNCkBAIC02MjEsNTIgKzYyMSw2IEBAIGludCB2
bXdfdXNlcl9mZW5jZV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsDQogCXJldHVy
biByZXQ7DQogfQ0KIA0KLQ0KLS8qKg0KLSAqIHZtd193YWl0X2RtYV9mZW5jZSAtIFdhaXQgZm9y
IGEgZG1hIGZlbmNlDQotICoNCi0gKiBAZm1hbjogcG9pbnRlciB0byBhIGZlbmNlIG1hbmFnZXIN
Ci0gKiBAZmVuY2U6IERNQSBmZW5jZSB0byB3YWl0IG9uDQotICoNCi0gKiBUaGlzIGZ1bmN0aW9u
IGhhbmRsZXMgdGhlIGNhc2Ugd2hlbiB0aGUgZmVuY2UgaXMgYWN0dWFsbHkgYSBmZW5jZQ0KLSAq
IGFycmF5LiAgSWYgdGhhdCdzIHRoZSBjYXNlLCBpdCdsbCB3YWl0IG9uIGVhY2ggb2YgdGhlIGNo
aWxkIGZlbmNlDQotICovDQotaW50IHZtd193YWl0X2RtYV9mZW5jZShzdHJ1Y3Qgdm13X2ZlbmNl
X21hbmFnZXIgKmZtYW4sDQotCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQotew0K
LQlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpmZW5jZV9hcnJheTsNCi0JaW50IHJldCA9IDA7DQot
CWludCBpOw0KLQ0KLQ0KLQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCi0JCXJl
dHVybiAwOw0KLQ0KLQlpZiAoIWRtYV9mZW5jZV9pc19hcnJheShmZW5jZSkpDQotCQlyZXR1cm4g
ZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIHRydWUpOw0KLQ0KLQkvKiBGcm9tIGk5MTU6IE5vdGUgdGhh
dCBpZiB0aGUgZmVuY2UtYXJyYXkgd2FzIGNyZWF0ZWQgaW4NCi0JICogc2lnbmFsLW9uLWFueSBt
b2RlLCB3ZSBzaG91bGQgKm5vdCogZGVjb21wb3NlIGl0IGludG8gaXRzIGluZGl2aWR1YWwNCi0J
ICogZmVuY2VzLiBIb3dldmVyLCB3ZSBkb24ndCBjdXJyZW50bHkgc3RvcmUgd2hpY2ggbW9kZSB0
aGUgZmVuY2UtYXJyYXkNCi0JICogaXMgb3BlcmF0aW5nIGluLiBGb3J0dW5hdGVseSwgdGhlIG9u
bHkgdXNlciBvZiBzaWduYWwtb24tYW55IGlzDQotCSAqIHByaXZhdGUgdG8gYW1kZ3B1IGFuZCB3
ZSBzaG91bGQgbm90IHNlZSBhbnkgaW5jb21pbmcgZmVuY2UtYXJyYXkNCi0JICogZnJvbSBzeW5j
LWZpbGUgYmVpbmcgaW4gc2lnbmFsLW9uLWFueSBtb2RlLg0KLQkgKi8NCi0NCi0JZmVuY2VfYXJy
YXkgPSB0b19kbWFfZmVuY2VfYXJyYXkoZmVuY2UpOw0KLQlmb3IgKGkgPSAwOyBpIDwgZmVuY2Vf
YXJyYXktPm51bV9mZW5jZXM7IGkrKykgew0KLQkJc3RydWN0IGRtYV9mZW5jZSAqY2hpbGQgPSBm
ZW5jZV9hcnJheS0+ZmVuY2VzW2ldOw0KLQ0KLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoY2hpbGQs
IHRydWUpOw0KLQ0KLQkJaWYgKHJldCA8IDApDQotCQkJcmV0dXJuIHJldDsNCi0JfQ0KLQ0KLQly
ZXR1cm4gMDsNCi19DQotDQotDQogLyoNCiAgKiB2bXdfZmVuY2VfZmlmb19kb3duIC0gc2lnbmFs
IGFsbCB1bnNpZ25hbGVkIGZlbmNlIG9iamVjdHMuDQogICovDQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuaCBiL2RyaXZlcnMvZ3B1L2RybS92bXdnZngv
dm13Z2Z4X2ZlbmNlLmgNCmluZGV4IDA3OWFiNGYzYmE1MS4uYTdlZWU1NzljNzZhIDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuaA0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfZmVuY2UuaA0KQEAgLTEwNCw5ICsxMDQsNiBAQCBleHRl
cm4gaW50IHZtd191c2VyX2ZlbmNlX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwN
CiAJCQkJIHN0cnVjdCB2bXdfZmVuY2Vfb2JqICoqcF9mZW5jZSwNCiAJCQkJIHVpbnQzMl90ICpw
X2hhbmRsZSk7DQogDQotZXh0ZXJuIGludCB2bXdfd2FpdF9kbWFfZmVuY2Uoc3RydWN0IHZtd19m
ZW5jZV9tYW5hZ2VyICpmbWFuLA0KLQkJCSAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsN
Ci0NCiBleHRlcm4gdm9pZCB2bXdfZmVuY2VfZmlmb191cChzdHJ1Y3Qgdm13X2ZlbmNlX21hbmFn
ZXIgKmZtYW4pOw0KIA0KIGV4dGVybiB2b2lkIHZtd19mZW5jZV9maWZvX2Rvd24oc3RydWN0IHZt
d19mZW5jZV9tYW5hZ2VyICpmbWFuKTsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
