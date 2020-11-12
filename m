Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C119B2B106D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Nov 2020 22:29:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFD9A66635
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Nov 2020 21:29:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E1213666D9; Thu, 12 Nov 2020 21:29:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EACD6666D8;
	Thu, 12 Nov 2020 21:28:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A8E266635
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 21:28:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5F977666D8; Thu, 12 Nov 2020 21:28:55 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 2D8D666635
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 21:28:54 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c16so6727279wmd.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 13:28:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G2BYNuIxlaObS9p75wcHPXenJKV2OHZTqCiRZ3u3/NU=;
 b=YxCn94S+a7tTk/OafcHesYHbjA4KBZE9L05Jfjo/y0S569718Y95doFBICjRm/8Nz3
 2lpy35U4KbMj7wnqtnDxdabAjFE16C2JPAvUDIAomYAenr+bA+PqOQbO8dKJr3RDwyUb
 DZSyb+kuFdhAzpJ4qP58fgYj8bnD8ET0aqJieCo+HeFfNVRhVGvb+cbO33StS1bnI7mJ
 9QBxrBzSYGVUUFvZLpQxaYz2vxqA87W7DlGeIKHECLqfq64niyLJXLXEIRhNNxgZBYLb
 CnJELenB7uVQyKG7z7c6u6XUQgHK5kI4WLfdDfCQFM6zH9cqVoMZFoKfghOWiKF7PrT+
 6GxQ==
X-Gm-Message-State: AOAM531wbP2cG6nYlDOTSZGynFaEVJ1/bOGekbdIPT42YnKGq4A6cUly
 kzO5X59TNrziZ0p2u91BFn0Zr0Im48OmAs+QOZ8=
X-Google-Smtp-Source: ABdhPJwACnsJDr0htDUIcZ1390M+ztGM6mHPEVrjB75T5GqTdIpxllFizlL3nKTN1oMXRIMVR4CpDhPQIZX/zXW37Sk=
X-Received: by 2002:a1c:8150:: with SMTP id c77mr1687617wmd.26.1605216522204; 
 Thu, 12 Nov 2020 13:28:42 -0800 (PST)
MIME-Version: 1.0
References: <20201112190039.2785914-1-lee.jones@linaro.org>
 <20201112190039.2785914-20-lee.jones@linaro.org>
In-Reply-To: <20201112190039.2785914-20-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 12 Nov 2020 16:28:30 -0500
Message-ID: <CADnq5_Pu0v=JHsRnB_M1OJNqKOZT0otcU1GCtif12GnKt4ArAg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 19/30] drm/amd/amdgpu/amdgpu_cs: Add a
 couple of missing function param descriptions
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

T24gVGh1LCBOb3YgMTIsIDIwMjAgYXQgMjowNyBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jOjY4
NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnYmFja29mZicgbm90IGRl
c2NyaWJlZCBpbiAnYW1kZ3B1X2NzX3BhcnNlcl9maW5pJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfY3MuYzoxNjU1OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3Ig
bWVtYmVyICdtYXAnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9jc19maW5kX21hcHBpbmcnCj4K
PiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hy
aXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IEpl
cm9tZSBHbGlzc2UgPGdsaXNzZUBmcmVlZGVza3RvcC5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9jcy5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwo+IGluZGV4IDhk
Mjg3OGU5NTBkYWIuLjU5NGEwMTA4ZTkwZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfY3MuYwo+IEBAIC02NzYsNiArNjc2LDcgQEAgc3RhdGljIGludCBhbWRncHVfY3Nf
c3luY19yaW5ncyhzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCkKPiAgICogY3NfcGFyc2VyX2Zp
bmkoKSAtIGNsZWFuIHBhcnNlciBzdGF0ZXMKPiAgICogQHBhcnNlcjogICAgcGFyc2VyIHN0cnVj
dHVyZSBob2xkaW5nIHBhcnNpbmcgY29udGV4dC4KPiAgICogQGVycm9yOiAgICAgZXJyb3IgbnVt
YmVyCj4gKyAqIEBiYWNrb2ZmOiAgIGluZGljYXRvciB0byBiYWNrb2ZmIHRoZSByZXNlcnZhdGlv
bgo+ICAgKgo+ICAgKiBJZiBlcnJvciBpcyBzZXQgdGhhbiB1bnZhbGlkYXRlIGJ1ZmZlciwgb3Ro
ZXJ3aXNlIGp1c3QgZnJlZSBtZW1vcnkKPiAgICogdXNlZCBieSBwYXJzaW5nIGNvbnRleHQuCj4g
QEAgLTE2NDQsNiArMTY0NSw3IEBAIGludCBhbWRncHVfY3Nfd2FpdF9mZW5jZXNfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgICogQHBhcnNlcjogY29tbWFuZCBz
dWJtaXNzaW9uIHBhcnNlciBjb250ZXh0Cj4gICAqIEBhZGRyOiBWTSBhZGRyZXNzCj4gICAqIEBi
bzogcmVzdWx0aW5nIEJPIG9mIHRoZSBtYXBwaW5nIGZvdW5kCj4gKyAqIEBtYXA6IFBsYWNlaG9s
ZGVyIHRvIHJldHVybiBmb3VuZCBCTyBtYXBwaW5nCj4gICAqCj4gICAqIFNlYXJjaCB0aGUgYnVm
ZmVyIG9iamVjdHMgaW4gdGhlIGNvbW1hbmQgc3VibWlzc2lvbiBjb250ZXh0IGZvciBhIGNlcnRh
aW4KPiAgICogdmlydHVhbCBtZW1vcnkgYWRkcmVzcy4gUmV0dXJucyBhbGxvY2F0aW9uIHN0cnVj
dHVyZSB3aGVuIGZvdW5kLCBOVUxMCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
