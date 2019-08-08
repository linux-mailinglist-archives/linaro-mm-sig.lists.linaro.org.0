Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21579869F2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 21:12:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4381560EA0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Aug 2019 19:12:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3900161738; Thu,  8 Aug 2019 19:12:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2 autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08E4F60961;
	Thu,  8 Aug 2019 19:12:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F186160836
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 19:12:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E525260961; Thu,  8 Aug 2019 19:12:00 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by lists.linaro.org (Postfix) with ESMTPS id 533C960836
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Aug 2019 19:11:59 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id w13so92085691eds.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Aug 2019 12:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=BLRoS5f8NgJJUE0MtU7xiel4uK1EcvzJB7l06wUpXMY=;
 b=QSB41iLSqAPvZZlSqis1c/LInu0k0FsnM3AW+cW/Gycnod0VfHqMHq8CNjyuU+DQzA
 gXt4e+aJROwWt3VK2RbW8lNuRk3xS59O/ZSNbfpLRqHZFN3cteBnzX41LDkqxjZnZruc
 CBGLUUp1wERFz8yCKV0hcqOR1c7VoMHLxfriv9eV27+DRIzJLwrdY6+dk7qt4oYKe29q
 rPKKiKVclG/IqFx1ccW38uHAlL4oNYNOw7jfTR1kcjhNgQmmj4EU/gelRKdGI8AIhZka
 YxoCYNJXMUp3yRQYRhFYJwnuVfk8HoqFanO9woc/1d0pyoAQ1gn1lEWXHMfZc+BrZgAY
 TBSg==
X-Gm-Message-State: APjAAAViu3DLQknkZFtpXxmJ3xG67tj99IaV5HI7J7TLEb4nGyYNCY7Y
 dPDYMxvrhPSEeKumpbJJBfRbBw==
X-Google-Smtp-Source: APXvYqy1vSRL26cQECD0T9XqVIoFTLFPS7XkR34mKjByAPOurOO3ksm/WDw8fMVUN2UsXq2wkuIgOg==
X-Received: by 2002:a17:906:e95:: with SMTP id
 p21mr14618582ejf.205.1565291518286; 
 Thu, 08 Aug 2019 12:11:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id z2sm15474654ejp.73.2019.08.08.12.11.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 12:11:57 -0700 (PDT)
Date: Thu, 8 Aug 2019 21:11:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20190808191154.GP7444@phenom.ffwll.local>
References: <20190808132243.23632-1-christian.koenig@amd.com>
 <4e32c47b-454c-f811-67cc-6757b48918de@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e32c47b-454c-f811-67cc-6757b48918de@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: make dma_fence structure a bit
	smaller v2
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

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDQ6NDE6MzlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBEYW5pZWwgYW55IG1vcmUgY29tbWVudHMgb24gdGhpcyBvbmU/CgpJdCdzIG5v
dCBrZXJuZWxkb2MsIGJ1dCB0aGVuIGFsbCB0aGUgZG1hLSogZG9jcyBuZWVkIHNvbWUgc2VyaW91
cyBsb3ZlCmFueXdheSwgc28gYWxsIGdvb2Qgd2l0aCBtZS4KLURhbmllbAoKPiAKPiBJZiBub3Qg
SSdtIGdvaW5nIHRvIHB1c2ggaXQuCj4gCj4gQ2hyaXN0aWFuLgo+IAo+IEFtIDA4LjA4LjE5IHVt
IDE1OjIyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoKPiA+IFdlIGNsZWFyIHRoZSBjYWxsYmFj
ayBsaXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUgd2UKPiA+IHJlbGVhc2UgdGhl
IGZlbmNlIGl0IGlzIHVudXNlZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xp
c3QKPiA+IHRoYXQgdGhleSBkb24ndCB0aGVtc2VsdmVzIGhvbGQgYSByZWZlcmVuY2UgZm9yLgo+
ID4gCj4gPiBUaGlzIHNtYWxsIGNoYW5nZSBpcyBhY3R1YWxseSBtYWtpbmcgdGhlIHN0cnVjdHVy
ZSAxNiUgc21hbGxlci4KPiA+IAo+ID4gdjI6IGFkZCB0aGUgY29tbWVudCB0byB0aGUgY29kZSBh
cyB3ZWxsLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCB8IDEwICsrKysrKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gPiBpbmRleCAwNWQyOWRiYzdlNjIu
LmJlYTFkMDVjZjUxZSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
PiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiA+IEBAIC02NSw4ICs2NSwxNCBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOwo+ID4gICBzdHJ1Y3QgZG1hX2ZlbmNlIHsKPiA+ICAgCXN0
cnVjdCBrcmVmIHJlZmNvdW50Owo+ID4gICAJY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9w
czsKPiA+IC0Jc3RydWN0IHJjdV9oZWFkIHJjdTsKPiA+IC0Jc3RydWN0IGxpc3RfaGVhZCBjYl9s
aXN0Owo+ID4gKwkvKiBXZSBjbGVhciB0aGUgY2FsbGJhY2sgbGlzdCBvbiBrcmVmX3B1dCBzbyB0
aGF0IGJ5IHRoZSB0aW1lIHdlCj4gPiArCSAqIHJlbGVhc2UgdGhlIGZlbmNlIGl0IGlzIHVudXNl
ZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xpc3QKPiA+ICsJICogdGhhdCB0
aGV5IGRvbid0IHRoZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3IuCj4gPiArCSAqLwo+ID4g
Kwl1bmlvbiB7Cj4gPiArCQlzdHJ1Y3QgcmN1X2hlYWQgcmN1Owo+ID4gKwkJc3RydWN0IGxpc3Rf
aGVhZCBjYl9saXN0Owo+ID4gKwl9Owo+ID4gICAJc3BpbmxvY2tfdCAqbG9jazsKPiA+ICAgCXU2
NCBjb250ZXh0Owo+ID4gICAJdTY0IHNlcW5vOwo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
