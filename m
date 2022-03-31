Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 271544EE2DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Mar 2022 22:47:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D93E402B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Mar 2022 20:47:06 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id 2608C401B5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Mar 2022 20:46:58 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id w21so1435301wra.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Mar 2022 13:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=73gZfDQCpt0fGibx8D9nibrJ22anLyD9WN0vPioCp4E=;
        b=DeCbI3OH9ybm6WxJDbG8bQTyh5D+c4ZsbKHkZH8MsgiPBzMnwykeckin0GiRi99hB0
         RIF7qMNosyn5vmUsTEQKeU1KwPnG9JoNsX/fA/pT9qiwzMN2CEjauEIozPKLdYbQwjnx
         hji+pqGLIsUxkIEudt0ibfnERd95vJhcrSROE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=73gZfDQCpt0fGibx8D9nibrJ22anLyD9WN0vPioCp4E=;
        b=W7UF6FMkML4DxfvhLkIxUqRgkhHiKu42vuP4RxD98i5NGx3yx6mRw64spakS1wmhXi
         Dv3H/lO6zjTJ6c+uLQe0O6jYF39F7sL6HOxlKSiNHQ/eFwnge2KXHM+QdOhNjHHiSZaK
         RKgkdRU5JVasVsgrjAxGgvBe/pZJCWOAgg7sFgMdjWa4ZT+uMCS4NicR2ps5FkSSl1dC
         lb3tIK4+UxIfM2LZqqZjcB2I8yCRGBOV3+CDdwkePZtXKm0u3WWI95/a2oNbImVeU/bU
         LGKYPa8ObjYyzBW1nggwXX9qWXRjObfFABn0YLJ203cul2jkHPnrchi37m+PdmXV1+jO
         MixA==
X-Gm-Message-State: AOAM530SH/xlIy12zgCzJryXEPF7f+GC2+KshKf8EZzhcIw4qoUZQAUQ
	DBSy5wbXrOZL5UsxvUcqgHjBdQ==
X-Google-Smtp-Source: ABdhPJw1JV5Bt9fNkfp9+VZBfvscGth4m22To84I6sYPoVisrLeUWTzWFoizVcX4ctk+HLSKby7Oiw==
X-Received: by 2002:adf:e642:0:b0:203:d992:b8a3 with SMTP id b2-20020adfe642000000b00203d992b8a3mr5261866wrn.17.1648759617204;
        Thu, 31 Mar 2022 13:46:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id b15-20020a05600018af00b002057c72d45fsm480319wri.77.2022.03.31.13.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 13:46:56 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 31 Mar 2022 22:46:49 +0200
Message-Id: <20220331204651.2699107-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331204651.2699107-1-daniel.vetter@ffwll.ch>
References: <20220331204651.2699107-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Message-ID-Hash: T3WPBVJEKFGA4H7XY7SBBUX4G2TGMKNV
X-Message-ID-Hash: T3WPBVJEKFGA4H7XY7SBBUX4G2TGMKNV
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel.vetter@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/gem: Delete gem array fencing helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T3WPBVJEKFGA4H7XY7SBBUX4G2TGMKNV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW50ZWdyYXRlZCBpbnRvIHRoZSBzY2hlZHVsZXIgbm93IGFuZCBhbGwgdXNlcnMgY29udmVydGVk
IG92ZXIuDQoNCnYyOiBSZWJhc2VkIG92ZXIgY2hhbmdlcyBmcm9tIEvDtm5pZy4NCg0KU2lnbmVk
LW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+DQpDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCkNjOiBN
YXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpDYzogVGhvbWFzIFppbW1lcm1hbm4g
PHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4Lmll
Pg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW0uYyB8IDgwIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIGlu
Y2x1ZGUvZHJtL2RybV9nZW0uaCAgICAgfCAgNSAtLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDg1IGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCmluZGV4IDU2ZmI4Nzg4NTE0Ni4uMTMzZGZhZTA2ZmFi
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KKysrIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYw0KQEAgLTEyNzMsODMgKzEyNzMsMyBAQCBkcm1fZ2VtX3VubG9ja19y
ZXNlcnZhdGlvbnMoc3RydWN0IGRybV9nZW1fb2JqZWN0ICoqb2JqcywgaW50IGNvdW50LA0KIAl3
d19hY3F1aXJlX2ZpbmkoYWNxdWlyZV9jdHgpOw0KIH0NCiBFWFBPUlRfU1lNQk9MKGRybV9nZW1f
dW5sb2NrX3Jlc2VydmF0aW9ucyk7DQotDQotLyoqDQotICogZHJtX2dlbV9mZW5jZV9hcnJheV9h
ZGQgLSBBZGRzIHRoZSBmZW5jZSB0byBhbiBhcnJheSBvZiBmZW5jZXMgdG8gYmUNCi0gKiB3YWl0
ZWQgb24sIGRlZHVwbGljYXRpbmcgZmVuY2VzIGZyb20gdGhlIHNhbWUgY29udGV4dC4NCi0gKg0K
LSAqIEBmZW5jZV9hcnJheTogYXJyYXkgb2YgZG1hX2ZlbmNlICogZm9yIHRoZSBqb2IgdG8gYmxv
Y2sgb24uDQotICogQGZlbmNlOiB0aGUgZG1hX2ZlbmNlIHRvIGFkZCB0byB0aGUgbGlzdCBvZiBk
ZXBlbmRlbmNpZXMuDQotICoNCi0gKiBUaGlzIGZ1bmN0aW9ucyBjb25zdW1lcyB0aGUgcmVmZXJl
bmNlIGZvciBAZmVuY2UgYm90aCBvbiBzdWNjZXNzIGFuZCBlcnJvcg0KLSAqIGNhc2VzLg0KLSAq
DQotICogUmV0dXJuczoNCi0gKiAwIG9uIHN1Y2Nlc3MsIG9yIGFuIGVycm9yIG9uIGZhaWxpbmcg
dG8gZXhwYW5kIHRoZSBhcnJheS4NCi0gKi8NCi1pbnQgZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQo
c3RydWN0IHhhcnJheSAqZmVuY2VfYXJyYXksDQotCQkJICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKQ0KLXsNCi0Jc3RydWN0IGRtYV9mZW5jZSAqZW50cnk7DQotCXVuc2lnbmVkIGxvbmcgaW5k
ZXg7DQotCXUzMiBpZCA9IDA7DQotCWludCByZXQ7DQotDQotCWlmICghZmVuY2UpDQotCQlyZXR1
cm4gMDsNCi0NCi0JLyogRGVkdXBsaWNhdGUgaWYgd2UgYWxyZWFkeSBkZXBlbmQgb24gYSBmZW5j
ZSBmcm9tIHRoZSBzYW1lIGNvbnRleHQuDQotCSAqIFRoaXMgbGV0cyB0aGUgc2l6ZSBvZiB0aGUg
YXJyYXkgb2YgZGVwcyBzY2FsZSB3aXRoIHRoZSBudW1iZXIgb2YNCi0JICogZW5naW5lcyBpbnZv
bHZlZCwgcmF0aGVyIHRoYW4gdGhlIG51bWJlciBvZiBCT3MuDQotCSAqLw0KLQl4YV9mb3JfZWFj
aChmZW5jZV9hcnJheSwgaW5kZXgsIGVudHJ5KSB7DQotCQlpZiAoZW50cnktPmNvbnRleHQgIT0g
ZmVuY2UtPmNvbnRleHQpDQotCQkJY29udGludWU7DQotDQotCQlpZiAoZG1hX2ZlbmNlX2lzX2xh
dGVyKGZlbmNlLCBlbnRyeSkpIHsNCi0JCQlkbWFfZmVuY2VfcHV0KGVudHJ5KTsNCi0JCQl4YV9z
dG9yZShmZW5jZV9hcnJheSwgaW5kZXgsIGZlbmNlLCBHRlBfS0VSTkVMKTsNCi0JCX0gZWxzZSB7
DQotCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQotCQl9DQotCQlyZXR1cm4gMDsNCi0JfQ0KLQ0K
LQlyZXQgPSB4YV9hbGxvYyhmZW5jZV9hcnJheSwgJmlkLCBmZW5jZSwgeGFfbGltaXRfMzJiLCBH
RlBfS0VSTkVMKTsNCi0JaWYgKHJldCAhPSAwKQ0KLQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQot
DQotCXJldHVybiByZXQ7DQotfQ0KLUVYUE9SVF9TWU1CT0woZHJtX2dlbV9mZW5jZV9hcnJheV9h
ZGQpOw0KLQ0KLS8qKg0KLSAqIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0IC0gQWRk
cyB0aGUgaW1wbGljaXQgZGVwZW5kZW5jaWVzIHRyYWNrZWQNCi0gKiBpbiB0aGUgR0VNIG9iamVj
dCdzIHJlc2VydmF0aW9uIG9iamVjdCB0byBhbiBhcnJheSBvZiBkbWFfZmVuY2VzIGZvciB1c2Ug
aW4NCi0gKiBzY2hlZHVsaW5nIGEgcmVuZGVyaW5nIGpvYi4NCi0gKg0KLSAqIFRoaXMgc2hvdWxk
IGJlIGNhbGxlZCBhZnRlciBkcm1fZ2VtX2xvY2tfcmVzZXJ2YXRpb25zKCkgb24geW91ciBhcnJh
eSBvZg0KLSAqIEdFTSBvYmplY3RzIHVzZWQgaW4gdGhlIGpvYiBidXQgYmVmb3JlIHVwZGF0aW5n
IHRoZSByZXNlcnZhdGlvbnMgd2l0aCB5b3VyDQotICogb3duIGZlbmNlcy4NCi0gKg0KLSAqIEBm
ZW5jZV9hcnJheTogYXJyYXkgb2YgZG1hX2ZlbmNlICogZm9yIHRoZSBqb2IgdG8gYmxvY2sgb24u
DQotICogQG9iajogdGhlIGdlbSBvYmplY3QgdG8gYWRkIG5ldyBkZXBlbmRlbmNpZXMgZnJvbS4N
Ci0gKiBAd3JpdGU6IHdoZXRoZXIgdGhlIGpvYiBtaWdodCB3cml0ZSB0aGUgb2JqZWN0IChzbyB3
ZSBuZWVkIHRvIGRlcGVuZCBvbg0KLSAqIHNoYXJlZCBmZW5jZXMgaW4gdGhlIHJlc2VydmF0aW9u
IG9iamVjdCkuDQotICovDQotaW50IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KHN0
cnVjdCB4YXJyYXkgKmZlbmNlX2FycmF5LA0KLQkJCQkgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqb2JqLA0KLQkJCQkgICAgIGJvb2wgd3JpdGUpDQotew0KLQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciBjdXJzb3I7DQotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KLQlpbnQgcmV0ID0gMDsNCi0N
Ci0JZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgb2JqLT5yZXN2LCB3cml0ZSwgZmVu
Y2UpIHsNCi0JCXJldCA9IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5j
ZSk7DQotCQlpZiAocmV0KQ0KLQkJCWJyZWFrOw0KLQl9DQotCXJldHVybiByZXQ7DQotfQ0KLUVY
UE9SVF9TWU1CT0woZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQpOw0KZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaCBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KaW5kZXgg
ZTI5NDFjZWUxNGI2Li45ZDdjNjFhMTIyZGMgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2RybS9kcm1f
Z2VtLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTQwNywxMSArNDA3LDYgQEAg
aW50IGRybV9nZW1fbG9ja19yZXNlcnZhdGlvbnMoc3RydWN0IGRybV9nZW1fb2JqZWN0ICoqb2Jq
cywgaW50IGNvdW50LA0KIAkJCSAgICAgIHN0cnVjdCB3d19hY3F1aXJlX2N0eCAqYWNxdWlyZV9j
dHgpOw0KIHZvaWQgZHJtX2dlbV91bmxvY2tfcmVzZXJ2YXRpb25zKHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqKm9ianMsIGludCBjb3VudCwNCiAJCQkJIHN0cnVjdCB3d19hY3F1aXJlX2N0eCAqYWNx
dWlyZV9jdHgpOw0KLWludCBkcm1fZ2VtX2ZlbmNlX2FycmF5X2FkZChzdHJ1Y3QgeGFycmF5ICpm
ZW5jZV9hcnJheSwNCi0JCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpOw0KLWludCBkcm1f
Z2VtX2ZlbmNlX2FycmF5X2FkZF9pbXBsaWNpdChzdHJ1Y3QgeGFycmF5ICpmZW5jZV9hcnJheSwN
Ci0JCQkJICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwNCi0JCQkJICAgICBib29sIHdy
aXRlKTsNCiBpbnQgZHJtX2dlbV9kdW1iX21hcF9vZmZzZXQoc3RydWN0IGRybV9maWxlICpmaWxl
LCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KIAkJCSAgICB1MzIgaGFuZGxlLCB1NjQgKm9mZnNl
dCk7DQogDQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
