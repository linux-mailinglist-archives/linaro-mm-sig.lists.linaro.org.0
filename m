Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 252CD4C3F15
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Feb 2022 08:34:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0418E3EF0E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Feb 2022 07:34:00 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 951673EF06
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Feb 2022 07:33:57 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id z22so6204472edd.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Feb 2022 23:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l/9Kn8DIMro5KQ5cQHJ53iCwxNb13sp8neXcQyO5UH4=;
        b=fsqWr9Z1SGRU+M7pEO1mrUt28/apHuCcsfcCbpJAbNkdUWwYsezcRpA1IuYrGKVJaS
         V1H795+330Ty687r4dYp9GoQm0gESlWG2i1I2yTeVneT2NRWUSb5QWBTkMVb6i5GOAEV
         fcdUmLejO6XfWMpHfkqcyDSoQ6eP6OAzKiNfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l/9Kn8DIMro5KQ5cQHJ53iCwxNb13sp8neXcQyO5UH4=;
        b=vd/rWoMBdliLE3gjgogmQbK9Lqx4gdSY+drS75PpaH+cDZRYNwg1H2OZ/zBt/FZCDR
         6RYtGW5sYxVXsAv+vyeupSFBXQmF36c+QkUPbtJ4DXxTeJHHgOqtuVECQNfs0h+wHVnk
         besdjAHBKq5t2X+9TGiWgVGx6fnl2kiUU0LJ09AfA0hYrBY7K8Uel2awyMzl6GQrUP09
         ZJM34VokmZu3N5+7Rdfuqqjo585T3yxpTp2Od4cTKMRM7uNXTwh04dzStCVbwf3dElq3
         YCp4C0UHF2rNsGHkTkgrywSQxjpN5wMySldgDNCgQyG2RdgzB9tHns2uFPM0LNap3+29
         e1Sw==
X-Gm-Message-State: AOAM531m4A2dQXYPh7ZbQAE2eGo0MtGzTzOHTpIeajNcKOkHTl9e3Zom
	b+6oJqPcBBnHNRT0HBkGM8Aeag==
X-Google-Smtp-Source: ABdhPJxQESFELbwzX1YUYJHYKC0uL3v2ozopjTtnXK/VT/TH3zJ4w2ygo8youOg391P+370tqX3xaQ==
X-Received: by 2002:a05:6402:1914:b0:412:d9ae:f057 with SMTP id e20-20020a056402191400b00412d9aef057mr5881556edz.446.1645774436628;
        Thu, 24 Feb 2022 23:33:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id dn14-20020a05640222ee00b00410b88abd6fsm944342edb.45.2022.02.24.23.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 23:33:56 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 25 Feb 2022 08:33:51 +0100
Message-Id: <20220225073351.3565619-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Message-ID-Hash: LIKC4GVBMZ3DSPPP2NKNFS6HHXSDXFKT
X-Message-ID-Hash: LIKC4GVBMZ3DSPPP2NKNFS6HHXSDXFKT
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Brost <matthew.brost@intel.com>, Daniel Vetter <daniel.vetter@intel.com>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fance: Add dma_fence_assert_in_signalling_section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LIKC4GVBMZ3DSPPP2NKNFS6HHXSDXFKT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlZnVsIGZvciBjaGVja2luZyBmb3IgZG1hLWZlbmNlIHNpZ25hbGxpbmcgYW5ub3RhdGlvbnMg
c2luY2UgdGhleQ0KZG9uJ3QgcXVpdGUgbmVzdCBhcyBmcmVlbHkgYXMgd2UnZCBsaWtlIHRvLg0K
DQpDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4NCkNjOiBTdW1pdCBT
ZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3Vz
dGF2b0BwYWRvdmFuLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YyB8IDE5ICsrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAg
fCAgMiArKw0KIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQppbmRleCAwNjY0MDBlZDg4NDEuLjJiN2MzZmM5NjVlNiAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQpAQCAtMzA3LDYgKzMwNywyNSBAQCBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKHZv
aWQpDQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcpOw0KIA0K
Ky8qKg0KKyAqIGRtYV9mZW5jZV9hc3NlcnRfaW5fc2lnbmFsbGluZ19zZWN0aW9uIC0gY2hlY2sg
ZmVuY2Ugc2lnbmFsbGluZyBhbm5vdGF0aW9ucw0KKyAqDQorICogU2luY2UgZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGxpbmcoKSBhbmQgZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKCkgYXJlIGJ1aWx0
DQorICogdXNpbmcgbG9ja2RlcCBhbm5vdGF0aW9ucyB0aGV5IGhhdmUgbGltaXRhdGlvbnMgb24g
aG93IGZyZWVseSB0aGV5IGNhbiBiZQ0KKyAqIG5lc3RlZC4gU3BlY2lmaWNhbGx5LCB0aGV5IGNh
bm5vdCBiZSBvbiBib3RoIGluc2lkZSBhbmQgb3V0c2lkZSBvZiBsb2NrZWQNCisgKiBzZWN0aW9u
cywgd2hpY2ggaW4gcHJhY3RpY2UgbWVhbnMgdGhlIGFubm90YXRpb25zIG9mdGVuIGhhdmUgdG8g
YmUgcHVzaGVkIG91dA0KKyAqIHRvIHRoZSB0b3AgbGV2ZWwgY2FsbGVycy4NCisgKg0KKyAqIFRv
IGVuc3VyZSBsb3ctbGV2ZWwgZnVuY3Rpb25zIGFyZSBvbmx5IGNhbGxlZCB3aXRoIHRoZSBjb3Jy
ZWN0aW9uDQorICogYW5ub3RhdGlvbnMsIHRoaXMgZnVuY3Rpb24gY2FuIGJlIHVzZWQgdG8gY2hl
Y2sgZm9yIHRoYXQuDQorICovDQordm9pZCBkbWFfZmVuY2VfYXNzZXJ0X2luX3NpZ25hbGxpbmdf
c2VjdGlvbih2b2lkKQ0KK3sNCisJaWYgKCFpbl9hdG9taWMoKSkNCisJCWxvY2tkZXBfYXNzZXJ0
KGxvY2tfaXNfaGVsZCgmZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKSk7DQorfQ0KK0VYUE9SVF9TWU1C
T0woZG1hX2ZlbmNlX2Fzc2VydF9pbl9zaWduYWxsaW5nX3NlY3Rpb24pOw0KKw0KIC8qKg0KICAq
IGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyAtIGVuZCBhIGNyaXRpY2FsIERNQSBmZW5jZSBzaWdu
YWxsaW5nIHNlY3Rpb24NCiAgKiBAY29va2llOiBvcGFxdWUgY29va2llIGZyb20gZG1hX2ZlbmNl
X2JlZ2luX3NpZ25hbGxpbmcoKQ0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQppbmRleCA3NzVjZGMwYjRmMjQuLjcxNzlh
NTY5MmY3MiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCkBAIC0zNTYsNiArMzU2LDcgQEAgZG1hX2ZlbmNlX2dl
dF9yY3Vfc2FmZShzdHJ1Y3QgZG1hX2ZlbmNlIF9fcmN1ICoqZmVuY2VwKQ0KIA0KICNpZmRlZiBD
T05GSUdfTE9DS0RFUA0KIGJvb2wgZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcodm9pZCk7DQor
dm9pZCBkbWFfZmVuY2VfYXNzZXJ0X2luX3NpZ25hbGxpbmdfc2VjdGlvbih2b2lkKTsNCiB2b2lk
IGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhib29sIGNvb2tpZSk7DQogdm9pZCBfX2RtYV9mZW5j
ZV9taWdodF93YWl0KHZvaWQpOw0KICNlbHNlDQpAQCAtMzYzLDYgKzM2NCw3IEBAIHN0YXRpYyBp
bmxpbmUgYm9vbCBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZyh2b2lkKQ0KIHsNCiAJcmV0dXJu
IHRydWU7DQogfQ0KK3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFfZmVuY2VfYXNzZXJ0X2luX3NpZ25h
bGxpbmdfc2VjdGlvbih2b2lkKSB7fQ0KIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfZmVuY2VfZW5k
X3NpZ25hbGxpbmcoYm9vbCBjb29raWUpIHt9DQogc3RhdGljIGlubGluZSB2b2lkIF9fZG1hX2Zl
bmNlX21pZ2h0X3dhaXQodm9pZCkge30NCiAjZW5kaWYNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
