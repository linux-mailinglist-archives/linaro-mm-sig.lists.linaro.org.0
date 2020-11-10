Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8212AE169
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:14:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE2756192C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 21:14:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 98901665EE; Tue, 10 Nov 2020 21:14:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2944E665CF;
	Tue, 10 Nov 2020 21:13:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B398760F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:13:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A4BBD665CF; Tue, 10 Nov 2020 21:13:52 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 600AC60F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:13:51 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h62so4593325wme.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 13:13:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EvrNTGyzPLrpMkOqbiu0tJDut5rWtaLyxK55CmagbKo=;
 b=fPjRxyRF1T3tBnhCR/KtTPO8D4FCfCXHxQdIDFr65QRLNpMdwIpxaByOZJgHyeDEMM
 GCkFdehDY9gP5SNoZ5OKTXJIl9hOyjKyNP7Ifm02yD+PJqTzFh/TFy9qcR8z24aEm1ty
 MvcBSCTiUisRqmo09GTsacXImnOEQ4Rx6iwuLSOMuiFQxpuPCMTut4ae1+THFfCQ298U
 3lz9f4BUMVFnGYTtbA7RgxBsvMba/u1IVag/R6s4FztqXsqwZiENU5/O5QC5m/CeSqrB
 zJFrvsRQyzSpdeJAY4QiiCmJslmsKAKJuOmWjpZrOUkZX9ixIJJJZSZ8TzR4NjpIRy4Z
 u2Ag==
X-Gm-Message-State: AOAM5302rxjKPUH3BTz0Jqt+6+6JOIOGvycGdS6xunc8QTv8jjYj5g9m
 Rvk3UFqMc+haoJ7ovWBBoVgr3JGULFpWbCjCVYM=
X-Google-Smtp-Source: ABdhPJyHC8vHXsJYCh3vrnV2nELM9iSabVZOSi99vn/Wo7V70lIbQoE1qv+uHNKxSVF66X7FRUYqQDwa+xjr5OZdkGI=
X-Received: by 2002:a1c:80cb:: with SMTP id b194mr27049wmd.73.1605042830518;
 Tue, 10 Nov 2020 13:13:50 -0800 (PST)
MIME-Version: 1.0
References: <20201105144517.1826692-1-lee.jones@linaro.org>
 <20201105144517.1826692-8-lee.jones@linaro.org>
In-Reply-To: <20201105144517.1826692-8-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 16:13:39 -0500
Message-ID: <CADnq5_MGxcgXN-bbXVi4BidW7oa+qW8g9fOPuH2-1gSNWOW5jw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alex Deucher <alexander.deucher@amd.com>, Nirmoy Das <nirmoy.aiemd@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 07/19] gpu: drm: scheduler:
 sched_entity: Demote non-conformant kernel-doc headers
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

T24gVGh1LCBOb3YgNSwgMjAyMCBhdCA5OjUyIEFNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYzoz
MTY6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2YnIG5vdCBkZXNjcmli
ZWQgaW4gJ2RybV9zY2hlZF9lbnRpdHlfY2xlYXJfZGVwJwo+ICBkcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX2VudGl0eS5jOjMxNjogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9y
IG1lbWJlciAnY2InIG5vdCBkZXNjcmliZWQgaW4gJ2RybV9zY2hlZF9lbnRpdHlfY2xlYXJfZGVw
Jwo+ICBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jOjMzMDogd2Fybmlu
ZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnZicgbm90IGRlc2NyaWJlZCBpbiAnZHJt
X3NjaGVkX2VudGl0eV93YWtldXAnCj4gIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
ZW50aXR5LmM6MzMwOiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdjYicg
bm90IGRlc2NyaWJlZCBpbiAnZHJtX3NjaGVkX2VudGl0eV93YWtldXAnCj4KPiBDYzogRGF2aWQg
QWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6
ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6IE5pcm1veSBEYXMgPG5p
cm1veS5haWVtZEBnbWFpbC5jb20+Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX2VudGl0eS5jCj4gaW5kZXggZjhlYzI3N2E2YWE4NS4uYzFhYzNlNDAwM2M2ZiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+IEBAIC0zMDgs
NyArMzA4LDcgQEAgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2Rlc3Ryb3koc3RydWN0IGRybV9zY2hl
ZF9lbnRpdHkgKmVudGl0eSkKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRybV9zY2hlZF9lbnRpdHlf
ZGVzdHJveSk7Cj4KPiAtLyoqCj4gKy8qCj4gICAqIGRybV9zY2hlZF9lbnRpdHlfY2xlYXJfZGVw
IC0gY2FsbGJhY2sgdG8gY2xlYXIgdGhlIGVudGl0aWVzIGRlcGVuZGVuY3kKPiAgICovCj4gIHN0
YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfY2xlYXJfZGVwKHN0cnVjdCBkbWFfZmVuY2UgKmYs
Cj4gQEAgLTMyMSw3ICszMjEsNyBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZW50aXR5X2NsZWFy
X2RlcChzdHJ1Y3QgZG1hX2ZlbmNlICpmLAo+ICAgICAgICAgZG1hX2ZlbmNlX3B1dChmKTsKPiAg
fQo+Cj4gLS8qKgo+ICsvKgo+ICAgKiBkcm1fc2NoZWRfZW50aXR5X2NsZWFyX2RlcCAtIGNhbGxi
YWNrIHRvIGNsZWFyIHRoZSBlbnRpdGllcyBkZXBlbmRlbmN5IGFuZAo+ICAgKiB3YWtlIHVwIHNj
aGVkdWxlcgo+ICAgKi8KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
