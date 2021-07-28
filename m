Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E81343D8D7C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 14:09:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 887B163586
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 12:09:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4CE286350A; Wed, 28 Jul 2021 12:09:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 42A0D61813;
	Wed, 28 Jul 2021 12:09:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6A2660A09
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 12:09:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CBDEC61813; Wed, 28 Jul 2021 12:09:30 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by lists.linaro.org (Postfix) with ESMTPS id C3B5C60A09
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 12:09:28 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id z26so3418337oih.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 05:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=epsE9NfA9DWMmQX7B7TUHrwoN0esHZLX/lAuY9R/APs=;
 b=DHWilW85wtL8urWXwK1H35IgOGWct4GNNoH6L2TweyrfSeqohh2SgHlytOyaXk14F4
 nvF7vjevWX82rvVHyvzx1ZbnZeRWF7GYGsfg94wZ9TZMMZCApBFIhorcnBSJAqeydEFq
 z5xPNkjc0P+ANkt/6IP97XE+Nt6V+eT5RGwyw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=epsE9NfA9DWMmQX7B7TUHrwoN0esHZLX/lAuY9R/APs=;
 b=jm9cB+vjWMdwkQFtXUigz/S7+/m25fo9YHRAa6jsu+0C6ls8GfAmIYLbcebeI+4fUl
 yI+sQ5cNlwiXn+nV3VekuuSkUSfsifYbpyYMmmHVU4xAkVrcvXDTFbq0tIMg6yN0yqmG
 xp1MO4HvjiI2Sd6+1kkcAdgcJEwbAHC23f5ij4nmWEsthP/ZVqycS9s7q/4dAT15rTNW
 hRo93sweODDrWpetPW4V5cJkJtOopZ84Nsnyy01ivZNODg6icQq2uMNFZBz68You14Vm
 FMaChUcppmH+GLpqP82PYiqr+mlYlh8WFuF/96Ha9doeUQbpmaU2ilcu/DbIB0RZk4/u
 9Pog==
X-Gm-Message-State: AOAM532ysPi8Nwz9of9rUSGBOXRdLy8MEBICHLmQMW3Gl/nZEgAQtRol
 kRrBzz5yBr2G2+SZmgsi1KuUt5NprJnCr6u+MJAH3Q==
X-Google-Smtp-Source: ABdhPJyoP8j3HcVFOx21JkZ1fbw/u0UOrXcFrbpnUtr9/NGZi5d8IdfwW93rEYxekFa9C908SCfaP6dekAAbolqc/xs=
X-Received: by 2002:aca:d682:: with SMTP id
 n124mr18525460oig.128.1627474168027; 
 Wed, 28 Jul 2021 05:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
 <20210712175352.802687-4-daniel.vetter@ffwll.ch>
 <CAKMK7uG8bMuDP=7-z9nZ38WgMdbeUk96eNx3buTCiaKatYOJxw@mail.gmail.com>
 <2bcfba05-b7d5-1bd9-d74a-b9aac1147e20@gmail.com>
In-Reply-To: <2bcfba05-b7d5-1bd9-d74a-b9aac1147e20@gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 28 Jul 2021 14:09:16 +0200
Message-ID: <CAKMK7uE7GBZYih=KZm5t7-_0P8i7M0tA2KgSOgJsm+-HUE+HzA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 03/18] drm/sched: Add dependency
 tracking
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, David Airlie <airlied@linux.ie>,
 Lee Jones <lee.jones@linaro.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Melissa Wen <melissa.srw@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Nirmoy Das <nirmoy.aiemd@gmail.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMToyOSBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gQW0gMjcuMDcuMjEgdW0gMTM6MDkg
c2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gQWRkaW5nIGEgZmV3IG1vcmUgcGVvcGxlIHRvIHRo
aXMgYmlrZXNoZWQuCj4gPgo+ID4gT24gTW9uLCBKdWwgMTIsIDIwMjEgYXQgMTA6MDIgUE0gRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPgo+ID4+IEBAIC0z
NDksNiArMzY3LDEzIEBAIGludCBkcm1fc2NoZWRfam9iX2luaXQoc3RydWN0IGRybV9zY2hlZF9q
b2IgKmpvYiwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2Vu
dGl0eSAqZW50aXR5LAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKm93bmVyKTsK
PiA+PiAgIHZvaWQgZHJtX3NjaGVkX2pvYl9hcm0oc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYik7
Cj4gPj4gK2ludCBkcm1fc2NoZWRfam9iX2F3YWl0X2ZlbmNlKHN0cnVjdCBkcm1fc2NoZWRfam9i
ICpqb2IsCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpOwo+ID4+ICtpbnQgZHJtX3NjaGVkX2pvYl9hd2FpdF9pbXBsaWNpdChzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqam9iLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGJvb2wgd3JpdGUpOwo+ID4+ICsKPiA+PiArCj4gPiBJJ20gc3RpbGwgd2FpdGlu
ZyBvbiB0aGUgcGFpbnQgZGVsaXZlcnkgZm9yIHRoZXNlIHR3byBmdW5jdGlvbnMgc28gSQo+ID4g
Y2FuIGZpbmlzaCB0aGlzIHNoZWQuCj4KPiBXZWxsIEkgd291bGRuJ3QgY2FsbCB0aGF0IGJpa2Ug
c2hlZGRpbmcsIGdvb2QgbmFtZXMgYXJlIGltcG9ydGFudC4KPgo+IEp1c3QgaW1hZ2luZyB3ZSB3
b3VsZCBoYXZlIGNhbGxlZCB0aGUgZXhjbHVzaXZlLWZlbmNlIHdyaXRlLWZlbmNlIGluc3RlYWQu
CgpTdXJlIG5hbWluZyBtYXR0ZXJzLCBidXQgYXQgbGVhc3QgdG8gbXkgRW5nbGlzaCB1bmRlcnN0
YW5kaW5nIHRoZXJlJ3MKbm90IGEgc2VtYW50aWMgZGlmZmVyZW50IGJldHdlZW4gdGVsbGluZyBz
b21ldGhpbmcgdG8gYXdhaXQgZm9yCnNvbWV0aGluZyBlbHNlIChpLmUuIGFkZCBhIGRlcGVuZGVu
Y3kpIG9yIHRvIHRlbGwgc29tZXRoaW5nIHRvIGFkZCBhCmRlcGVuZGVuY3kgKGkuZS4gYXdhaXQg
dGhhdCB0aGluZyBsYXRlciBvbiBiZWZvcmUgeW91IHN0YXJ0IGRvaW5nIHlvdXIKb3duIHRoaW5n
KS4KCkV4Y2x1c2l2ZSB2cyB3cml0ZSBmZW5jZSBvdG9oIGlzIGEgcHJldHR5IGJpZyBkaWZmZXJl
bmNlIGluIHdoYXQgaXQgbWVhbnMuCgpCdXQgYWxzbyBpZiB0aGVyZSdzIGNvbnNlbnN1cyB0aGF0
IEknbSB3cm9uZyB0aGVuIEknbSBoYXBweSB0byBwaWNrCnRoZSBtb3JlIHByZWZlcnJlZCBvZiB0
aGUgdHdvIG9wdGlvbnMgSSBkZWVtIGVxdWl2YWxlbnQuCgo+IFdoYXQgc3BlYWtzIGFnYWluc3Qg
Y2FsbGluZyB0aGVtIGFkZF9kZXBlbmRlbmN5KCkgYW5kCj4gX2FkZF9pbXBsaWNpdF9kZXBlbmNl
bmNpZXMoKSA/CgpOb3RoaW5nLiBJIGp1c3QgbGlrZSBhbm90aGVyIGFjayBvbiB0aGlzIGJlZm9y
ZSBJIHJlbmFtZSBpdCBhbGwuIEFsc28KSSB3YXNudCBzdXJlIHdoYXQgeW91J2Qgd2FudCB0byBu
YW1lIHRoZSBpbXBsaWNpdCBkZXBlbmRlbmN5IHRoaW5nLgoKTHVjYXMsIEJvcmlzLCBNZWxpc3Nh
LCBhbnkgYWNrcyBoZXJlPwotRGFuaWVsCgo+IFJlZ2FyZHMsCj4gQ2hyaXN0aWFuLgo+Cj4gPgo+
ID4gVGhhbmtzLCBEYW5pZWwKPiA+Cj4gPj4gICB2b2lkIGRybV9zY2hlZF9lbnRpdHlfbW9kaWZ5
X3NjaGVkKHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5ICplbnRpdHksCj4gPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlciAqKnNjaGVk
X2xpc3QsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBudW1fc2NoZWRfbGlzdCk7Cj4gPj4gLS0KPiA+PiAyLjMyLjAKPiA+Pgo+ID4KPgoKCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
