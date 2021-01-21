Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFF32FEED5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 16:32:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7934E6673D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 15:32:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5F8DA66743; Thu, 21 Jan 2021 15:32:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 337196672C;
	Thu, 21 Jan 2021 15:30:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 068806672C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 15:30:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EBC3566738; Thu, 21 Jan 2021 15:30:12 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 97EE966739
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 15:30:09 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id a9so2143313wrt.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 07:30:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gwp+mti/6unhnftOwEo6BpxjLR5MA6bqIJ8IUPn3cOs=;
 b=FjIh4LwmNOjW+32/R704dpqJKMNlWEXyn07xvq47ijXIdk4MJLdtcguXqtN7ggMfTi
 QP5VhfmDo9oMnCqYcrsQu8B4OSqNcoVS/4fHfQPbpyXVUjsLvmbl2NuM4SRHvWK/hVpO
 FW9rT8O3XlbJnht9c+6Ea6dvUdkaXndsfRDqJkYltm/DvjQXxybBuuoUXu+FYzIZSYBo
 wp+IdZP0YBswYjXW0qwVsqCCKDHhaQ9mUQF+PVajDyov8fvNn/4gOPw+WFhMozIzgSOM
 zZnNd9/eZp25x2kscT/G7Hk8JyP8qtxQOQLw3T+b09xNscC+ttKcjMVDVfGfi8L1smMX
 XHMw==
X-Gm-Message-State: AOAM533zPA1ThYT3kCz6XyKYziVVB7bOg52s2jv+5FO/ENZRvZNLtH+h
 sYHovLQklHD2Ol2ECOjPhzdK1w==
X-Google-Smtp-Source: ABdhPJy6GorVysk+oFoqONV7oZt+wQ1tAaWUjwMiKJzGDE0nLgBRPSvxY4+1neq9zorcHYOHV6OOMA==
X-Received: by 2002:a5d:440a:: with SMTP id z10mr8270wrq.266.1611243008784;
 Thu, 21 Jan 2021 07:30:08 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f14sm8269866wre.69.2021.01.21.07.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 07:30:08 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 21 Jan 2021 16:29:51 +0100
Message-Id: <20210121152959.1725404-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
References: <20210121152959.1725404-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 03/11] drm/vblank: Annotate with dma-fence
	signalling section
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyByYXRoZXIgb3ZlcmtpbGwgc2luY2UgY3VycmVudGx5IGFsbCBkcml2ZXJzIGNhbGwg
dGhpcyBmcm9tCmhhcmRpcnEgKG9yIGF0IGxlYXN0IHRpbWVycykuIEJ1dCBtYXliZSBpbiB0aGUg
ZnV0dXJlIHdlJ3JlIGdvaW5nIHRvCmhhdmUgdGhyZWFkIGlycSBoYW5kbGVycyBhbmQgd2hhdCBu
b3QsIGRvZXNuJ3QgaHVydCB0byBiZSBwcmVwYXJlZC4KUGx1cyB0aGlzIGlzIGFuIGVhc3kgc3Rh
cnQgZm9yIHNwcmlua2xpbmcgdGhlc2UgZmVuY2UgYW5ub3RhdGlvbnMgaW50bwpzaGFyZWQgY29k
ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9k
cm1fdmJsYW5rLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92Ymxhbmsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKaW5kZXggMzA5MTJkOGY4MmE1Li5mMmFl
YjliZjMyNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwpAQCAtMjQsNiArMjQsNyBAQAogICogT1RIRVIg
REVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVu
Y2UuaD4KICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KICNpbmNsdWRlIDxsaW51eC9rdGhyZWFk
Lmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlcGFyYW0uaD4KQEAgLTE5MjIsNyArMTkyMyw3IEBA
IGJvb2wgZHJtX2hhbmRsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQg
aW50IHBpcGUpCiB7CiAJc3RydWN0IGRybV92YmxhbmtfY3J0YyAqdmJsYW5rID0gJmRldi0+dmJs
YW5rW3BpcGVdOwogCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7Ci0JYm9vbCBkaXNhYmxlX2lycTsK
Kwlib29sIGRpc2FibGVfaXJxLCBmZW5jZV9jb29raWU7CiAKIAlpZiAoZHJtX1dBUk5fT05fT05D
RShkZXYsICFkcm1fZGV2X2hhc192YmxhbmsoZGV2KSkpCiAJCXJldHVybiBmYWxzZTsKQEAgLTE5
MzAsNiArMTkzMSw4IEBAIGJvb2wgZHJtX2hhbmRsZV92Ymxhbmsoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdW5zaWduZWQgaW50IHBpcGUpCiAJaWYgKGRybV9XQVJOX09OKGRldiwgcGlwZSA+PSBk
ZXYtPm51bV9jcnRjcykpCiAJCXJldHVybiBmYWxzZTsKIAorCWZlbmNlX2Nvb2tpZSA9IGRtYV9m
ZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CisKIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2LT5ldmVu
dF9sb2NrLCBpcnFmbGFncyk7CiAKIAkvKiBOZWVkIHRpbWVzdGFtcCBsb2NrIHRvIHByZXZlbnQg
Y29uY3VycmVudCBleGVjdXRpb24gd2l0aApAQCAtMTk0Miw2ICsxOTQ1LDcgQEAgYm9vbCBkcm1f
aGFuZGxlX3ZibGFuayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcGlwZSkK
IAlpZiAoIXZibGFuay0+ZW5hYmxlZCkgewogCQlzcGluX3VubG9jaygmZGV2LT52YmxhbmtfdGlt
ZV9sb2NrKTsKIAkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2LT5ldmVudF9sb2NrLCBpcnFm
bGFncyk7CisJCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOwogCQlyZXR1
cm4gZmFsc2U7CiAJfQogCkBAIC0xOTY4LDYgKzE5NzIsOCBAQCBib29sIGRybV9oYW5kbGVfdmJs
YW5rKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCBwaXBlKQogCWlmIChkaXNh
YmxlX2lycSkKIAkJdmJsYW5rX2Rpc2FibGVfZm4oJnZibGFuay0+ZGlzYWJsZV90aW1lcik7CiAK
KwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKKwogCXJldHVybiB0cnVl
OwogfQogRVhQT1JUX1NZTUJPTChkcm1faGFuZGxlX3ZibGFuayk7Ci0tIAoyLjMwLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
