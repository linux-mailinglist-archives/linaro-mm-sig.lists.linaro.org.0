Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A63F92C2C53
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 17:09:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB45766737
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 16:09:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C04B866739; Tue, 24 Nov 2020 16:09:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9BE5666FA;
	Tue, 24 Nov 2020 16:08:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51654666FA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 16:08:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4364360991; Tue, 24 Nov 2020 16:08:50 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 97AB060991
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 16:07:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x13so2341644wmj.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 08:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8rWhHtCJs5MGkWI+i55QfEjGeto3X3YjovT1RZF7HCw=;
 b=Kk5U0/tzWNKdsKRK0+4eFR/1x9DsB3XuRgiBemrE2RGkMJTGAlUeyRwbjpPGB+hIY+
 TqUgZBe8TsA4x/ia7CXRYQ8P0xtVwnPJ9tPzMMRcKLXxLS9nnuKbb06A7yrx/OnR2M4A
 aUz28yxrVQSEYcuwhcTSwphg8LajO0TMxTbhCn+EwQbvn89V5fiYoHW+S7rtJjqqKbir
 g5tmSV7xxJ3gyi/9nQmCcxvEcTCVAQ1lwBKgrb+EaB+n7z/rebKhNGFHxmriu4JXa7PV
 8JvTko54bDG3FtwFhrA/Ieq3gS1A3bMbNOEtxBjS7gGMrCXEOPqKV1DkBuQRbHIRXrvQ
 qRKw==
X-Gm-Message-State: AOAM532f7dOKfxjrGJkuYq2Pv4+BnbR62NqQfRsv6dGacHscUgLBLENx
 nSgOTtV7ArdfSVmmdUzuhAKpvEmCqbHNLcyE/PY=
X-Google-Smtp-Source: ABdhPJzXrVXCAGS9GPO8l0bGLYugwN6LO3dlONC84XDqaWPFkiid8/EFr/E//N2QyuTgCb+8AQHlbPdbDjKigCUs+JU=
X-Received: by 2002:a1c:1c3:: with SMTP id 186mr5075062wmb.39.1606234070787;
 Tue, 24 Nov 2020 08:07:50 -0800 (PST)
MIME-Version: 1.0
References: <20201123111919.233376-1-lee.jones@linaro.org>
 <20201123111919.233376-18-lee.jones@linaro.org>
In-Reply-To: <20201123111919.233376-18-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 24 Nov 2020 11:07:39 -0500
Message-ID: <CADnq5_MeeQ0tU1AGUSLf8kifm-AAhUER1eMcrkpWQi6dLPmDgg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 17/40] drm/amd/amdgpu/gfx_v6_0: Supply
 description for 'gfx_v6_0_ring_test_ib()'s 'timeout' param
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

T24gTW9uLCBOb3YgMjMsIDIwMjAgYXQgNjoxOSBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92Nl8wLmM6MTkw
Mzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAndGltZW91dCcgbm90IGRl
c2NyaWJlZCBpbiAnZ2Z4X3Y2XzBfcmluZ190ZXN0X2liJwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8
YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5p
ZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBw
bGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2dmeF92Nl8wLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y2XzAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92Nl8wLmMKPiBpbmRleCA2NzFjNDZlYmVjZWQ5Li5j
YTc0NjM4ZGVjOWI3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dm
eF92Nl8wLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjZfMC5jCj4g
QEAgLTE4OTQsNiArMTg5NCw3IEBAIHN0YXRpYyB2b2lkIGdmeF92Nl8wX3JpbmdfZW1pdF9pYihz
dHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsCj4gICAqIGdmeF92Nl8wX3JpbmdfdGVzdF9pYiAtIGJh
c2ljIHJpbmcgSUIgdGVzdAo+ICAgKgo+ICAgKiBAcmluZzogYW1kZ3B1X3Jpbmcgc3RydWN0dXJl
IGhvbGRpbmcgcmluZyBpbmZvcm1hdGlvbgo+ICsgKiBAdGltZW91dDogdGltZW91dCB2YWx1ZSBp
biBqaWZmaWVzLCBvciBNQVhfU0NIRURVTEVfVElNRU9VVAo+ICAgKgo+ICAgKiBBbGxvY2F0ZSBh
biBJQiBhbmQgZXhlY3V0ZSBpdCBvbiB0aGUgZ2Z4IHJpbmcgKFNJKS4KPiAgICogUHJvdmlkZXMg
YSBiYXNpYyBnZnggcmluZyB0ZXN0IHRvIHZlcmlmeSB0aGF0IElCcyBhcmUgd29ya2luZy4KPiAt
LQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
