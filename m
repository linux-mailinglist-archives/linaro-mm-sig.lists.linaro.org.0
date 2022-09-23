Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F15E8396
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 22:29:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD4D63F94E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Sep 2022 20:29:20 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by lists.linaro.org (Postfix) with ESMTPS id 7E6E03F94F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 20:28:32 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id d24so1177704pls.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=9WHW9dcNJ7USo93XbepCTz52gEB8RJhZFTCAgOxjaWE=;
        b=MCrThrcpHBXTtrPTMUDahiOxJ8D8ml0adnc2b/ZnUpLhKCWbzkicjK7DVQ0Out5WOD
         FREFmdsJO4H0m9nZW5aGp3kZr8NyuDEg+cjmHSd2PFaU5B93FD7J4xKRdTkOt4VgUbKn
         UMInxMGoGT3uNhBnpORcuWbRNV0aijKsC637c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=9WHW9dcNJ7USo93XbepCTz52gEB8RJhZFTCAgOxjaWE=;
        b=4jf/dBwo/Cy2Oq4egv0wVTjVp+Kh9yOdQ+Gsma8181a72OisrLnEqStKWE87irYuxT
         cixI5uhzdX2VB2M/PBRW49ySgOVhMwDtcK2UsR8srgiPLia5VDZEZcoDWywKj8EIdS5v
         LbVrEfpO+ZRNx+2tUD+MU2Ofld+Xndp8XbMT2s6LDenNyRi9+BEIhyk5tes9mVi3hkll
         of4R6xXQBN8zgU/kcYpClITcBpQ11yKgyyiJupq7HsOqWegzqj3RUIE+8Z0l5OlFnLOA
         YsD5nZ6quxhpUKevEmc4Y8pE5OHf/EfGHm9O6xF4TPaTkhKwcJDF2fcTygbXMyLVYtMo
         J/Ig==
X-Gm-Message-State: ACrzQf3Oo3/3mOt98EZfiwGHu3u9I+ztzsOyuTbB2vzqrHuUC8szivC/
	1ojPmWezDEakfVDPoHEUdgKQ9w==
X-Google-Smtp-Source: AMsMyM5oK9MYI8mIo+EhF+H1NGRpmeDN3XTs1GMolX8M2ezSAV2Ua89sZ12ya0mBIXqqAy1a/ohl1A==
X-Received: by 2002:a17:902:ce85:b0:178:2402:1f7d with SMTP id f5-20020a170902ce8500b0017824021f7dmr10208022plg.81.1663964912148;
        Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n8-20020a170902d2c800b00174d9bbeda4sm6514749plc.197.2022.09.23.13.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 13:28:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:14 -0700
Message-Id: <20220923202822.2667581-9-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536; h=from:subject; bh=1k9cluqwH+m+5FA9iHjyZRl7ltBBZL1qz3WU+O4eJDg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbkkQMIyxW+p5Yq+8oZ2wcfayyBNx+y5dQbw2fi AE/i2oWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5AAKCRCJcvTf3G3AJs+QD/ sFhRuVLRx0nMn49LZ3LgzAUGJu/OCv8HKw/plbSsv+vpxeMZ5Y4Z2yz+8pOjvg3cX6lD5EGOFnhfDh AkybvgBPzOD3UBEmc2+orSVNWeDOnYXG/2dyEL7KYashVN5HVyJ+SxZeRk177uhTjBzjbNRkAQ/SVs Oxp1fa8tJlAzSNr4khPvRqKxudlyHIfws9eHam1m+xu9Yx4IaRjlpv73TPFSCF3B4R61s5d9qdqmI6 QtxsboSAw9VmMnwtQ92JY/zE3XF4HhRRzOwCGtrvQkJf7xWir9bHo5kODtv29MGnYSHOD7MNuLNHvy yT9yMlcMCSUI01Gqw83MyXuzCvvbGT8fRIxDuE0OLV8AuytMSMYtLLvmi8aqicaaH1P85zLrbxJ7VQ ibgpFBaDwYITAulUo26Uezs0cpbObE4vDsRPIMUwW8KNHI4PXEY3ej4CfYwEi05WAoQDnHjsKiI3mw NgRo1Knltm0LSiFomNDPAPC2bLhoNZ5ap0NV7jcfaCdq1s+e8i6UWoxTNuvUmvNZIO/WymKW5MaK0w VFLb8zJYoMtYLSQQRa1twKC/oiHyzfBWzmy0upGh1vD2LcXJMTsecq1f9iPUzq0AYRDLPe3zIIPTo5 8qm3uJJ1hdyE1VeTF4mKkOhP+oujwwLKoB9fQmxF1d5+YH73zekSnLGtymEw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Message-ID-Hash: UJMZO5DZSS2VFRN4V24QQ5VBVEJP7AUX
X-Message-ID-Hash: UJMZO5DZSS2VFRN4V24QQ5VBVEJP7AUX
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>, Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Oj
 eda <ojeda@kernel.org>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 08/16] dma-buf: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UJMZO5DZSS2VFRN4V24QQ5VBVEJP7AUX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCBvZiBkaXNjb3ZlcmluZyB0aGUga21hbGxvYyBidWNrZXQgc2l6ZSBfYWZ0ZXJfIGFs
bG9jYXRpb24sIHJvdW5kDQp1cCBwcm9hY3RpdmVseSBzbyB0aGUgYWxsb2NhdGlvbiBpcyBleHBs
aWNpdGx5IG1hZGUgZm9yIHRoZSBmdWxsIHNpemUsDQphbGxvd2luZyB0aGUgY29tcGlsZXIgdG8g
Y29ycmVjdGx5IHJlYXNvbiBhYm91dCB0aGUgcmVzdWx0aW5nIHNpemUgb2YNCnRoZSBidWZmZXIg
dGhyb3VnaCB0aGUgZXhpc3RpbmcgX19hbGxvY19zaXplKCkgaGludC4NCg0KQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3Jn
DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJv
bWl1bS5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDkgKysrKysrKy0t
DQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMNCmluZGV4IDIwNWFjYjJjNzQ0ZC4uNWIwYTRiODgzMGZmIDEwMDY0NA0KLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jDQpAQCAtOTgsMTIgKzk4LDE3IEBAIHN0YXRpYyB2b2lkIGRtYV9yZXN2X2xpc3Rfc2V0KHN0
cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0LA0KIHN0YXRpYyBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAq
ZG1hX3Jlc3ZfbGlzdF9hbGxvYyh1bnNpZ25lZCBpbnQgbWF4X2ZlbmNlcykNCiB7DQogCXN0cnVj
dCBkbWFfcmVzdl9saXN0ICpsaXN0Ow0KKwlzaXplX3Qgc2l6ZTsNCiANCi0JbGlzdCA9IGttYWxs
b2Moc3RydWN0X3NpemUobGlzdCwgdGFibGUsIG1heF9mZW5jZXMpLCBHRlBfS0VSTkVMKTsNCisJ
LyogUm91bmQgdXAgdG8gdGhlIG5leHQga21hbGxvYyBidWNrZXQgc2l6ZS4gKi8NCisJc2l6ZSA9
IGttYWxsb2Nfc2l6ZV9yb3VuZHVwKHN0cnVjdF9zaXplKGxpc3QsIHRhYmxlLCBtYXhfZmVuY2Vz
KSk7DQorDQorCWxpc3QgPSBrbWFsbG9jKHNpemUsIEdGUF9LRVJORUwpOw0KIAlpZiAoIWxpc3Qp
DQogCQlyZXR1cm4gTlVMTDsNCiANCi0JbGlzdC0+bWF4X2ZlbmNlcyA9IChrc2l6ZShsaXN0KSAt
IG9mZnNldG9mKHR5cGVvZigqbGlzdCksIHRhYmxlKSkgLw0KKwkvKiBHaXZlbiB0aGUgcmVzdWx0
aW5nIGJ1Y2tldCBzaXplLCByZWNhbGN1bGF0ZWQgbWF4X2ZlbmNlcy4gKi8NCisJbGlzdC0+bWF4
X2ZlbmNlcyA9IChzaXplIC0gb2Zmc2V0b2YodHlwZW9mKCpsaXN0KSwgdGFibGUpKSAvDQogCQlz
aXplb2YoKmxpc3QtPnRhYmxlKTsNCiANCiAJcmV0dXJuIGxpc3Q7DQotLSANCjIuMzQuMQ0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
