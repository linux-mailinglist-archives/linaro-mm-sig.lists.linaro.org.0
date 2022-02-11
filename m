Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C634B266B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 724A1401C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:32 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6468D3EEA0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:19 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id cz16so16254490edb.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WoX8sxPvPTbgZop8phAodihk23LCXGizwdQE923C6MQ=;
        b=f0zsY9IcIfWmYeNqKyhsaxi2SnBEbpUzB9wOLgK5GmAG1UogtnzklYDP0Aed3faqCB
         h0b8APBlfb5i2RlqXfR3woEwJo4GqfbQqzQU8o2KC/m4uHfKnVGJ/M0xKUw7JYGKRc5C
         A6gBtwlSHINYI2d9Zx8f+xCeEuJdZUFOKR/qJyE2OgBm9dGc0/J6btiNO7B8ygbkQN2n
         ycu+Ttj2pI+HKUFeqsuaNeLERCzYuaQD791ve7Be/93V7ojdfAFM+M5V3SQYwl0jewRE
         5TJL6y0l5jAA06X96u7zOWOzjcFqJCFqBv2y7QfAZDLX5QbRV5kEo5kgQm8QKM+kyrqA
         GMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WoX8sxPvPTbgZop8phAodihk23LCXGizwdQE923C6MQ=;
        b=V1aFGLyBcq2ki0v+sL07l9YSLD/iEPT7cQXM+aDD4mLg9F/h/X8rOxE863jqzmzMf/
         MFA/kIUeDyaMY4MknkIkTc214dpy9Tfc0RhCXRys+g569WRY0TXwPW1M2tBCaoDoJBQz
         dI+jfL7N1I8mC9MJWfdcvEgSBNTYLho2HRWwYb1Sn+N+ROG/xL+NLBNJqHLR4fQyXeVw
         6xAFdze8qBBgoAsdf+BCzkJVkNckuJHnXuMn85sg5XGDHcn8SodbIh/QbHKmt7TteDdA
         TpfA+Sa5eX7MVuptkAivsRVNcDoBsHTetfUF3eld3/PDhZqy80arr9lZUUCqG31jdWRp
         w7Bw==
X-Gm-Message-State: AOAM533OnOwPPud2sx1F6T9z0KvuCak6iJjrSA0JF1Sg3/12iithwe2D
	GGhyxn1H1w2IGNBV5BBSAUw=
X-Google-Smtp-Source: ABdhPJwfhpPd1YbrAte9JiktX0MR36E7mOxUbdIEGUzofbw3rRRJozJ5B6//hlENIubsaLHmLEtnfQ==
X-Received: by 2002:a05:6402:84f:: with SMTP id b15mr1745788edz.206.1644583818556;
        Fri, 11 Feb 2022 04:50:18 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:18 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:54 +0100
Message-Id: <20220211125003.918447-15-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: RVZSBN76DYX3QHQGOX66P7HXYUZ4W4K6
X-Message-ID-Hash: RVZSBN76DYX3QHQGOX66P7HXYUZ4W4K6
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 14/23] drm/nouveau: support more than one write fence in fenv50_wndw_prepare_fb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVZSBN76DYX3QHQGOX66P7HXYUZ4W4K6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIGRtYV9yZXN2X2dldF9zaW5nbGV0b24oKSBoZXJlIHRvIGV2ZW50dWFsbHkgZ2V0IG1vcmUg
dGhhbiBvbmUgd3JpdGUNCmZlbmNlIGFzIHNpbmdsZSBmZW5jZS4NCg0KU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQpDYzogVGhvbWFzIFppbW1l
cm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVu
dC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1heGltZUBj
ZXJuby50ZWNoPg0KQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQpDYzogbm91dmVh
dUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rp
c3BudjUwL3duZHcuYyB8IDE0ICsrKysrLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L2Rpc3Bu
djUwL3duZHcuYw0KaW5kZXggMTMzYzg3MzY0MjZhLi5iNTVhOGE3MjM1ODEgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9kaXNwbnY1MC93bmR3LmMNCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9ub3V2ZWF1L2Rpc3BudjUwL3duZHcuYw0KQEAgLTUzNiw4ICs1MzYsNiBAQCBudjUw
X3duZHdfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFu
ZV9zdGF0ZSAqc3RhdGUpDQogCXN0cnVjdCBub3V2ZWF1X2JvICpudmJvOw0KIAlzdHJ1Y3QgbnY1
MF9oZWFkX2F0b20gKmFzeWg7DQogCXN0cnVjdCBudjUwX3duZHdfY3R4ZG1hICpjdHhkbWE7DQot
CXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsNCi0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
DQogCWludCByZXQ7DQogDQogCU5WX0FUT01JQyhkcm0sICIlcyBwcmVwYXJlOiAlcFxuIiwgcGxh
bmUtPm5hbWUsIGZiKTsNCkBAIC01NjAsMTMgKzU1OCwxMSBAQCBudjUwX3duZHdfcHJlcGFyZV9m
YihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUp
DQogCQkJYXN5dy0+aW1hZ2UuaGFuZGxlWzBdID0gY3R4ZG1hLT5vYmplY3QuaGFuZGxlOw0KIAl9
DQogDQotCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgbnZiby0+Ym8uYmFzZS5yZXN2LCBm
YWxzZSk7DQotCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNl
KSB7DQotCQkvKiBUT0RPOiBXZSBvbmx5IHVzZSB0aGUgZmlyc3Qgd3JpdGVyIGhlcmUgKi8NCi0J
CWFzeXctPnN0YXRlLmZlbmNlID0gZG1hX2ZlbmNlX2dldChmZW5jZSk7DQotCQlicmVhazsNCi0J
fQ0KLQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsNCisJcmV0ID0gZG1hX3Jlc3ZfZ2V0X3Np
bmdsZXRvbihudmJvLT5iby5iYXNlLnJlc3YsIGZhbHNlLA0KKwkJCQkgICAgICZhc3l3LT5zdGF0
ZS5mZW5jZSk7DQorCWlmIChyZXQpDQorCQlyZXR1cm4gcmV0Ow0KKw0KIAlhc3l3LT5pbWFnZS5v
ZmZzZXRbMF0gPSBudmJvLT5vZmZzZXQ7DQogDQogCWlmICh3bmR3LT5mdW5jLT5wcmVwYXJlKSB7
DQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
