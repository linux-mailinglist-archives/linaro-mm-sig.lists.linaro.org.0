Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 41417C1C05
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Sep 2019 09:22:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70ADF61789
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Sep 2019 07:22:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 625A7617A5; Mon, 30 Sep 2019 07:22:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF5D4608DF;
	Mon, 30 Sep 2019 07:22:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC99E60756
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Sep 2019 07:22:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE9E2608DF; Mon, 30 Sep 2019 07:22:17 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id 55DF9607C7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Sep 2019 07:22:15 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id x3so10255410oig.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Sep 2019 00:22:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=svnk0kf5Xru68vE4BD29OUahoTO1J+C23zLdUFz0Myw=;
 b=G+9trPXOP2xsFdE6nIoDy7MmsCvQ/znewQ6+5FBay8J4q3MkXGXHSkJPEDwqh2oycJ
 VD76BN9ASdYg79HTV3CWTBnFvtrWO81ZbmjYzdkSd8+ooLhbbvX1ATlhwbItffsrFLZb
 I9scM6DMtrOickXe3t2NorVSmXMFRO8ycOTVo3DSNqe6rSYXNMW9wECKV2Hct3Ba8n5c
 JMAiZaUJPLI800ICeSMdDD4SlKnoiLHBq0NFomj8f7e0S2/P0Rg26GC4JlRJVCVSqZRK
 sLd4RSYgujhTXOzM3CH/+kcM75wpZdMW6EvmhO35l/inWacCrNkFR92ZtmhQp5B1oErK
 vd2g==
X-Gm-Message-State: APjAAAU3EHBPFq1rFfD9s+RdsJl54IL9jHjX/+vS0BVfX3OtALb4xWBn
 0oAgFn7gBLUq9YmIWtdw6R/+TV8Nyi4XvGESi4GSVg==
X-Google-Smtp-Source: APXvYqxwKR+QPHNX2ok2B2LSkEYN+8FGUtI+tPxhseBR9iydwvwshhXowsojDK1gwteppSZgpQVoGbplLypHZsMXfkU=
X-Received: by 2002:aca:d841:: with SMTP id p62mr17233434oig.128.1569828134719; 
 Mon, 30 Sep 2019 00:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190922074900.853-1-yuq825@gmail.com>
In-Reply-To: <20190922074900.853-1-yuq825@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 30 Sep 2019 09:22:03 +0200
Message-ID: <CAKMK7uHro9W8GqvuVf0Ruji691U7Trc_jmS3U-OEacLFDH6P1A@mail.gmail.com>
To: Qiang Yu <yuq825@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 lima@lists.freedesktop.org, dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/resv: fix exclusive fence get
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

T24gU3VuLCBTZXAgMjIsIDIwMTkgYXQgMjowOCBQTSBRaWFuZyBZdSA8eXVxODI1QGdtYWlsLmNv
bT4gd3JvdGU6Cj4KPiBUaGlzIGNhdXNlcyBrZXJuZWwgY3Jhc2ggd2hlbiB0ZXN0aW5nIGxpbWEg
ZHJpdmVyLgo+Cj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KPiBGaXhlczogYjhjMDM2ZGZjNjZmICgiZG1hLWJ1Zjogc2ltcGxpZnkgcmVzZXJ2YXRpb25f
b2JqZWN0X2dldF9mZW5jZXNfcmN1IGEgYml0IikKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8
eXVxODI1QGdtYWlsLmNvbT4KClNlbGZ0ZXN0IGZvciB0aGlzIHdvdWxkIGJlIGxvdmVseSwgbm93
IHRoYXQgdGhlIGJhc2ljIGluZnJhc3RydWN0dXJlCmlzIGluIHBsYWNlIC4uLgotRGFuaWVsCgo+
IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IGluZGV4
IDQyYThmM2YxMTY4MS4uNzA5MDAyNTE1NTUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBAQCAtNDcx
LDcgKzQ3MSw3IEBAIGludCBkbWFfcmVzdl9nZXRfZmVuY2VzX3JjdShzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwKPiAgICAgICAgIGlmIChwZmVuY2VfZXhjbCkKPiAgICAgICAgICAgICAgICAgKnBmZW5j
ZV9leGNsID0gZmVuY2VfZXhjbDsKPiAgICAgICAgIGVsc2UgaWYgKGZlbmNlX2V4Y2wpCj4gLSAg
ICAgICAgICAgICAgIHNoYXJlZFsrK3NoYXJlZF9jb3VudF0gPSBmZW5jZV9leGNsOwo+ICsgICAg
ICAgICAgICAgICBzaGFyZWRbc2hhcmVkX2NvdW50KytdID0gZmVuY2VfZXhjbDsKPgo+ICAgICAg
ICAgaWYgKCFzaGFyZWRfY291bnQpIHsKPiAgICAgICAgICAgICAgICAga2ZyZWUoc2hhcmVkKTsK
PiAtLQo+IDIuMTcuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
