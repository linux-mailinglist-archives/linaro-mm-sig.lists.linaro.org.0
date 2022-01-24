Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3754979BD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:42:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEB83401C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:42:26 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id D8EDE3EE9C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:52 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id a13so11822094wrh.9
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Rx5rKIs1h4pkPPx07vOixo6aKMAm9lXxnCcc7E9V7dU=;
        b=dH5sM5ldW3QMoO003IFYaAB598warM4tFOgMpkiy7HjUkEiLWT661aYTZvtyjFvlIC
         p2tArPmx5Ku4JKfUH15rUgXfqFJJdviqXadBtxmEZXL5WABRHkGmZpWA/sPYG8USXPDK
         ahuVcKfjH122XozbZodfY9LBAEVak5BlTNvw7aWIG4WRH5WPx0AI6PqeC41KuBChN1Cy
         tMOs/9Vx1vVBR/xXanhtVaSWvHaBH8s/qbFFC8FhnzfjuG36j0Vw0GFYLt2KqsT1Xf9u
         emO9f+DHsWSaCK7cvOc77OVcweaX+2VUaAymv5LDat8bf9t/6v6jEIHneYIs01tpGDn+
         nbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rx5rKIs1h4pkPPx07vOixo6aKMAm9lXxnCcc7E9V7dU=;
        b=hrRENkIYio5wQVdX/1el2QoFioUHfMpB9CSA7h9xHi02NO0ZhBq5Bsf3Apcd2g7zKU
         EPdjoEoMetFBY22w6uoRduF58J9V+fkmB5FimqECeXRyivHfxDsKp2HE1qF6VdQuygWo
         nSPv819sg2Jf0x1GTU9iylC5aEx1PEiLNzJWhIxnwI0atT/ZYjos8CcD2K27j3mfXNfk
         khS4euaTUbVlSaduaZ2jCwIgB/qOiX5yapFTkpaIPOfUPqu3cjLBMWFISLJerrrWAlU+
         wU4ECry8G44Qpd6kJy9uEBsoMiU5/WzoWPGsTLl9A/3IhTAL2k/f2kHCaYnXI5gs5AnJ
         hEWA==
X-Gm-Message-State: AOAM531z5GWwFlf1l8nZePstSGiGK5Z+c5gg8D1A0aLY/YW7b6mVcozN
	mzoH4fuN8TQqqLpYyMx91sg=
X-Google-Smtp-Source: ABdhPJzUXuu+U7lDxd6QtCBjJhL/Nn1issoTdOPgnREM6UtyKIt6NhHGaoe1OvEjjHrM5pUcUipgkA==
X-Received: by 2002:adf:f5c2:: with SMTP id k2mr13012175wrp.669.1643010051987;
        Sun, 23 Jan 2022 23:40:51 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:51 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:43 +0100
Message-Id: <20220124074046.4865-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: NKLMWUPJVMBDNBM3T66QV5JKJ56EYNGY
X-Message-ID-Hash: NKLMWUPJVMBDNBM3T66QV5JKJ56EYNGY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/9] dma-buf: add dma_fence_chain_contained helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKLMWUPJVMBDNBM3T66QV5JKJ56EYNGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBhIHJlb2NjdXJyaW5nIHBhdHRlcm4gdGhhdCB3ZSBuZWVkIHRvIGV4dHJhY3QgdGhlIGZl
bmNlDQpmcm9tIGEgZG1hX2ZlbmNlX2NoYWluIG9iamVjdC4gQWRkIGEgaGVscGVyIGZvciB0aGlz
Lg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgfCAgNiArKy0t
LS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oICAgfCAxNSArKysrKysrKysrKysr
KysNCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IDA4NGM2OTI3YjczNS4uMDZmOGVmOTdj
NmU4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQorKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCkBAIC0xNDgsOCArMTQ4LDcgQEAg
c3RhdGljIGJvb2wgZG1hX2ZlbmNlX2NoYWluX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpDQogDQogCWRtYV9mZW5jZV9nZXQoJmhlYWQtPmJhc2UpOw0KIAlkbWFfZmVu
Y2VfY2hhaW5fZm9yX2VhY2goZmVuY2UsICZoZWFkLT5iYXNlKSB7DQotCQlzdHJ1Y3QgZG1hX2Zl
bmNlX2NoYWluICpjaGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihmZW5jZSk7DQotCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmID0gY2hhaW4gPyBjaGFpbi0+ZmVuY2UgOiBmZW5jZTsNCisJCXN0cnVjdCBk
bWFfZmVuY2UgKmYgPSBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKGZlbmNlKTsNCiANCiAJCWRt
YV9mZW5jZV9nZXQoZik7DQogCQlpZiAoIWRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZiwgJmhlYWQt
PmNiLCBkbWFfZmVuY2VfY2hhaW5fY2IpKSB7DQpAQCAtMTY1LDggKzE2NCw3IEBAIHN0YXRpYyBi
b29sIGRtYV9mZW5jZV9jaGFpbl9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKQ0KIHN0YXRpYyBib29sIGRtYV9mZW5jZV9jaGFpbl9zaWduYWxlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkNCiB7DQogCWRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaChmZW5jZSwgZmVuY2Up
IHsNCi0JCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWlu
KGZlbmNlKTsNCi0JCXN0cnVjdCBkbWFfZmVuY2UgKmYgPSBjaGFpbiA/IGNoYWluLT5mZW5jZSA6
IGZlbmNlOw0KKwkJc3RydWN0IGRtYV9mZW5jZSAqZiA9IGRtYV9mZW5jZV9jaGFpbl9jb250YWlu
ZWQoZmVuY2UpOw0KIA0KIAkJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZikpIHsNCiAJCQlk
bWFfZmVuY2VfcHV0KGZlbmNlKTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS1jaGFpbi5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggZWU5MDZi
NjU5Njk0Li4xMGQ1MWJjZGY3YjcgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS1jaGFpbi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtNjYs
NiArNjYsMjEgQEAgdG9fZG1hX2ZlbmNlX2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0K
IAlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluLCBiYXNl
KTsNCiB9DQogDQorLyoqDQorICogZG1hX2ZlbmNlX2NoYWluX2NvbnRhaW5lZCAtIHJldHVybiB0
aGUgY29udGFpbmVkIGZlbmNlDQorICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gdGVzdA0KKyAqDQor
ICogSWYgdGhlIGZlbmNlIGlzIGEgZG1hX2ZlbmNlX2NoYWluIHRoZSBmdW5jdGlvbiByZXR1cm5z
IHRoZSBmZW5jZSBjb250YWluZWQNCisgKiBpbnNpZGUgdGhlIGNoYWluIG9iamVjdCwgb3RoZXJ3
aXNlIGl0IHJldHVybnMgdGhlIGZlbmNlIGl0c2VsZi4NCisgKi8NCitzdGF0aWMgaW5saW5lIHN0
cnVjdCBkbWFfZmVuY2UgKg0KK2RtYV9mZW5jZV9jaGFpbl9jb250YWluZWQoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpDQorew0KKwlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IHRvX2Rt
YV9mZW5jZV9jaGFpbihmZW5jZSk7DQorDQorCXJldHVybiBjaGFpbiA/IGNoYWluLT5mZW5jZSA6
IGZlbmNlOw0KK30NCisNCiAvKioNCiAgKiBkbWFfZmVuY2VfY2hhaW5fYWxsb2MNCiAgKg0KLS0g
DQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
