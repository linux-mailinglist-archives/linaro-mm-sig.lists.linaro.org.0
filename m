Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D985174A3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38A5B48058
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:45 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 333C248061
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:47 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id k126-20020a1ca184000000b003943fd07180so1346167wme.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JJ3syRLZRf5cDZllRXn7Ii6fAdy4TAhne+oUq4LR8JM=;
        b=EJuFYyX/onL0HJ4JSG09ScoRSS3raya0MlgJRdQTgbH3rpOwp1ndohsJQHAJ6vQKFk
         uJ/DryMLrBrEgbCEvYEL2tZvd1i2sCSFCUGQFW5CAyUM0bavc3zeOKOUnCQsvVGyUcO9
         yWXrJmVXaxLV+Tqqg6PYxhaWB3inavH2X6ocugBjq/Vspv1DB+XzoV8vtJg7ZbcjBkLf
         WnCHUyKoZVrkAR6WdIki9mb7GjswsNdFEa4m0612subrl2ukwHVtqP1Upjs87+NW5aUs
         saU9wTuWvQjwqY6pVnlNsN0Q7jvICgBmsVa3FCWbHqSLvmfnFfJEIP2+9bKSZTfPwQii
         1cTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JJ3syRLZRf5cDZllRXn7Ii6fAdy4TAhne+oUq4LR8JM=;
        b=2B6MKS498Amjenfrf9zebPVMo3jOgMql0S17DeHREgKIa13FcAB7gHC+nxJVgKzvWv
         Fpotp3ZlpvAO5WrsMeO4fqMLND2K4rkZ4d+VLLsO6tG83OBumnaGqivOVLpfrvnbhUcq
         dPaCwuBNQ2AptHwXgaMasXM6thnH5A+uveaEj6CxGsX6Jryw31v5xe9dhQnDsK7ozPva
         HyIuVnhV0ca+hqMMc+wxexJR2TrYlCzWwD8GD2dwuYzw5IGFUPMauaK5poYmB+OOThx5
         fs9ggBW6S16hhZNJx9GXW8Gv0iLkBc88+YEo/9Z723ELqZNvQUg1vCmqsJjlS9pqB+wM
         LK7g==
X-Gm-Message-State: AOAM533VuA3pO8MWswWqO3C/L4+418QJgoB7oYP7weTZ6lZzPxrLl//f
	/xYRsXSch2VXmSlC/Pyok7U=
X-Google-Smtp-Source: ABdhPJxYRvcNEnBAIcm2IwUgbnbX3g7RWLKbs5dcfFuCkBVefhGVaJWd+oqaJeeDM2lCNNoP6SCyMg==
X-Received: by 2002:a05:600c:190d:b0:393:ee55:5686 with SMTP id j13-20020a05600c190d00b00393ee555686mr2328wmq.126.1651509466306;
        Mon, 02 May 2022 09:37:46 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:45 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:20 +0200
Message-Id: <20220502163722.3957-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: KWWM5EHQQSY5KX4INRC33CYVSRD6DIWZ
X-Message-ID-Hash: KWWM5EHQQSY5KX4INRC33CYVSRD6DIWZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 13/15] drm: add user fence support to drm_syncobj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KWWM5EHQQSY5KX4INRC33CYVSRD6DIWZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIG5vdyBqdXN0IGZpbHRlciBvciB3YWl0IGZvciB1c2VyIGZlbmNlcy4NCg0KU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQog
ZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCAxNSArKysrKysrKysrKystLS0NCiBpbmNs
dWRlL2RybS9kcm1fc3luY29iai5oICAgICB8IDI1ICsrKysrKysrKysrKysrKysrKysrKy0tLS0N
CiAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fc3luY29iai5jDQppbmRleCA1YTk2MWVhOTBhMzUuLjhkMjVhMmRkMTA3YiAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQorKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX3N5bmNvYmouYw0KQEAgLTM4Niw3ICszODYsNyBAQCBpbnQgZHJtX3N5bmNvYmpfZmlu
ZF9mZW5jZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJc3RydWN0IGRybV9zeW5j
b2JqICpzeW5jb2JqID0gZHJtX3N5bmNvYmpfZmluZChmaWxlX3ByaXZhdGUsIGhhbmRsZSk7DQog
CXN0cnVjdCBzeW5jb2JqX3dhaXRfZW50cnkgd2FpdDsNCiAJdTY0IHRpbWVvdXQgPSBuc2Vjc190
b19qaWZmaWVzNjQoRFJNX1NZTkNPQkpfV0FJVF9GT1JfU1VCTUlUX1RJTUVPVVQpOw0KLQlpbnQg
cmV0Ow0KKwlsb25nIHJldDsNCiANCiAJaWYgKCFzeW5jb2JqKQ0KIAkJcmV0dXJuIC1FTk9FTlQ7
DQpAQCAtMzk4LDEwICszOTgsMTkgQEAgaW50IGRybV9zeW5jb2JqX2ZpbmRfZmVuY2Uoc3RydWN0
IGRybV9maWxlICpmaWxlX3ByaXZhdGUsDQogCWlmIChmbGFncyAmIERSTV9TWU5DT0JKX1dBSVRf
RkxBR1NfV0FJVF9GT1JfU1VCTUlUKSB7DQogCQltaWdodF9zbGVlcCgpOw0KIAkJbG9ja2RlcF9h
c3NlcnRfbm9uZV9oZWxkX29uY2UoKTsNCisJCSpmZW5jZSA9IGRybV9zeW5jb2JqX3VzZXJfZmVu
Y2VfZ2V0KHN5bmNvYmopOw0KKwkJaWYgKCpmZW5jZSkgew0KKwkJCXJldCA9IGRtYV9mZW5jZV93
YWl0X3VzZXIoKmZlbmNlLCB0aW1lb3V0KTsNCisJCQlpZiAocmV0IDwgMCkNCisJCQkJcmV0dXJu
IHJldDsNCisJCQlpZiAocmV0ID09IDApDQorCQkJCXJldHVybiAtRVRJTUU7DQorCQkJdGltZW91
dCA9IHJldDsNCisJCX0NCisJfSBlbHNlIHsNCisJCSpmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNl
X2dldChzeW5jb2JqKTsNCiAJfQ0KIA0KLQkqZmVuY2UgPSBkcm1fc3luY29ial9mZW5jZV9nZXQo
c3luY29iaik7DQotDQogCWlmICgqZmVuY2UpIHsNCiAJCXJldCA9IGRtYV9mZW5jZV9jaGFpbl9m
aW5kX3NlcW5vKGZlbmNlLCBwb2ludCk7DQogCQlpZiAoIXJldCkgew0KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9zeW5jb2JqLmggYi9pbmNsdWRlL2RybS9kcm1fc3luY29iai5oDQppbmRl
eCA2Y2Y3MjQzYTFkYzUuLmFjYzM5Nzk4MTVlYiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvZHJtL2Ry
bV9zeW5jb2JqLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9zeW5jb2JqLmgNCkBAIC0yOCw2ICsy
OCw3IEBADQogDQogI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPg0KICNpbmNsdWRlIDxsaW51
eC9kbWEtZmVuY2UtY2hhaW4uaD4NCisjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLXVud3JhcC5o
Pg0KIA0KIHN0cnVjdCBkcm1fZmlsZTsNCiANCkBAIC04OSwxOCArOTAsMTggQEAgZHJtX3N5bmNv
YmpfcHV0KHN0cnVjdCBkcm1fc3luY29iaiAqb2JqKQ0KIH0NCiANCiAvKioNCi0gKiBkcm1fc3lu
Y29ial9mZW5jZV9nZXQgLSBnZXQgYSByZWZlcmVuY2UgdG8gYSBmZW5jZSBpbiBhIHN5bmMgb2Jq
ZWN0DQorICogZHJtX3N5bmNvYmpfdXNlcl9mZW5jZV9nZXQgLSBnZXQgYW4gdXNlciBmZW5jZSBm
cm9tIGEgc3luYyBvYmplY3QNCiAgKiBAc3luY29iajogc3luYyBvYmplY3QuDQogICoNCiAgKiBU
aGlzIGFjcXVpcmVzIGFkZGl0aW9uYWwgcmVmZXJlbmNlIHRvICZkcm1fc3luY29iai5mZW5jZSBj
b250YWluZWQgaW4gQG9iaiwNCi0gKiBpZiBub3QgTlVMTC4gSXQgaXMgaWxsZWdhbCB0byBjYWxs
IHRoaXMgd2l0aG91dCBhbHJlYWR5IGhvbGRpbmcgYSByZWZlcmVuY2UuDQotICogTm8gbG9ja3Mg
cmVxdWlyZWQuDQorICogaWYgbm90IE5VTEwuIEl0IGlzIGlsbGVnYWwgdG8gY2FsbCB0aGlzIHdp
dGhvdXQgaG9sZGluZyBhIHJlZmVyZW5jZSB0byB0aGUNCisgKiBzeW5jb2JqLiBObyBsb2NrcyBy
ZXF1aXJlZC4NCiAgKg0KICAqIFJldHVybnM6DQogICogRWl0aGVyIHRoZSBmZW5jZSBvZiBAb2Jq
IG9yIE5VTEwgaWYgdGhlcmUncyBub25lLg0KICAqLw0KIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRt
YV9mZW5jZSAqDQotZHJtX3N5bmNvYmpfZmVuY2VfZ2V0KHN0cnVjdCBkcm1fc3luY29iaiAqc3lu
Y29iaikNCitkcm1fc3luY29ial91c2VyX2ZlbmNlX2dldChzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5
bmNvYmopDQogew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCiANCkBAIC0xMTEsNiArMTEy
LDIyIEBAIGRybV9zeW5jb2JqX2ZlbmNlX2dldChzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmop
DQogCXJldHVybiBmZW5jZTsNCiB9DQogDQorLyoqDQorICogZHJtX3N5bmNvYmpfZmVuY2VfZ2V0
IC0gZ2V0IGEgcmVmZXJlbmNlIHRvIGEgZmVuY2UgaW4gYSBzeW5jIG9iamVjdA0KKyAqIEBzeW5j
b2JqOiBzeW5jIG9iamVjdC4NCisgKg0KKyAqIFNhbWUgZnVuY3Rpb25hbGl0eSBhcyBkcm1fc3lu
Y29ial91c2VyX2ZlbmNlX2dldCgpLCBidXQgdXNlciBmZW5jZXMgYXJlDQorICogZmlsdGVyZWQg
b3V0Lg0KKyAqDQorICogUmV0dXJuczoNCisgKiBFaXRoZXIgdGhlIGZlbmNlIG9mIEBvYmogb3Ig
TlVMTCBpZiB0aGVyZSdzIG5vbmUuDQorICovDQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2Zl
bmNlICoNCitkcm1fc3luY29ial9mZW5jZV9nZXQoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2Jq
KQ0KK3sNCisJcmV0dXJuIGRtYV9mZW5jZV9maWx0ZXJfdXNlcihkcm1fc3luY29ial91c2VyX2Zl
bmNlX2dldChzeW5jb2JqKSk7DQorfQ0KKw0KIHN0cnVjdCBkcm1fc3luY29iaiAqZHJtX3N5bmNv
YmpfZmluZChzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJCQkJICAgICB1MzIgaGFu
ZGxlKTsNCiB2b2lkIGRybV9zeW5jb2JqX2FkZF9wb2ludChzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5
bmNvYmosDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
