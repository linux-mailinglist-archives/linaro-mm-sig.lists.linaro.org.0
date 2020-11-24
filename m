Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 121282C2BC7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 16:50:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 263216673B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Nov 2020 15:50:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 192B16673D; Tue, 24 Nov 2020 15:50:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA2A566738;
	Tue, 24 Nov 2020 15:50:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 41A3666735
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 15:50:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 36AA366738; Tue, 24 Nov 2020 15:50:09 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id EBD5266735
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 15:50:07 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id 23so22776313wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Nov 2020 07:50:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vEHV5NzbwJ9itZIOZg0YcV4vFlrMnth6sSMm0U/4U18=;
 b=IGOY0NYzx5ZR/YwjM6Hsg859pR8aWZN7pHPOHtqUhOrHC/3xN0n26BiUBcPQ58qVrc
 zlMY9ACJytvlk28AjSZhLp7CHuZ3Fase7NDMRxNo//Ew39fDno7HTm2YQ2pR0FAlOKRe
 1lih6LnNpIyDKKp/6W+wnS8sRuNVwQ6f9dReWaqOre4bRlROa1bwCEb9iaCr8pj3qcFN
 vmK/Gm/5iTO2xCewxKULy24ni/V9aJPUHN5JthQilFW9u7E/0A6GAJDTCPI1YshRzKM2
 DKnK3RWPeN/tkgrL8pjLSL5UtGHJiVD5L1G8Pg5rKPsdgrtWVtDQ1LXTF9sR/y8QMXUM
 UV4w==
X-Gm-Message-State: AOAM532ReglguZ4Cso+T9A6tTqsEDGQ/oRlRXH70Myof8H51qLfTLbJp
 PDogZRm5YvVZESzGcTkYO0bi6RSwIxycxXQVq0U=
X-Google-Smtp-Source: ABdhPJzerQP49Kf7yuyCXUUv4/+uMPHMJ+Frw4C4JWUo8vpK1xvcKt1uN5gVCEtR/4wUmA2B3xr5/nsHrOl93j4H360=
X-Received: by 2002:a5d:400a:: with SMTP id n10mr5940385wrp.362.1606233007147; 
 Tue, 24 Nov 2020 07:50:07 -0800 (PST)
MIME-Version: 1.0
References: <20201123111919.233376-1-lee.jones@linaro.org>
 <20201123111919.233376-4-lee.jones@linaro.org>
In-Reply-To: <20201123111919.233376-4-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 24 Nov 2020 10:49:56 -0500
Message-ID: <CADnq5_P=4f5gq+mS358d0zGEB6yr0PGruAKKLoiiEb9hq30thg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 03/40] drm/amd/amdgpu/amdgpu_ib: Provide
 docs for 'amdgpu_ib_schedule()'s 'job' param
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
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pYi5jOjEy
Nzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnam9iJyBub3QgZGVzY3Jp
YmVkIGluICdhbWRncHVfaWJfc2NoZWR1bGUnCj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5k
ZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENj
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3Vt
aXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFA
dmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNp
Z25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkLiAg
VGhhbmtzIQoKQWxleAoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9pYi5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pYi5jIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2liLmMKPiBpbmRleCBjNjlhZjliODZjYzYwLi4wMjRk
MGE1NjNhNjUyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9pYi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2liLmMKPiBA
QCAtMTA2LDYgKzEwNiw3IEBAIHZvaWQgYW1kZ3B1X2liX2ZyZWUoc3RydWN0IGFtZGdwdV9kZXZp
Y2UgKmFkZXYsIHN0cnVjdCBhbWRncHVfaWIgKmliLAo+ICAgKiBAcmluZzogcmluZyBpbmRleCB0
aGUgSUIgaXMgYXNzb2NpYXRlZCB3aXRoCj4gICAqIEBudW1faWJzOiBudW1iZXIgb2YgSUJzIHRv
IHNjaGVkdWxlCj4gICAqIEBpYnM6IElCIG9iamVjdHMgdG8gc2NoZWR1bGUKPiArICogQGpvYjog
am9iIHRvIHNjaGVkdWxlCj4gICAqIEBmOiBmZW5jZSBjcmVhdGVkIGR1cmluZyB0aGlzIHN1Ym1p
c3Npb24KPiAgICoKPiAgICogU2NoZWR1bGUgYW4gSUIgb24gdGhlIGFzc29jaWF0ZWQgcmluZyAo
YWxsIGFzaWNzKS4KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
