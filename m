Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D1F494F04
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:29:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDCB73EE98
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:29:30 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 2C4D93EE9D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:55 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id i187-20020a1c3bc4000000b0034d2ed1be2aso20480147wma.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Ghsh9/gm33rniIPEwr7l+FWRFmTMwqMlUglC1RcFNYM=;
        b=l9bMzzsltwI9qHdtR3h1sE2seoLlRX+iS78U8FCM5kfNIzk3VpvzRl8E0OmKV8tqDV
         NBiM7ZQVyCCglQ9+zO/JjqCw+y/n0WztmO0SmCejd/lcoALSAMZ1RJRo9B/xFZ/URSde
         J/8qLgvCjtjh9YEer9VMfIA4sx2vKgg77xBfCW6xf7tElFFsI4dkLced3Aj+pkGFDQA6
         Gv7ju3dVonZi/eXjUb0p/bghR1o0DDYX5B3AuwNppeGYjcuU0k9S+aW7KgS/AVZxHtxq
         orw0Z9T0ku9Rv1khXRgVMHEXjSwSJWl08exwEHLcnS36pLsKlUQXuEg20exeBOERpYFR
         Wq3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ghsh9/gm33rniIPEwr7l+FWRFmTMwqMlUglC1RcFNYM=;
        b=lBG9uP7BWooOf0D7Wx84gyapOwg1chouZEvWs4lk0nS00XB6vF98d6IxBbq4Ai1vzc
         JIBWKdAd6cM1T3GGSC8MS8PbVOZZpp6J2K0zAAHlIOmCgrUgOOUW6nmNyd6tjYPmwRee
         UYsZ3NRPBANo31gdHLmpdXms+8zJAiZqIBlLqz5fZ5P1DwXn5FaW2JBXVkSiQ1Y40Ndj
         ZiG2YeydgjkvpPOO0N7gGQGeieeG0SqWZODj4jGyWiy8gO76LpipK1xnawbOKcoN0DfN
         57wJa3KDZdv92cJaz7jlTb5vO9wKPlFmjwfwQKeuhpdALK+7c2b5s17/ua8ADACvEIE4
         AlFg==
X-Gm-Message-State: AOAM5313o2Cr3zzpMbqCSmZnOH1gSbd+T5RDYfrxgDtE1oZQzFE/xsBQ
	wDMMdiTpkI1qrm1emxcopw0=
X-Google-Smtp-Source: ABdhPJwXUxckT/W7J0tLFbMv8MZBiii1SASzIMTUKx/rLqxRPLSuyHNljTcZjW00hHa7S/75UwnYcQ==
X-Received: by 2002:a1c:9ace:: with SMTP id c197mr8899037wme.163.1642685274323;
        Thu, 20 Jan 2022 05:27:54 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:53 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:44 +0100
Message-Id: <20220120132747.2348-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 32KRLFCS6R7E7RBEYP6HAGDJU7RWDN27
X-Message-ID-Hash: 32KRLFCS6R7E7RBEYP6HAGDJU7RWDN27
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 6/9] dma-buf: add dma_fence_chain_contained helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/32KRLFCS6R7E7RBEYP6HAGDJU7RWDN27/>
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
L2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IGZhMzNmNmI3Zjc3Yi4uMmY0OTdmZmI3
MGQ4IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQorKysg
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
