Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B56B32AE29D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:10:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D04B2665EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:10:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C5178665EF; Tue, 10 Nov 2020 22:10:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 187AB665E9;
	Tue, 10 Nov 2020 22:10:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D9256192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:09:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 527FA665E9; Tue, 10 Nov 2020 22:09:59 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id F269D6192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:09:57 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r17so5735wrw.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:09:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YcAOS59prb8VFAixQsta0ytgU5jtgd3crgL2WI0lqHU=;
 b=qNQx2D3hbdTBAjcLeUOBjY74P+ZVbE8iVLulqL/WMkJOO/9OLiUY0T9P2apKO1cTY0
 q4Qnk4GJtMGsw3JsboRzlQSwy2AzkyYpRwV2XiEED7GikTTxxkZkEWJPs0I4vvJ7aJs8
 QGHIsdo2s3x4oHELxQp/0sKq6IGcrKJIp25mDwAUxRKGaaBMQQXxpXonFbOXdbi3dmvM
 bRqetY+XtglH8Vi7+7x+Y4zehu1BYSPt2vjNN5PtmVf9CCXIfZ1hN4Y6KwiKzU/ba7VL
 ovNgI47rS96SzF1gVrWvMXZaBr0tPcS1yqXj5G9JXIkm7ql6vTU89jhOIOZHDuOIjvVr
 jMlQ==
X-Gm-Message-State: AOAM530T89t4rTkrkVD0o9T3B5xXKbEYuDHBdiSV43KYOYEw1iitxWFO
 C/f1QTexR96sTmdt7S4ReedDZ9L4K7B0zpIPdXM=
X-Google-Smtp-Source: ABdhPJzYq8S8HxJ8eUtKIYm1d5SwL0ef0M3FjeAuSs+qo8BL/c4huOEldmmpwCCzireXzEYfm4tAWkHJxsxcP323JV8=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr27789872wrn.124.1605046197171; 
 Tue, 10 Nov 2020 14:09:57 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-8-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-8-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:09:46 -0500
Message-ID: <CADnq5_Py-VzeGQMzzGZAO=9OqeniBiXT8625YRcTjVe+bRSNSw@mail.gmail.com>
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
Subject: Re: [Linaro-mm-sig] [PATCH 07/20] drm/radeon/radeon_display: Remove
	unused variable 'mod'
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
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jOiBJ
biBmdW5jdGlvbiDigJhyYWRlb25fZGl24oCZOgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl9kaXNwbGF5LmM6MTA5NDoxMTogd2FybmluZzogdmFyaWFibGUg4oCYbW9k4oCZIHNldCBi
dXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4KPiBDYzogQWxleCBEZXVj
aGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxp
bnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0
IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IHJlcG9ydCB0byA8eG9yZy1k
cml2ZXItYXRpQGxpc3RzLngub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlh
QHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBT
aWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4g
IFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rp
c3BsYXkuYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25f
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jCj4gaW5k
ZXggYmQ2MGYxNmZkMGQ3OC4uNzhmY2VlZGZkOTI1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl9kaXNwbGF5LmMKPiBAQCAtMTA5MSwxMSArMTA5MSw5IEBAIHZvaWQgcmFkZW9u
X2NvbXB1dGVfcGxsX2F2aXZvKHN0cnVjdCByYWRlb25fcGxsICpwbGwsCj4gIC8qIHByZS1hdml2
byAqLwo+ICBzdGF0aWMgaW5saW5lIHVpbnQzMl90IHJhZGVvbl9kaXYodWludDY0X3QgbiwgdWlu
dDMyX3QgZCkKPiAgewo+IC0gICAgICAgdWludDY0X3QgbW9kOwo+IC0KPiAgICAgICAgIG4gKz0g
ZCAvIDI7Cj4KPiAtICAgICAgIG1vZCA9IGRvX2RpdihuLCBkKTsKPiArICAgICAgIGRvX2Rpdihu
LCBkKTsKPiAgICAgICAgIHJldHVybiBuOwo+ICB9Cj4KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
