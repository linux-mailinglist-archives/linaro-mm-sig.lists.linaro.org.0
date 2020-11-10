Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BC2AE390
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:45:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B4C9665CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:45:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3DEFD665EE; Tue, 10 Nov 2020 22:45:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60953665E9;
	Tue, 10 Nov 2020 22:44:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1978960F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:44:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05376665E9; Tue, 10 Nov 2020 22:44:30 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id A66D060F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:44:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id w24so4832644wmi.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:44:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=E8qX2MyVZaqXQ+DgMT6o987ZTOdf//JmBCbI5n7zhSQ=;
 b=fx6azPZ1gz8ou3QneFZG+NNGdVEplOz4viTWalGCApji2f/3LwyxpOyLW9Xo4P0eUn
 FSlf22wZzNmBOXwj8WWrsGMmRxonxQHWLis12lC06coM2IuhD4cZKYUnLfUldkMerX4p
 /9NGBHd7EnrC9SQHJM1VvKDE47aXIeLSsYlnNFgule2wPUQI5EkTa/2u5FHJkgAkyKGP
 /PFRjWc9iWG8Ca77pZIhe0yCk/k49Xz4YFKFvulU/Q1TWLCbLLlFtPPqfUL3hgy+roM/
 IOL/APj/64Zt+4n74Fr61VvGNnpFaPrncgk8ys6K3KfsfDs6zx7qG7DWPwrb9toP78Gu
 me2A==
X-Gm-Message-State: AOAM530dH/nmOI3eYRWGIXUeAa70NKIg9dY+JRDS+oMOaDeyQnpMZY+j
 nfEc51MEiYyx2BLrA5/zZQD1/8KHNAUiPIAZwTE=
X-Google-Smtp-Source: ABdhPJxyXIebVjU1Atrqpua5dtKDirjyc52NSZc98ZTYE/FsuzlcpOtT7sy7zRJi6WqQkhI2fsPC6nxReuER6O7+2vE=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr350988wmb.39.1605048267737;
 Tue, 10 Nov 2020 14:44:27 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-19-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-19-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:44:16 -0500
Message-ID: <CADnq5_Mbqj1pFvekssqP3L_gW7fZxiVDD1Ux5K6xZ06_bzXcsg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 report to <xorg-driver-ati@lists.x.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 18/20] drm/radeon/radeon_display: Fix
 function doc formatting and missing param issues
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jOjI2
NDogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnX193b3JrJyBub3QgZGVz
Y3JpYmVkIGluICdyYWRlb25fdW5waW5fd29ya19mdW5jJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl9kaXNwbGF5LmM6NDA2OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3Ig
bWVtYmVyICdfX3dvcmsnIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9mbGlwX3dvcmtfZnVuYycK
PiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jOjk1Njogd2FybmluZzog
RnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnZnJlcScgbm90IGRlc2NyaWJlZCBpbiAncmFk
ZW9uX2NvbXB1dGVfcGxsX2F2aXZvJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9k
aXNwbGF5LmM6OTU2OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdmYl9k
aXZfcCcgbm90IGRlc2NyaWJlZCBpbiAncmFkZW9uX2NvbXB1dGVfcGxsX2F2aXZvJwo+ICBkcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmM6OTU2OiB3YXJuaW5nOiBGdW5jdGlv
biBwYXJhbWV0ZXIgb3IgbWVtYmVyICdmcmFjX2ZiX2Rpdl9wJyBub3QgZGVzY3JpYmVkIGluICdy
YWRlb25fY29tcHV0ZV9wbGxfYXZpdm8nCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X2Rpc3BsYXkuYzo5NTY6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3Jl
Zl9kaXZfcCcgbm90IGRlc2NyaWJlZCBpbiAncmFkZW9uX2NvbXB1dGVfcGxsX2F2aXZvJwo+ICBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmM6OTU2OiB3YXJuaW5nOiBGdW5j
dGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdwb3N0X2Rpdl9wJyBub3QgZGVzY3JpYmVkIGluICdy
YWRlb25fY29tcHV0ZV9wbGxfYXZpdm8nCj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIu
ZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IHJlcG9ydCB0byA8eG9yZy1kcml2ZXItYXRpQGxpc3Rz
Lngub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
Zwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcywKCkFsZXgK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYyB8IDEzICsr
KysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMKPiBpbmRleCA3
OGZjZWVkZmQ5MjU1Li5lYjBkNGNiOTVmMGE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX2Rpc3BsYXkuYwo+IEBAIC0yNTYsNyArMjU2LDcgQEAgc3RhdGljIHZvaWQgcmFkZW9u
X2NydGNfZGVzdHJveShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gIC8qKgo+ICAgKiByYWRlb25f
dW5waW5fd29ya19mdW5jIC0gdW5waW4gb2xkIGJ1ZmZlciBvYmplY3QKPiAgICoKPiAtICogQF9f
d29yayAtIGtlcm5lbCB3b3JrIGl0ZW0KPiArICogQF9fd29yazoga2VybmVsIHdvcmsgaXRlbQo+
ICAgKgo+ICAgKiBVbnBpbiB0aGUgb2xkIGZyYW1lIGJ1ZmZlciBvYmplY3Qgb3V0c2lkZSBvZiB0
aGUgaW50ZXJydXB0IGhhbmRsZXIKPiAgICovCj4gQEAgLTM5OCw3ICszOTgsNyBAQCB2b2lkIHJh
ZGVvbl9jcnRjX2hhbmRsZV9mbGlwKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LCBpbnQgY3J0
Y19pZCkKPiAgLyoqCj4gICAqIHJhZGVvbl9mbGlwX3dvcmtfZnVuYyAtIHBhZ2UgZmxpcCBmcmFt
ZWJ1ZmZlcgo+ICAgKgo+IC0gKiBAd29yayAtIGtlcm5lbCB3b3JrIGl0ZW0KPiArICogQF9fd29y
azoga2VybmVsIHdvcmsgaXRlbQo+ICAgKgo+ICAgKiBXYWl0IGZvciB0aGUgYnVmZmVyIG9iamVj
dCB0byBiZWNvbWUgaWRsZSBhbmQgZG8gdGhlIGFjdHVhbCBwYWdlIGZsaXAKPiAgICovCj4gQEAg
LTkzNywxMSArOTM3LDEyIEBAIHN0YXRpYyB2b2lkIGF2aXZvX2dldF9mYl9yZWZfZGl2KHVuc2ln
bmVkIG5vbSwgdW5zaWduZWQgZGVuLCB1bnNpZ25lZCBwb3N0X2RpdiwKPiAgICogcmFkZW9uX2Nv
bXB1dGVfcGxsX2F2aXZvIC0gY29tcHV0ZSBQTEwgcGFyYW1hdGVycwo+ICAgKgo+ICAgKiBAcGxs
OiBpbmZvcm1hdGlvbiBhYm91dCB0aGUgUExMCj4gKyAqIEBmcmVxOiB0YXJnZXQgZnJlcXVlbmN5
Cj4gICAqIEBkb3RfY2xvY2tfcDogcmVzdWx0aW5nIHBpeGVsIGNsb2NrCj4gLSAqIGZiX2Rpdl9w
OiByZXN1bHRpbmcgZmVlZGJhY2sgZGl2aWRlcgo+IC0gKiBmcmFjX2ZiX2Rpdl9wOiBmcmFjdGlv
bmFsIHBhcnQgb2YgdGhlIGZlZWRiYWNrIGRpdmlkZXIKPiAtICogcmVmX2Rpdl9wOiByZXN1bHRp
bmcgcmVmZXJlbmNlIGRpdmlkZXIKPiAtICogcG9zdF9kaXZfcDogcmVzdWx0aW5nIHJlZmVyZW5j
ZSBkaXZpZGVyCj4gKyAqIEBmYl9kaXZfcDogcmVzdWx0aW5nIGZlZWRiYWNrIGRpdmlkZXIKPiAr
ICogQGZyYWNfZmJfZGl2X3A6IGZyYWN0aW9uYWwgcGFydCBvZiB0aGUgZmVlZGJhY2sgZGl2aWRl
cgo+ICsgKiBAcmVmX2Rpdl9wOiByZXN1bHRpbmcgcmVmZXJlbmNlIGRpdmlkZXIKPiArICogQHBv
c3RfZGl2X3A6IHJlc3VsdGluZyByZWZlcmVuY2UgZGl2aWRlcgo+ICAgKgo+ICAgKiBUcnkgdG8g
Y2FsY3VsYXRlIHRoZSBQTEwgcGFyYW1ldGVycyB0byBnZW5lcmF0ZSB0aGUgZ2l2ZW4gZnJlcXVl
bmN5Ogo+ICAgKiBkb3RfY2xvY2sgPSAocmVmX2ZyZXEgKiBmZWVkYmFja19kaXYpIC8gKHJlZl9k
aXYgKiBwb3N0X2RpdikKPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
