Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD793517491
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1D0F3ED29
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:25 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id DCBE94805B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:42 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id j15so20284130wrb.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RsppMnZlvpz/PS1/TtGolLScNmUL2porbiCTAL7nvFU=;
        b=a8nOHOjENFk8Xqwt3xRBWqsEDbDkcxAnWu2DgN6ZDlTrGJ1q3k5MN1DjOQ2zViSQg4
         /pvQDUerSXJhjlxEWeERMaolbCrzCoqr56pyfb2TEL7vg+B7hOdMEIVTyYgxNOqqRQiV
         muLLlNRxADbcJZC0Xo7s+vNAzrLICHoUlxYFy64xxzxl8U7CmD+wchoGiqZyArMJGYyf
         m6y8dFfXLwy6xUJ3j6HJ9GsJN24zFxv3tC2YmECdIRGZlHnwRRNeMCFzeycRNMjZc5Rd
         FWhd8+2d5xbZspsYRjuRbwCa1ZanS8BMkagr654IsvWoWehrdkQCdAGIrfrQ0XnLSjlb
         NjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RsppMnZlvpz/PS1/TtGolLScNmUL2porbiCTAL7nvFU=;
        b=ObcXTutsqqinwRkZTh6gH5APKk8lvBX4f4Rt+I9Foke7/uijogXbpo5IzXrQJCYHnz
         5dmXCr3a/G23tiFNBUlQjObJ6S2GcZNcPfwVgHk7YvNBav9DrJXMKxdgHTXAZC0/xMoS
         WhfpmNDNIMHUyEV0cPmv0GmC+7xqfvMKFda2BU0LG+x1aUVLqaBs13htlFLMRDfI9Qcx
         h7J5D3VcwtF8lLqXfSZUT7LPTqj+p8zNkStCC4VQ9PRw3J3FITgBeNCtaC2KE76UYabw
         VMIdRLu2ZI9CQqV3Y2zoqjvFnjQ7ui9iZvD1yvmYy4hNyNkpKfQ6ubAPM0o4526xgVmq
         lywA==
X-Gm-Message-State: AOAM532Qes/4EKvAMYC2BQh78LKkLX20XjJ4mPPtyFuFLiqP/xVVHZh6
	uedNAvBS9tD93qKj1STdHHo=
X-Google-Smtp-Source: ABdhPJyTPKUM05Y+tnsze0dzaZtqnYwBQZsZfdgYGdtgR2xVTDvcPZhlwnNrXn5ccgWpn6iPCc00wA==
X-Received: by 2002:a5d:5228:0:b0:20a:d7e9:7ed8 with SMTP id i8-20020a5d5228000000b0020ad7e97ed8mr9472997wra.687.1651509462037;
        Mon, 02 May 2022 09:37:42 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:41 -0700 (PDT)
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
Date: Mon,  2 May 2022 18:37:17 +0200
Message-Id: <20220502163722.3957-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: Y4EESJHDXJFX6DHVU6BBTYUCE6PCZKAR
X-Message-ID-Hash: Y4EESJHDXJFX6DHVU6BBTYUCE6PCZKAR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/15] drm: add user fence support for atomic out fences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4EESJHDXJFX6DHVU6BBTYUCE6PCZKAR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkIGEgbmV3IGRyaXZlciBmbGFnIGluZGljYXRpbmcgc3VwcG9ydCBmb3IgdXNlciBmZW5jZXMu
DQoNClRoaXMgZmxhZyBpcyB0aGVuIHVzZWQgd2hlbiBjcmVhdGluZyBvdXQgZmVuY2VzIGZvciBh
dG9taWMgbW9kZSBzZXR0aW5nLA0KaW5kaWNhdGluZyB0aGF0IHRoZSBtb2RlIHNldCBtaWdodCBk
ZXBlbmQgb24gYW4gdXNlciBmZW5jZS4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfdWFwaS5jIHwgOCArKysrKysrKw0KIGluY2x1ZGUvZHJtL2RybV9kcnYuaCAgICAgICAg
ICAgICB8IDcgKysrKysrKw0KIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9hdG9taWNfdWFwaS5jDQppbmRleCA0MzRmM2Q0Y2I4YTIuLmUyMTEyYzEwNTY5
YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jDQpAQCAtMTExMSw2ICsxMTExLDcgQEAg
c3RhdGljIGludCBwcmVwYXJlX3NpZ25hbGluZyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KIAkJ
CQkgIHN0cnVjdCBkcm1fb3V0X2ZlbmNlX3N0YXRlICoqZmVuY2Vfc3RhdGUsDQogCQkJCSAgdW5z
aWduZWQgaW50ICpudW1fZmVuY2VzKQ0KIHsNCisJYm9vbCB1c2VfdXNlcl9mZW5jZSA9IGRybV9j
b3JlX2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklWRVJfVVNFUl9GRU5DRSk7DQogCXN0cnVjdCBkcm1f
Y3J0YyAqY3J0YzsNCiAJc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0KIAlzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubjsNCkBAIC0xMTIwLDYgKzExMjEsNyBAQCBzdGF0aWMgaW50
IHByZXBhcmVfc2lnbmFsaW5nKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQogCWlmIChhcmctPmZs
YWdzICYgRFJNX01PREVfQVRPTUlDX1RFU1RfT05MWSkNCiAJCXJldHVybiAwOw0KIA0KKw0KIAlm
b3JfZWFjaF9uZXdfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwgaSkgew0K
IAkJczMyIF9fdXNlciAqZmVuY2VfcHRyOw0KIA0KQEAgLTExNjgsNiArMTE3MCw5IEBAIHN0YXRp
YyBpbnQgcHJlcGFyZV9zaWduYWxpbmcoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCiAJCQlpZiAo
IWZlbmNlKQ0KIAkJCQlyZXR1cm4gLUVOT01FTTsNCiANCisJCQlpZiAodXNlX3VzZXJfZmVuY2Up
DQorCQkJCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVVNFUiwgJmZlbmNlLT5mbGFncyk7DQorDQog
CQkJcmV0ID0gc2V0dXBfb3V0X2ZlbmNlKCZmWygqbnVtX2ZlbmNlcykrK10sIGZlbmNlKTsNCiAJ
CQlpZiAocmV0KSB7DQogCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOw0KQEAgLTEyMDgsNiArMTIx
Myw5IEBAIHN0YXRpYyBpbnQgcHJlcGFyZV9zaWduYWxpbmcoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwNCiAJCWlmICghZmVuY2UpDQogCQkJcmV0dXJuIC1FTk9NRU07DQogDQorCQlpZiAodXNlX3Vz
ZXJfZmVuY2UpDQorCQkJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19VU0VSLCAmZmVuY2UtPmZsYWdz
KTsNCisNCiAJCXJldCA9IHNldHVwX291dF9mZW5jZSgmZlsoKm51bV9mZW5jZXMpKytdLCBmZW5j
ZSk7DQogCQlpZiAocmV0KSB7DQogCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQppbmRleCBm
NjE1OWFjYjg4NTYuLmIyYjhlYThkNGE5ZSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvZHJtL2RybV9k
cnYuaA0KKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oDQpAQCAtOTQsNiArOTQsMTMgQEAgZW51
bSBkcm1fZHJpdmVyX2ZlYXR1cmUgew0KIAkgKiBzeW5jaHJvbml6YXRpb24gb2YgY29tbWFuZCBz
dWJtaXNzaW9uLg0KIAkgKi8NCiAJRFJJVkVSX1NZTkNPQkpfVElNRUxJTkUgICAgICAgICA9IEJJ
VCg2KSwNCisJLyoqDQorCSAqIEBEUklWRVJfVVNFUl9GRU5DRToNCisJICoNCisJICogRHJpdmVy
cyBzdXBwb3J0cyB1c2VyIGZlbmNlcyBhbmQgd2FpdGluZyBmb3IgdGhlIGJlZm9yZSBjb21tYW5k
DQorCSAqIHN1Ym1pc3Npb24uDQorCSAqLw0KKwlEUklWRVJfVVNFUl9GRU5DRQkJPSBCSVQoNyks
DQogDQogCS8qIElNUE9SVEFOVDogQmVsb3cgYXJlIGFsbCB0aGUgbGVnYWN5IGZsYWdzLCBhZGQg
bmV3IG9uZXMgYWJvdmUuICovDQogDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
