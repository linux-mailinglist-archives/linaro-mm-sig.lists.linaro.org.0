Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F42C2CAA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 17:20:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4895A666FA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 16:20:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A9806671D; Tue, 24 Nov 2020 16:20:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8C5966735;
	Tue, 24 Nov 2020 16:19:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D11F966735
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 16:19:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1C38666FA; Tue, 24 Nov 2020 16:19:25 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id DB376666FA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 16:19:23 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s13so3440097wmh.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 08:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7HGiO0DgR9eXvqkxA8eOYyORP/pAS/lYW6lSD1i1EXI=;
 b=GcfmkCJqYv75u6ypMJSrSJ0yAMu5dyrRbdl5etVt7OZP0MO/GpbMWlCHVyhptLr4/c
 Q0TL4hkU7pKqOmbJ/5r5yHhMDNWtygdQAzcYBUHN7MUFyZNmS64Ee1vF7rD9IGmKpNiQ
 fjV+LfTXKut/Vwtasm//BYZygCsA2QlMI9NJbBUE2diLGysdXo3FaRWAGdtUzBLJa53k
 aytrmWKmbx09mFCPVpXOUNrJaKf2II7AlHWTKoNplt887l/PWMWzi2ObDXySZfvUT7Bt
 vzeGUuP61W1cY2e1ofpUBGvb4ytGGY5xMPbmwZUsbV/H8eqHoaaAf1XmpU6n5iQxn277
 6Qdg==
X-Gm-Message-State: AOAM530hNcxkX8yBzGN87+Y84RlSzMgIzgt/zTCsp3Nssh1i+NpnpSxx
 eUHTqwvrERx0eeQhpGOVr9Wvabbj4MHuT9pkBgs=
X-Google-Smtp-Source: ABdhPJwGyYag4yGAiHq/SMaLo1AA1wmaXzNEGygYbvFDgDJscO523CXblf6N8wr/xd8P8i/MgAybqmvp+cnzQyuQwCQ=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr5127721wmb.39.1606234763015;
 Tue, 24 Nov 2020 08:19:23 -0800 (PST)
MIME-Version: 1.0
References: <20201123111919.233376-1-lee.jones@linaro.org>
 <20201123111919.233376-34-lee.jones@linaro.org>
In-Reply-To: <20201123111919.233376-34-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 24 Nov 2020 11:19:12 -0500
Message-ID: <CADnq5_Nt3pi9F1fGF24ZWk2rE_Hk+g2-dNhQrCcoKMxNizFLCg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 33/40] drm/amd/amdgpu/cik_sdma: Add one
 and remove another function param description
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

T24gTW9uLCBOb3YgMjMsIDIwMjAgYXQgNjoyMCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmM6Mjgy
OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdmbGFncycgbm90IGRlc2Ny
aWJlZCBpbiAnY2lrX3NkbWFfcmluZ19lbWl0X2ZlbmNlJwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9jaWtfc2RtYS5jOjI4Mjogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRl
ciAnZmVuY2UnIGRlc2NyaXB0aW9uIGluICdjaWtfc2RtYV9yaW5nX2VtaXRfZmVuY2UnCj4KPiBD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+CgpBcHBsaWVkIHdpdGggbWlub3IgY2hhbmdlcy4gIFRoYW5rcyEKCkFsZXgK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmMgfCA0ICsrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9jaWtfc2RtYS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvY2lrX3NkbWEuYwo+IGluZGV4IGYxZTk5NjZlNzI0NGUuLjI4
YTY0ZGU4YWUwZTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvY2lr
X3NkbWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Npa19zZG1hLmMKPiBA
QCAtMjcxLDcgKzI3MSw3IEBAIHN0YXRpYyB2b2lkIGNpa19zZG1hX3JpbmdfZW1pdF9oZHBfZmx1
c2goc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQo+ICAgKiBAcmluZzogYW1kZ3B1IHJpbmcgcG9p
bnRlcgo+ICAgKiBAYWRkcjogYWRkcmVzcwo+ICAgKiBAc2VxOiBzZXF1ZW5jZSBudW1iZXIKPiAt
ICogQGZlbmNlOiBhbWRncHUgZmVuY2Ugb2JqZWN0Cj4gKyAqIEBmbGFnczogZmVuY2UgcmVsYXRl
ZCBmbGFncwo+ICAgKgo+ICAgKiBBZGQgYSBETUEgZmVuY2UgcGFja2V0IHRvIHRoZSByaW5nIHRv
IHdyaXRlCj4gICAqIHRoZSBmZW5jZSBzZXEgbnVtYmVyIGFuZCBETUEgdHJhcCBwYWNrZXQgdG8g
Z2VuZXJhdGUKPiBAQCAtMjc5LDcgKzI3OSw3IEBAIHN0YXRpYyB2b2lkIGNpa19zZG1hX3Jpbmdf
ZW1pdF9oZHBfZmx1c2goc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQo+ICAgKi8KPiAgc3RhdGlj
IHZvaWQgY2lrX3NkbWFfcmluZ19lbWl0X2ZlbmNlKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywg
dTY0IGFkZHIsIHU2NCBzZXEsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHVuc2lnbmVkIGZsYWdzKQo+IC17Cj4gKyAgewo+ICAgICAgICAgYm9vbCB3cml0ZTY0Yml0ID0g
ZmxhZ3MgJiBBTURHUFVfRkVOQ0VfRkxBR182NEJJVDsKPiAgICAgICAgIC8qIHdyaXRlIHRoZSBm
ZW5jZSAqLwo+ICAgICAgICAgYW1kZ3B1X3Jpbmdfd3JpdGUocmluZywgU0RNQV9QQUNLRVQoU0RN
QV9PUENPREVfRkVOQ0UsIDAsIDApKTsKPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0
Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
