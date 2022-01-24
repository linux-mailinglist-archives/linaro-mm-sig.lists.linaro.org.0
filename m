Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A54979C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:43:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26B453ED94
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:43:19 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 89DAB3ED94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:55 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id q9-20020a7bce89000000b00349e697f2fbso33584207wmj.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZOOWkC73PSVhRT0FPLika7h1bqOJ9nqV8+v2bYOzvlk=;
        b=TnBh+fIYWftha2w3/naklVERd4+PeVS6nK+c/kdOAJnA4MgoECHm/VhS7+dPvxxPJ/
         xa4o/3zukPV2ZuRciIjCrLeRjpFq1oWSPIfIoNSuC8q0x8S89LFrva0n24JLVNC94c63
         i5tl/FGmYut9jTBwlUY8IeIlrBhTBc94TNdFrWXcOpVhCYMuxggdQqdmEzHBMMVMotIN
         u6SOjTEzTrrrt6xLtfShEIK4nW2nlCCiCVY3AiqioxwBK8kiKfmlv59XjIpmgAP439pU
         YMoQDe8OzFWHXQhUsGzt9qZcb4LMO5J32SCWQ+dLMxURUr9/YZfU3/0rSMmnk2RYGyjB
         OajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZOOWkC73PSVhRT0FPLika7h1bqOJ9nqV8+v2bYOzvlk=;
        b=UqH7i7vYYWCkQsdvzTrY4u1bkF+ed00tSvLkyJiHBAdJdktgQVhHHisYbbVRfkqjWX
         DgF0n0pFbks0bWxA9c30CQZSWxUQz//RVRfkbp1Uujgv+LGQS6wuAxebcfnnaV1rcqNf
         OYbvDXi5CBVxtxKuRGlv+9oxcOaLcZOICn3l9A3t9iuFb9yGUdr9xbJZ05VpKjFmbv6v
         lObxU3CSW++gKE6f846qcR+CW4EyN4OJjYOrWZeW5YZOFD2V4ztknKc5A6QiqklPBtl3
         H26Hy8+qQikFyeWPwDhKHJpseWvx5bsoh9Ww+ZZLqRV3n4J0VpqbrvmaG1ek9ER2Nqi5
         N8Og==
X-Gm-Message-State: AOAM530uOi3Gl4UPMjpjuS/nN2GU6sHyr1G8XjeTlgOHQaHygjELKuUn
	xB8J61/HGVcohS+U6wEApgA=
X-Google-Smtp-Source: ABdhPJxLKgXz1O9g3pJlePgtBPG5KpWlMynNepWzLwMTxgMkVdNR45ard+HWfBWT5Sxvx7h09sy7Nw==
X-Received: by 2002:a05:600c:1d21:: with SMTP id l33mr637157wms.134.1643010054627;
        Sun, 23 Jan 2022 23:40:54 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:54 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:46 +0100
Message-Id: <20220124074046.4865-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 7HJ2U2JOHVI3WCV6RITGN3VQIRL7664P
X-Message-ID-Hash: 7HJ2U2JOHVI3WCV6RITGN3VQIRL7664P
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 9/9] drm/vmwgfx: remove vmw_wait_dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7HJ2U2JOHVI3WCV6RITGN3VQIRL7664P/>
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
