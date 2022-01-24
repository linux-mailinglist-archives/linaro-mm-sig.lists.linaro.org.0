Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6BC4979B4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:41:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 425E7401C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:41:18 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 94FC13ED94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:49 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id a203-20020a1c98d4000000b0034d2956eb04so666875wme.5
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CoA+r1KF28F1CAMI7pwE9OjWnR4XEafI/kYvKFT/pwo=;
        b=JHN6/biYR6rsgSz3WyO//6PDm/q/8LQIvmA3YasHnIKZrFL3TjAcTmyMNuKT5Bi3/G
         7954P/l9i9zNlzCuS2wFA9Dh2+v9wc8Lf6uHKRMuF+9tJEpWb26Bdo14y8e9A4PehBn7
         WDJDCE5RvXOG+3OV4tlFEnGS7uFDdB68WtNYP4K6rDa/lS8RGlQ2OKmo9u5qMfY4kshp
         O3XPkzBTi5NXPmYW5gMRLVqAtc5sNbWAjJFq11XQURfuCZ3WvxoZ+OVlhtw086htTd+I
         MDyjnCvI+m7FyB0H0kudzDdLh+JMxhAypoklvualZoGpO1pJgIJXyB0S7jioNJhUZZtr
         eZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CoA+r1KF28F1CAMI7pwE9OjWnR4XEafI/kYvKFT/pwo=;
        b=KGxSR+g2ZL/4q579j4Vi1EbSkd1izLPDLdmGp3vTfjcQ8ObpTTiNc77sWyrqLOl5Rx
         hQhAhUsxjZ7LW2AmDQiKjSdx4gaQGeVE02Z8h8asZVJ/IuGp83l/SupLrgeBw8B8cRVi
         +lGanDZ1l1x6o5X66DEwbtJMemrNBRQFAdeeR/fbUK4kN9ilD158dFBA10LHr9wMerrv
         vEKyq1DpY3p2YuZFfoLGfswB1Osr5lfk4fbMQ4Fa/dNpZvzO+9JCYbK2ibx9QZNkAr/B
         YEktH3mAjaT2o4+HKhlnPQePFgRU7MOcjMFOuaerC7EyemgAo2Wd9uSOJpcsy/ZuA65a
         IFMQ==
X-Gm-Message-State: AOAM533mRZ/dm0MeFk4Mv5cORz7PmiRH3dhgAnu17IBilkXUEpZtjDIM
	yYUyv1YXQGP7qa7PMenQ9Is=
X-Google-Smtp-Source: ABdhPJzcv7lRZbMGhd+k7E1Cx+likm9kmGU8+1pG9V8vLBdZv+Wbt7kpy3IymkIZyESK+zh4ET2BFQ==
X-Received: by 2002:a05:600c:1da2:: with SMTP id p34mr611776wms.97.1643010048736;
        Sun, 23 Jan 2022 23:40:48 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:48 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:39 +0100
Message-Id: <20220124074046.4865-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: PXZY4WBSO3DIXP37B4BNGYSHQOD6VZUG
X-Message-ID-Hash: PXZY4WBSO3DIXP37B4BNGYSHQOD6VZUG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/9] dma-buf: warn about dma_fence_array container rules v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PXZY4WBSO3DIXP37B4BNGYSHQOD6VZUG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBub3QgYWxsb3dlZCB0byBuZXN0IGFub3RoZXIgZG1hX2ZlbmNlIGNvbnRhaW5lciBpbnRv
IGEgZG1hX2ZlbmNlX2FycmF5DQpvciBvdGhlcndpc2Ugd2UgY2FuIHJ1biBpbnRvIHJlY3Vyc2lv
bi4NCg0KV2FybiBhYm91dCB0aGF0IHdoZW4gd2UgY3JlYXRlIGEgZG1hX2ZlbmNlX2FycmF5Lg0K
DQp2MjogZml4IGNvbW1lbnQgc3R5bGUgYW5kIHR5cG8gaW4gdGhlIHdhcm5pbmcgcG9pbnRlZCBv
dXQgYnkgVGhvbWFzDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwg
MTQgKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQppbmRleCAzZTA3Zjk2MWUyZjMuLmNiMWJhY2I1YTQy
YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQpAQCAtMTc2LDYgKzE3NiwyMCBAQCBz
dHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1fZmVu
Y2VzLA0KIA0KIAlhcnJheS0+YmFzZS5lcnJvciA9IFBFTkRJTkdfRVJST1I7DQogDQorCS8qDQor
CSAqIGRtYV9mZW5jZV9hcnJheSBvYmplY3RzIHNob3VsZCBuZXZlciBjb250YWluIGFueSBvdGhl
ciBmZW5jZQ0KKwkgKiBjb250YWluZXJzIG9yIG90aGVyd2lzZSB3ZSBydW4gaW50byByZWN1cnNp
b24gYW5kIHBvdGVudGlhbCBrZXJuZWwNCisJICogc3RhY2sgb3ZlcmZsb3cgb24gb3BlcmF0aW9u
cyBvbiB0aGUgZG1hX2ZlbmNlX2FycmF5Lg0KKwkgKg0KKwkgKiBUaGUgY29ycmVjdCB3YXkgb2Yg
aGFuZGxpbmcgdGhpcyBpcyB0byBmbGF0dGVuIG91dCB0aGUgYXJyYXkgYnkgdGhlDQorCSAqIGNh
bGxlciBpbnN0ZWFkLg0KKwkgKg0KKwkgKiBFbmZvcmNlIHRoaXMgaGVyZSBieSBjaGVja2luZyB0
aGF0IHdlIGRvbid0IGNyZWF0ZSBhIGRtYV9mZW5jZV9hcnJheQ0KKwkgKiB3aXRoIGFueSBjb250
YWluZXIgaW5zaWRlLg0KKwkgKi8NCisJd2hpbGUgKG51bV9mZW5jZXMtLSkNCisJCVdBUk5fT04o
ZG1hX2ZlbmNlX2lzX2NvbnRhaW5lcihmZW5jZXNbbnVtX2ZlbmNlc10pKTsNCisNCiAJcmV0dXJu
IGFycmF5Ow0KIH0NCiBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9hcnJheV9jcmVhdGUpOw0KLS0g
DQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
