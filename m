Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF9948D611
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 11:50:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91AC83ED87
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 10:50:53 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 8FCFC3ED2E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 10:50:49 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id g11so18074064lfu.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 02:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NYdzsGyEzIJrHP8JYJwpG+jE5+s3oneWhUEBd32KPfc=;
        b=DhhsZ4FcY1ymdPypyg+ee+pcqdiHSzGlYLuwyZma/jDW9t3eFFml3cIDRE+Xfvh99+
         +4oBLTJzqus8vayylwYSGzQKdoQjicyTib8TNKHtenL7vge/5KER7iSIJlAE22OHhGJe
         x26kaaSxBgB6/8hltdzilL4tnDFYGvTapV+X0GXSpKGaE1H9QCc424YeLyw+l6/UYVla
         wQtNgHr259qGkouEiYzjKPAtE/9phQmnDoID2v36ht4co+cvmhsonWjWDetrDg23Ae8Y
         oYC9lNdWL0QXBuHtQ0w3FPum0JejOV6lgCawUm6ESNZY8+czHxksEfkBGAloMBHoU6PX
         K0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NYdzsGyEzIJrHP8JYJwpG+jE5+s3oneWhUEBd32KPfc=;
        b=j8L8VAQAu0q3lTdqRkMybKdTFFmAkS5ba+OBz+xgV0WNo3sXI5cfS2v53w4/ea3Gz0
         nI/bAhBHQuNyVwr/jvdDtU0TMPSTNDlDbXn88ngyyLR2+mU6jNZ9Hx92lRcisEXJJEHT
         G7iZEJ9L7nE70m65rqkFU8c2H9gSOIQxMfba8bhizlfEfXHvxCAKODnGFBGpSgt0spZo
         WAgm7CQkNc7Kj/WUeeEJFIo7Hg1A2mhXLlJlnHBEgIl0lYQYseaOXrEGyrSJxSWT4ShK
         eDy/7WoysXOBDxbEUF+Mn0+ipK2e5mLWk44rgO/AiVd8AhANxfTdcdFz3kVir07C5SRe
         cKfQ==
X-Gm-Message-State: AOAM531DRTF49QWXs5VH7IuzNnwz+9vyq22YyaY2P1nvQI75nYCf+5th
	cmO+RqsbkQ7HfoAeEUUPvZTdcSkdFZFM2kfAzUW0nsk0
X-Google-Smtp-Source: ABdhPJyhIUaFCImjQEUT36hwyszgx3JmEnCBpsaSjbzQZGA3S2YuSL/rPG5RGeiNf1e3gQIc9S9mjOGoHwjjuLtLZ6g=
X-Received: by 2002:a2e:9ec9:: with SMTP id h9mr2544065ljk.122.1642071048268;
 Thu, 13 Jan 2022 02:50:48 -0800 (PST)
MIME-Version: 1.0
References: <c05749d0-4c24-8763-a459-27257b2524ed@amd.com> <20220105063643.119874-1-guangming.cao@mediatek.com>
In-Reply-To: <20220105063643.119874-1-guangming.cao@mediatek.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 13 Jan 2022 16:20:36 +0530
Message-ID: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
To: guangming.cao@mediatek.com
Message-ID-Hash: YJJ2CIBGBSMNYCNADAPWMMZTOLUBLFYZ
X-Message-ID-Hash: YJJ2CIBGBSMNYCNADAPWMMZTOLUBLFYZ
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, brian.starkey@arm.com, benjamin.gaignard@linaro.org, bo.song@mediatek.com, dri-devel@lists.freedesktop.org, jianjiao.zeng@mediatek.com, john.stultz@linaro.org, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJJ2CIBGBSMNYCNADAPWMMZTOLUBLFYZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gR3VhbmdtaW5nLA0KDQpPbiBXZWQsIDUgSmFuIDIwMjIgYXQgMTI6MDUsIDxndWFuZ21p
bmcuY2FvQG1lZGlhdGVrLmNvbT4gd3JvdGU6DQo+DQo+IEZyb206IEd1YW5nbWluZy5DYW8gPGd1
YW5nbWluZy5jYW9AbWVkaWF0ZWsuY29tPg0KPg0KPiBPbiBUdWUsIDIwMjItMDEtMDQgYXQgMDg6
NDcgKzAxMDAsIENocmlzdGlhbiBL6bCKaWcgd3JvdGU6DQo+ID4gQW0gMDMuMDEuMjIgdW0gMTk6
NTcgc2NocmllYiBKb2huIFN0dWx0ejoNCj4gPiA+IE9uIE1vbiwgRGVjIDI3LCAyMDIxIGF0IDE6
NTIgQU0gPGd1YW5nbWluZy5jYW9AbWVkaWF0ZWsuY29tPiB3cm90ZToNCj4gPiA+ID4gRnJvbTog
R3VhbmdtaW5nIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNvbT4NCj4gPiA+ID4NCj4gPiA+DQo+
ID4gPiBUaGFua3MgZm9yIHN1Ym1pdHRpbmcgdGhpcyENCj4gPiA+DQo+ID4gPiA+IEFkZCBhIHNp
emUgY2hlY2sgZm9yIGFsbGNhdGlvbiBzaW5jZSB0aGUgYWxsb2NhdGlvbiBzaXplIGlzDQo+ID4g
Pg0KPiA+ID4gbml0OiAiYWxsb2NhdGlvbiIgYWJvdmUuDQo+ID4gPg0KPiA+ID4gPiBhbHdheXMg
bGVzcyB0aGFuIHRoZSB0b3RhbCBEUkFNIHNpemUuDQo+ID4gPg0KPiA+ID4gSW4gZ2VuZXJhbCwg
aXQgbWlnaHQgYmUgZ29vZCB0byBhZGQgbW9yZSBjb250ZXh0IHRvIHRoZSBjb21taXQNCj4gPiA+
IG1lc3NhZ2UNCj4gPiA+IHRvIGJldHRlciBhbnN3ZXIgKndoeSogdGhpcyBjaGFuZ2UgaXMgbmVl
ZGVkIHJhdGhlciB0aGFuIHdoYXQgdGhlDQo+ID4gPiBjaGFuZ2UgaXMgZG9pbmcuICBpZTogV2hh
dCBuZWdhdGl2ZSB0aGluZyBoYXBwZW5zIHdpdGhvdXQgdGhpcw0KPiA+ID4gY2hhbmdlPw0KPiA+
ID4gQW5kIHNvIGhvdyBkb2VzIHRoaXMgY2hhbmdlIGF2b2lkIG9yIGltcHJvdmUgdGhpbmdzPw0K
PiA+DQo+ID4gQ29tcGxldGVseSBhZ3JlZSwganVzdCBvbmUgbGl0dGxlIGFkZGl0aW9uOiBDb3Vs
ZCB5b3UgYWxzbyBhZGQgdGhpcw0KPiA+IHdoeQ0KPiA+IGFzIGNvbW1lbnQgdG8gdGhlIGNvZGU/
DQo+ID4NCj4gPiBXaGVuIHdlIHN0dW1ibGUgb3ZlciB0aGlzIGZpdmUgeWVhcnMgZnJvbSBub3cg
aXQgaXMgYWJzb2x1dGVseSBub3QNCj4gPiBvYnZpb3VzIHdoeSB3ZSBkbyB0aGlzLg0KPiA+DQo+
ID4gVGhhbmtzLA0KPiA+IENocmlzdGlhbi4NCj4gPg0KPiBUaGFua3MgZm9yIHlvdXIgcmVwbHkh
DQo+IEkgd2lsbCB1cGRhdGUgdGhlIHJlbGF0ZWQgcmVhc29uIGluIHRoZSBwYXRjaCBsYXRlci4N
Cj4NCj4gVGhlIHJlYXNvbiBmb3IgYWRkaW5nIHRoaXMgY2hlY2sgaXMgdGhhdCB3ZSBtZXQgYSBj
YXNlIHRoYXQgdGhlIHVzZXINCj4gc2VudCBhbiBpbnZhbGlkIHNpemUoSXQgc2VlbXMgaXQncyBh
IG5lZ2F0aXZlIHZhbHVlLCBNU0IgaXMgMHhmZiwgaXQncw0KPiBsYXJnZXIgdGhhbiBEUkFNIHNp
emUgYWZ0ZXIgY29udmVydCBpdCB0byBzaXplX3QpIHRvIGRtYS1oZWFwIHRvIGFsbG9jDQo+IG1l
bW9yeSwgYW5kIHRoaXMgYWxsb2NhdGlvbiB3YXMgcnVubmluZyBvbiBhIHByb2Nlc3Moc3VjaCBh
cyAiZ3JhbGxvYyINCj4gb24gQW5kcm9pZCBkZXZpY2UpIGNhbid0IGJlIGtpbGxlZCBieSBPT00g
ZmxvdywgYW5kIHdlIGFsc28gY291bGRuJ3QNCj4gZmluZCB0aGUgcmVsYXRlZCBkbWFidWYgaW4g
ImRtYV9idWZfZGVidWdfc2hvdyIgYmVjYXVzZSB0aGUgcmVsYXRlZA0KPiBkbWFidWYgd2FzIG5v
dCBleHBvcnRlZCB5ZXQgc2luY2UgdGhlIGFsbG9jYXRpb24gaXMgc3RpbGwgb24gZ29pbmcuDQo+
DQo+IFNpbmNlIHRoaXMgaW52YWxpZCBhcmd1bWVudCBjYXNlIGNhbiBiZSBwcmV2ZW50ZWQgYXQg
ZG1hLWhlYXAgc2lkZSwgc28sDQo+IEkgYWRkZWQgdGhpcyBzaXplIGNoZWNrLCBhbmQgbW9yZW92
ZXIsIHRvIGxldCBkZWJ1ZyBpdCBlYXNpbHksIEkgYWxzbw0KPiBhZGRlZCBsb2dzIHdoZW4gc2l6
ZSBpcyBiaWdnZXIgdGhhbiBhIHRocmVzaG9sZCB3ZSBzZXQgaW4gbXRrIHN5c3RlbQ0KPiBoZWFw
Lg0KPiBJZiB5b3UgdGhpbmsgdGhhdCBwcmludCBsb2dzIGluIGRtYS1oZWFwIGZyYW1ld29yayBp
cyBiZXR0ZXIsIEkgd2lsbA0KPiB1cGRhdGUgaXQgaW4gbmV4dCB2ZXJzaW9uLg0KPg0KPiBJZiB5
b3UgaGF2ZSBiZXR0ZXIgc29sdXRpb24oc3VjaCBhcyBkdW1wIHRoZSBzaXplIHVuZGVyIGFsbG9j
YXRpbmcNCj4gaW4gImRtYV9idWZfZGVidWdfc2hvdyIsIHdoaWNoIG1heWJlIG5lZWQgYWRkIGds
b2JhbCB2YXJpYWJsZSB0byByZWNvcmQNCj4gaXQpLCBwbGVhc2Uga2luZGx5IGxldCBtZSBrbm93
Lg0KDQpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCENCg0KSSB0aGluayBqdXN0IGFkZGluZyB0aGUg
cmVhc29uaW5nIGFib3ZlIGFzIHRoZSBjb21taXQgbWVzc2FnZSBhbmQgYQ0KY29tbWVudCBpbiB0
aGUgY29kZSBzaG91bGQgYmUgZW5vdWdoIGZvciBub3c7IHRoZSBkZWJ1ZyBwYXJ0cyBtYXkgYmUN
CmVhc3kgdG8gYWRkIGluIGNhc2Ugc29tZW9uZSBydW5zIGludG8gaXNzdWVzLg0KDQo+IFRoYW5r
cyA6KQ0KPiBHdWFuZ21pbmcNCg0KQmVzdCwNClN1bWl0Lg0KDQo+DQo+ID4gPg0KPiA+ID4NCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogR3VhbmdtaW5nIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNv
bT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogamlhbmppYW8gemVuZyA8amlhbmppYW8uemVuZ0Bt
ZWRpYXRlay5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiB2MjogMS4gdXBkYXRlIHNpemUgbGlt
aXRhdGlvbiBhcyB0b3RhbF9kcmFtIHBhZ2Ugc2l6ZS4NCj4gPiA+ID4gICAgICAyLiB1cGRhdGUg
Y29tbWl0IG1lc3NhZ2UNCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMgfCAyICsrDQo+ID4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KPiA+ID4gPg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLQ0KPiA+ID4gPiBoZWFwLmMNCj4gPiA+ID4gaW5kZXgg
NTZiZjVhZDAxYWQ1Li5lMzlkMmJlOThkNjkgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jDQo+ID4gPiA+IEBAIC01NSw2ICs1NSw4IEBAIHN0YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVy
X2FsbG9jKHN0cnVjdA0KPiA+ID4gPiBkbWFfaGVhcCAqaGVhcCwgc2l6ZV90IGxlbiwNCj4gPiA+
ID4gICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gPiA+ID4gICAgICAgICAgaW50
IGZkOw0KPiA+ID4gPg0KPiA+ID4gPiArICAgICAgIGlmIChsZW4gLyBQQUdFX1NJWkUgPiB0b3Rh
bHJhbV9wYWdlcygpKQ0KPiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
ID4gPg0KPiA+ID4gVGhpcyBzZWVtcyBzYW5lLiBJIGtub3cgSU9OIHVzZWQgdG8gaGF2ZSBzb21l
IDEvMiBvZiBtZW1vcnkgY2FwIHRvDQo+ID4gPiBhdm9pZCB1bm5lY2Vzc2FyeSBtZW1vcnkgcHJl
c3N1cmUgb24gY3JhenkgYWxsb2NhdGlvbnMuDQo+ID4gPg0KPiA+ID4gQ291bGQgeW91IHNlbmQg
YWdhaW4gd2l0aCBhbiBpbXByb3ZlZCBjb21taXQgbWVzc2FnZT8NCj4gPiA+DQo+ID4gPiB0aGFu
a3MNCj4gPiA+IC1qb2huDQo+ID4NCj4gPg0KDQoNCg0KLS0NClRoYW5rcyBhbmQgcmVnYXJkcywN
Cg0KU3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkNClRlY2ggTGVhZCAtIExDRywgVmVydGljYWwgVGVj
aG5vbG9naWVzDQpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
