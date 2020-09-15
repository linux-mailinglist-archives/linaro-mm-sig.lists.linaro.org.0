Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1AE26A351
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 12:40:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2238666D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Sep 2020 10:40:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CB2FE666D8; Tue, 15 Sep 2020 10:40:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69157666D5;
	Tue, 15 Sep 2020 10:39:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C380661789
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 10:39:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9FFED666D5; Tue, 15 Sep 2020 10:39:52 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 51A8761789
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 10:39:51 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id g96so2709816otb.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Sep 2020 03:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ulpeSnyY5/ewevGEpTqNXhDdyzWhPxYuGEnSEK0qUFE=;
 b=GhCO1L+xNWTNtMyRJ2LZ6QADetkL8kniqj+kw1puQ2UQ2bdGJr2DMZ9RL84h9snziD
 qkFwKE5NqO1HbtyUUY0kibwpdnLm7oZFF0nKZYrOLRno0WXU3gE5XHclEFBCyGdYZvT/
 u+aA0hSjWOwZ8R/jOAPTefBFPpbQVckw1eHwHHNrg71rGK7+nM188ZK8agJc5//IL7W2
 VoTP/Ty60ZFPaHaiFbZSiPNAHBCZgFNN8n9sGOMXHqvgJnvQetHGpXCvXyonVQcTMDXg
 OJGDzTZf37it3cVAszjtKGZShMRb2x4fE6SfIWBNfbK74LvbwMYEZTCO605nT6d6IfI3
 bpag==
X-Gm-Message-State: AOAM530rBx+JotFi70fa2Dq33ZzRpchW3PTRS0fSdZL4QPSRq6UZUF13
 Vi3soth9u1cTsUxbzL2h2erDmQMvNJikdGqUSvXCMA==
X-Google-Smtp-Source: ABdhPJzbKPKIRS8EfyunRCEi31t2CsfncQrKriVKuMZ+LvqfMKqrLvYa64Bhcsp3AhwdlFX/YDNiySv4RihZaKzNLEU=
X-Received: by 2002:a05:6830:1e56:: with SMTP id
 e22mr11974578otj.303.1600166390649; 
 Tue, 15 Sep 2020 03:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <20200914132920.59183-2-christian.koenig@amd.com>
In-Reply-To: <20200914132920.59183-2-christian.koenig@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 15 Sep 2020 12:39:39 +0200
Message-ID: <CAKMK7uHnZgCBUBQ-5D7gCj1v3Z4wKkeO91tefAoJE1B49JFtww@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] drm/shmem-helpers: revert "Redirect
	mmap for imported dma-buf"
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

T24gTW9uLCBTZXAgMTQsIDIwMjAgYXQgMzoyOSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHJldmVydHMgY29tbWl0
IDI2ZDNhYzNjYjA0ZDE3MWE4NjE5NTJlODkzMjRlMzQ3NTk4YTM0N2YuCj4KPiBXZSBuZWVkIHRv
IGZpZ3VyZSBvdXQgaWYgZG1hX2J1Zl9tbWFwKCkgaXMgdmFsaWQgb3Igbm90IGZpcnN0Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgoKVGhlIHRyb3VibGUgaXMgdGhhdCBkb2luZyBkbWEtYnVmIG1tYXAgYnkgbG9va2luZyBhdCB0
aGUgc3RydWN0IHBhZ2VzCmJlaGluZCB0aGUgc2cgbGlzdCBhbmQganVzdCBpbnNlcnRpbmcgdGhv
c2UgaW50byB1c2Vyc3BhY2UgZG9lc24ndApyZWFsbHkgd29yayBhbnkgYmV0dGVyLiBZb3Ugc3Rp
bGwgd29uJ3QgZ2V0IHRoZSB1bm1hcF9tYXBwaW5nX3JhbmdlCmFuZCBoZW5jZSBwdGUgc2hvb3Qt
ZG93bi4gU28gbWF5YmUgZG1hX2J1Zl9tbWFwIGZvcndhcmRpbmcgZG9lc24ndAp3b3JrLCBidXQg
dGhpcyBkb2Vzbid0IG1ha2UgaXQgYW55IGJldHRlci4KCkFsc28gY29tbWl0IG1lc3NhZ2Ugc2hv
dWxkIHByb2JhYmx5IGV4cGxhaW4gYSBiaXQgdGhlIGNvbnRleHQgaGVyZSwKbm90IGEgbG90IG9m
IHBlb3BsZSBoYXZlIGJlZW4gaW4gb3VyIHByaXZhdGUgZGlzY3Vzc2lvbiBvbiB0aGlzLgotRGFu
aWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDMg
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fc2htZW1faGVscGVyLmMKPiBpbmRleCAwYTk1MmYyN2MxODQuLmNkNzI3MzQzZjcyYiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCj4gQEAgLTU5NCw5ICs1
OTQsNiBAQCBpbnQgZHJtX2dlbV9zaG1lbV9tbWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
LCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgICAgICAgIC8qIFJlbW92ZSB0aGUgZmFr
ZSBvZmZzZXQgKi8KPiAgICAgICAgIHZtYS0+dm1fcGdvZmYgLT0gZHJtX3ZtYV9ub2RlX3N0YXJ0
KCZvYmotPnZtYV9ub2RlKTsKPgo+IC0gICAgICAgaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkKPiAt
ICAgICAgICAgICAgICAgcmV0dXJuIGRtYV9idWZfbW1hcChvYmotPmRtYV9idWYsIHZtYSwgMCk7
Cj4gLQo+ICAgICAgICAgc2htZW0gPSB0b19kcm1fZ2VtX3NobWVtX29iaihvYmopOwo+Cj4gICAg
ICAgICByZXQgPSBkcm1fZ2VtX3NobWVtX2dldF9wYWdlcyhzaG1lbSk7Cj4gLS0KPiAyLjE3LjEK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoK
CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
