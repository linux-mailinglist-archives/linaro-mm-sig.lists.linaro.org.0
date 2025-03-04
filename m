Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B8082A4D496
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Mar 2025 08:17:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36CD244AB3
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Mar 2025 07:17:54 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by lists.linaro.org (Postfix) with ESMTPS id 79D4F3F664
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Mar 2025 07:17:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xWB8fs5f;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.43 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5fa28eaa52cso2657819eaf.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Mar 2025 23:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741072656; x=1741677456; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzHbHM5F2Rwe7GWQtoT/vBL3j3IgEpxjxlyoiFn8SsI=;
        b=xWB8fs5fCjo2OvcomLX8rUuI3lTdiAyAnoQX1mDv8KwoJciDJmvUJpzjGzt7fm2E71
         RI6Ve6XEj8twaiMWzEA1sQ+m9hrkR4aOmZ+EO+5SEwMLu75GQMDedAwxG1V6uBqObLaJ
         beEc9RAsZmkUnu2eDYvGoQDrWi2rTdECACtPh9uBwRhHSHCYp6J/x2NCnQuMWoW5TUIB
         tGQLmJPtQNasEHGMmElVsa6QXoSMve9nuA8qCXNfjU9hfdvwLKsKyDVXENioI/DgdD7J
         NoLatu/hmJjmSf0qw8HgjhDtYlEVQbyrfea7HP1YAlZWKuMYIQROKx3qSZZ/RVR6c2+s
         zB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741072656; x=1741677456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzHbHM5F2Rwe7GWQtoT/vBL3j3IgEpxjxlyoiFn8SsI=;
        b=BAE4Zqv4H+c0LRLEdP8ILmDpb8nuv22jQbHEhHcHlcSxanGF/Q1RR8Gl15BLyD8lx6
         TKs4W3pyr0kWr42sbBxJkeJFukMo/kKBAkvcfeKob/zCvhjClRE2TDuL7wwRUjeKLiNM
         RnfwkcXwb/mOiWI27QJ71XBfDMeSS62Li0dcaGDSUd1V2twW5sKbP8NE+vnmig/SGKQu
         s0RUnjEzCWXPQaDpXX28keY2jSL6rUohKFf9EKHExZt5UFz/GdKjtZT/rLb+dd+eRSfU
         6j/EynDD7LFlmZP/rc29AcloFQRndJw1m/z1zIk1CRWUk0c/nIe4BBJW6fOPWeqSeJol
         IVGg==
X-Forwarded-Encrypted: i=1; AJvYcCUyw7PgWfckhynPyIB/S6MoGuC9a3rBTvx5S5blTFz7vvEg2bIi9QPdEuW/gzmKa+iEaGG9U58BzViMfHCo@lists.linaro.org
X-Gm-Message-State: AOJu0YxTzdMi56l0QZODYjPCjg2GlyjJF+6GvaHjbv4wAmNvvn03N5os
	xDPibXg8cOgBu0ry3AOmg1Z2UEXPDfa7rfrXSrAuK9YpU3obbWOf08Szs6bbeFD/ae7a/Pw91Po
	7npxTys7M1y87ab/Ebc5f6Lx6iNm4iKHFZiVsWehC
X-Gm-Gg: ASbGncvP3XAPBUQmELNyaE6NtPnuPy6d/ERzUUL7zuMIa3/xcgE/5MliQFeL8vcT5+Y
	JpEMhJhs7ds+SpBXAE/SNYy3V1itdx4NPVhqwkoSU0cYLq4i6jHV2GzNEqOUkcOnfD1C+y8F/ON
	AN3oxzegtAFO3VR8VcPIrKUZNeubw=
X-Google-Smtp-Source: AGHT+IGeWth+Ec7HvnFz4HF064DwKqNeMXOfgif6GoecOEfs8x2Q7Fc7PxDdZ1yzepEKq7Z5LS0hsWXFxueHCzU4cFY=
X-Received: by 2002:a05:6820:2217:b0:5fc:e323:785e with SMTP id
 006d021491bc7-5feb360c2c2mr8620716eaf.5.1741072655731; Mon, 03 Mar 2025
 23:17:35 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
 <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
 <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
 <CAFA6WYOuTwRPEh3L7+hMyARB_E73xmp+OwhKyS-r4+ryS7=9sw@mail.gmail.com>
 <20250214164856.0d2ead8a@collabora.com> <CAFA6WYPc6EHQwcPuMZRm4C1P6SoDrCzEPUmju_meupB6NXQ1sg@mail.gmail.com>
 <CAPj87rN-OYTzh5=Gdv619UQD5=x=U6Yt=uV4N1kCs4Zao4RVAg@mail.gmail.com>
 <CAFA6WYMLLLSuz3y5J+DuRFAGrmwpZoWax5sasfAUhXoQXmrNNA@mail.gmail.com> <CAPj87rN7J6u9NsviAdw8=OenEYc8t719Lds6u6-BhFKrtkLZ-A@mail.gmail.com>
In-Reply-To: <CAPj87rN7J6u9NsviAdw8=OenEYc8t719Lds6u6-BhFKrtkLZ-A@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 4 Mar 2025 08:17:23 +0100
X-Gm-Features: AQ5f1JrEtCh2L2kJC0WD3IbY9SZ2HYIAKqjRP2-ff7KQiuotp3pduZ0dOaK3kQU
Message-ID: <CAHUa44FkG1NAWpoW8UVBywv44XW_mjAJa32PcC9mcmiOLdiRqw@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79D4F3F664
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.43:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.161.43:from];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.161.43:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7GXKKEQDA5LRQVSXZ3B2TBKJWURUKRIB
X-Message-ID-Hash: 7GXKKEQDA5LRQVSXZ3B2TBKJWURUKRIB
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@linaro.org>, Boris Brezillon <boris.brezillon@collabora.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, op-tee@lists.trustedfirmware.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7GXKKEQDA5LRQVSXZ3B2TBKJWURUKRIB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGFuaWVsLA0KDQpPbiBGcmksIEZlYiAyMSwgMjAyNSBhdCAzOjEy4oCvUE0gRGFuaWVsIFN0
b25lIDxkYW5pZWxAZm9vaXNoYmFyLm9yZz4gd3JvdGU6DQo+DQo+IEhpIFN1bWl0LA0KPg0KPiBP
biBGcmksIDIxIEZlYiAyMDI1IGF0IDExOjI0LCBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFy
by5vcmc+IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMTggRmViIDIwMjUgYXQgMjE6NTIsIERhbmllbCBT
dG9uZSA8ZGFuaWVsQGZvb2lzaGJhci5vcmc+IHdyb3RlOg0KPiA+ID4gZG1hLWhlYXBzIHdhcyBj
cmVhdGVkIHRvIHNvbHZlIHRoZSBwcm9ibGVtIG9mIGhhdmluZyB0b28gbWFueQ0KPiA+ID4gJ2Fs
bG9jYXRlICRuIGJ5dGVzIGZyb20gJHNwZWNpYWxwbGFjZScgdUFQSXMuIFRoZSBwcm9saWZlcmF0
aW9uIHdhcw0KPiA+ID4gcGFpbmZ1bCBhbmQgbWFraW5nIGl0IGRpZmZpY3VsdCBmb3IgdXNlcnNw
YWNlIHRvIGRvIHdoYXQgaXQgbmVlZGVkIHRvDQo+ID4gPiBkby4gVXNlcnNwYWNlIGRvZXNuJ3Qg
X3lldF8gbWFrZSBmdWxsIHVzZSBvZiBpdCwgYnV0IHRoZSBzb2x1dGlvbiBpcw0KPiA+ID4gdG8g
bWFrZSB1c2Vyc3BhY2UgbWFrZSBmdWxsIHVzZSBvZiBpdCwgbm90IHRvIGdvIGNyZWF0ZSBlbnRp
cmVseQ0KPiA+ID4gc2VwYXJhdGUgYWxsb2NhdGlvbiBwYXRocyBmb3IgdW5jbGVhciByZWFzb25z
Lg0KPiA+ID4NCj4gPiA+IEJlc2lkZXMsIEknbSB3cml0aW5nIHRoaXMgZnJvbSBhIHBsYXRmb3Jt
IHRoYXQgaW1wbGVtZW50cyBTVlAgbm90IHZpYQ0KPiA+ID4gVEVFLiBJJ3ZlIHdvcmtlZCBvbiBw
bGF0Zm9ybXMgd2hpY2ggaW1wbGVtZW50IFNWUCB3aXRob3V0IGFueSBURUUsDQo+ID4gPiB3aGVy
ZSB0aGUgVEVFIGltcGxlbWVudGF0aW9uIHdvdWxkIGJlIGF0IGJlc3QgYSBuby1vcCBzdHViLCBh
bmQgYXQNCj4gPiA+IHdvcnN0IGZsYXQtb3V0IGltcG9zc2libGUuDQo+ID4NCj4gPiBDYW4geW91
IGVsYWJvcmF0ZSB0aGUgbm9uLVRFRSB1c2UtY2FzZSBmb3IgU2VjdXJlIFZpZGVvIFBhdGggKFNW
UCkgYQ0KPiA+IGJpdCBtb3JlPyBBcyB0byBob3cgdGhlIHByb3RlY3RlZC9lbmNyeXB0ZWQgbWVk
aWEgY29udGVudCBwaXBlbGluZQ0KPiA+IHdvcmtzPyBXaGljaCBhcmNoaXRlY3R1cmUgc3VwcG9y
dCBkb2VzIHlvdXIgdXNlLWNhc2UgcmVxdWlyZT8gSXMgdGhlcmUNCj4gPiBhbnkgaGlnaGVyIHBy
aXZpbGVnZWQgbGV2ZWwgZmlybXdhcmUgaW50ZXJhY3Rpb24gcmVxdWlyZWQgdG8gcGVyZm9ybQ0K
PiA+IG1lZGlhIGNvbnRlbnQgZGVjcnlwdGlvbiBpbnRvIHJlc3RyaWN0ZWQgbWVtb3J5PyBEbyB5
b3UgcGxhbiB0bw0KPiA+IHVwc3RyZWFtIGNvcnJlc3BvbmRpbmcgc3VwcG9ydCBpbiBuZWFyIGZ1
dHVyZT8NCj4NCj4gWW91IGNhbiBzZWUgdGhlIE1USyBTVlAgcGF0Y2hlcyBvbiBsaXN0IHdoaWNo
IHVzZSB0aGUgTVRLIFNNQyB0byBtZWRpYXRlIGl0Lg0KPg0KPiBUaGVyZSBhcmUgVEkgSmFjaW50
byBwbGF0Zm9ybXMgd2hpY2ggaW1wbGVtZW50IGEgJ3NlY3VyZScgYXJlYQ0KPiBjb25maWd1cmVk
IHN0YXRpY2FsbHkgYnkgKElJUkMpIEJMMiwgd2l0aCBzdGF0aWMgcGVybWlzc2lvbnMgZGVmaW5l
ZA0KPiBmb3IgZWFjaCBBWEkgZW5kcG9pbnQsIGUuZy4gQ1BVIHdyaXRlICsgY29kZWMgUlcgKyBk
aXNwYyByZWFkLiBJJ3ZlDQo+IGhlYXJkIG9mIGFub3RoZXIgU29DIHZlbmRvciBkb2luZyB0aGUg
c2FtZSwgYnV0IEkgZG9uJ3QgdGhpbmsgSSBjYW4NCj4gc2hhcmUgdGhvc2UgZGV0YWlscy4gVGhl
cmUgaXMgbm8gVEVFIGludGVyYWN0aW9uLg0KPg0KPiBJJ20gd3JpdGluZyB0aGlzIG1lc3NhZ2Ug
ZnJvbSBhbiBBTUQgbGFwdG9wIHdoaWNoIGltcGxlbWVudHMNCj4gcmVzdHJpY3RlZCBjb250ZW50
IHBhdGhzIG91dHNpZGUgb2YgVEVFLiBJIGRvbid0IGhhdmUgdGhlIGZ1bGwgcGljdHVyZQ0KPiBv
ZiBob3cgU1ZQIGlzIGltcGxlbWVudGVkIG9uIEFNRCBzeXN0ZW1zLCBidXQgSSBkbyBrbm93IHRo
YXQgSSBkb24ndA0KPiBoYXZlIGFueSBURUUgZGV2aWNlcyBleHBvc2VkLg0KPg0KPiA+IExldCBt
ZSB0cnkgdG8gZWxhYm9yYXRlIG9uIHRoZSBTZWN1cmUgVmlkZW8gUGF0aCAoU1ZQKSBmbG93IHJl
cXVpcmluZw0KPiA+IGEgVEVFIGltcGxlbWVudGF0aW9uIChpbiBnZW5lcmFsIHRlcm1zIGEgaGln
aGVyIHByaXZpbGVnZWQgZmlybXdhcmUNCj4gPiBtYW5hZ2luZyB0aGUgcGlwZWxpbmUgYXMgdGhl
IGtlcm5lbC91c2VyLXNwYWNlIGhhcyBubyBhY2Nlc3MNCj4gPiBwZXJtaXNzaW9ucyB0byB0aGUg
cGxhaW4gdGV4dCBtZWRpYSBjb250ZW50KToNCj4gPg0KPiA+IC0gWy4uLl0NCj4NCj4gWWVhaCwg
SSB0b3RhbGx5IHVuZGVyc3RhbmQgdGhlIFRFRSB1c2VjYXNlLiBJIHRoaW5rIHRoYXQgVEVFIGlz
IGEgZ29vZA0KPiBkZXNpZ24gdG8gaW1wbGVtZW50IHRoaXMuIEkgdGhpbmsgdGhhdCBURUUgc2hv
dWxkIGJlIHVzZWQgZm9yIFNWUA0KPiB3aGVyZSBpdCBtYWtlcyBzZW5zZS4NCj4NCj4gUGxlYXNl
IHVuZGVyc3RhbmQgdGhhdCBJIGFtIF9ub3RfIGFyZ3VpbmcgdGhhdCBuby1vbmUgc2hvdWxkIHVz
ZSBURUUgZm9yIFNWUCENCj4NCj4gPiA+IFNvLCBhZ2FpbiwgbGV0J3MNCj4gPiA+IHBsZWFzZSB0
dXJuIHRoaXMgYXJvdW5kOiBfd2h5XyBURUU/IFdobyBiZW5lZml0cyBmcm9tIGV4cG9zaW5nIHRo
aXMgYXMNCj4gPiA+IGNvbXBsZXRlbHkgc2VwYXJhdGUgdG8gdGhlIG1vcmUgZ2VuZXJpYyB1QVBJ
IHRoYXQgd2Ugc3BlY2lmaWNhbGx5DQo+ID4gPiBkZXNpZ25lZCB0byBoYW5kbGUgdGhpbmdzIGxp
a2UgdGhpcz8NCj4gPg0KPiA+IFRoZSBicmlkZ2luZyBiZXR3ZWVuIERNQSBoZWFwcyBhbmQgVEVF
IHdvdWxkIHN0aWxsIHJlcXVpcmUgdXNlci1zcGFjZQ0KPiA+IHRvIHBlcmZvcm0gYW4gSU9DVEwg
aW50byBURUUgdG8gcmVnaXN0ZXIgdGhlIERNQS1idWZzIGFzIHlvdSBjYW4gc2VlDQo+ID4gaGVy
ZSBbMV0uIFRoZW4gaXQgd2lsbCByYXRoZXIgYmUgdHdvIGhhbmRsZXMgZm9yIHVzZXItc3BhY2Ug
dG8gbWFuYWdlLg0KPg0KPiBZZXMsIHRoZSBkZWNvZGVyIHdvdWxkIG5lZWQgdG8gZG8gdGhpcy4g
VGhhdCdzIGNvbW1vbiB0aG91Z2g6IGlmIHlvdQ0KPiB3YW50IHRvIHNoYXJlIGEgYnVmZmVyIGJl
dHdlZW4gVjRMMiBhbmQgRFJNLCB5b3UgaGF2ZSB0aHJlZSBoYW5kbGVzOg0KPiB0aGUgVjRMMiBi
dWZmZXIgaGFuZGxlLCB0aGUgRFJNIEdFTSBoYW5kbGUsIGFuZCB0aGUgZG1hYnVmIHlvdSB1c2Ug
dG8NCj4gYnJpZGdlIHRoZSB0d28uDQo+DQo+ID4gU2ltaWxhcmx5IGR1cmluZyByZXN0cmljdGVk
IG1lbW9yeSBhbGxvY2F0aW9uL2ZyZWUgd2UgbmVlZCBhbm90aGVyDQo+ID4gZ2x1ZSBsYXllciB1
bmRlciBETUEgaGVhcHMgdG8gVEVFIHN1YnN5c3RlbS4NCj4NCj4gWWVwLg0KPg0KPiA+IFRoZSBy
ZWFzb24gaXMgc2ltcGx5IHdoaWNoIGhhcyBiZWVuIGl0ZXJhdGVkIG92ZXIgbWFueSB0aW1lcyBp
biB0aGUNCj4gPiBwYXN0IHRocmVhZHMgdGhhdDoNCj4gPg0KPiA+ICAgICAiSWYgdXNlci1zcGFj
ZSBoYXMgdG8gaW50ZXJhY3Qgd2l0aCBhIFRFRSBkZXZpY2UgZm9yIFNWUCB1c2UtY2FzZQ0KPiA+
IHRoZW4gd2h5IGl0J3Mgbm90IGJldHRlciB0byBhc2sgVEVFIHRvIGFsbG9jYXRlIHJlc3RyaWN0
ZWQgRE1BLWJ1ZnMNCj4gPiB0b28iDQo+DQo+IFRoZSBmaXJzdCB3b3JkIGluIHlvdXIgcHJvcG9z
aXRpb24gaXMgbG9hZC1iZWFyaW5nLg0KPg0KPiBCdWlsZCBvdXQgdGhlIHVzZWNhc2UgYSBsaXR0
bGUgbW9yZSBoZXJlLiBZb3UgaGF2ZSBhIERSTWVkIHZpZGVvDQo+IHN0cmVhbSBjb21pbmcgaW4s
IHdoaWNoIHlvdSBuZWVkIHRvIGRlY29kZSAoaW52b2x2aW5nIFRFRSBmb3IgdGhpcw0KPiB1c2Vj
YXNlKS4gWW91IGdldCBhIGRtYWJ1ZiBoYW5kbGUgdG8gdGhlIGRlY29kZWQgZnJhbWUuIFlvdSBu
ZWVkIHRvDQo+IHBhc3MgdGhlIGRtYWJ1ZiBhY3Jvc3MgdG8gdGhlIFdheWxhbmQgY29tcG9zaXRv
ci4gVGhlIGNvbXBvc2l0b3IgbmVlZHMNCj4gdG8gcGFzcyBpdCB0byBFR0wvVnVsa2FuIHRvIGlt
cG9ydCBhbmQgZG8gY29tcG9zaXRpb24sIHdoaWNoIGluIHR1cm4NCj4gcGFzc2VzIGl0IHRvIHRo
ZSBHUFUgRFJNIGRyaXZlci4gVGhlIG91dHB1dCBvZiB0aGUgY29tcG9zaXRpb24gaXMgaW4NCj4g
dHVybiBzaGFyZWQgYmV0d2VlbiB0aGUgR1BVIERSTSBkcml2ZXIgYW5kIHRoZSBzZXBhcmF0ZSBL
TVMgRFJNDQo+IGRyaXZlciwgd2l0aCB0aGUgaW52b2x2ZW1lbnQgb2YgR0JNLg0KPg0KPiBGb3Ig
dGhlIHBsYXRmb3JtcyBJJ20gaW50ZXJlc3RlZCBpbiwgdGhlIEdQVSBEUk0gZHJpdmVyIG5lZWRz
IHRvDQo+IHN3aXRjaCBpbnRvIHByb3RlY3RlZCBtb2RlLCB3aGljaCBoYXMgbm8gaW52b2x2ZW1l
bnQgYXQgYWxsIHdpdGggVEVFIC0NCj4gaXQncyBhcmNoaXRlY3R1cmFsbHkgaW1wb3NzaWJsZSB0
byBoYXZlIFRFRSBpbnZvbHZlZCB3aXRob3V0IG1vdmluZw0KPiBtb3N0IG9mIHRoZSBHUFUgZHJp
dmVyIGludG8gVEVFIGFuZCBkZXN0cm95aW5nIHBlcmZvcm1hbmNlLiBUaGUNCj4gZGlzcGxheSBo
YXJkd2FyZSBhbHNvIG5lZWRzIHRvIGVuZ2FnZSBwcm90ZWN0ZWQgbW9kZSwgd2hpY2ggYWdhaW4g
aGFzDQo+IG5vIGludm9sdmVtZW50IHdpdGggVEVFIGFuZCBhZ2FpbiB3b3VsZCBuZWVkIHRvIGhh
dmUgaGFsZiB0aGUgZHJpdmVyDQo+IG1vdmVkIGludG8gVEVFIGZvciBubyBiZW5lZml0IGluIG9y
ZGVyIHRvIGRvIHNvLiBUaGUgV2F5bGFuZA0KPiBjb21wb3NpdG9yIGFsc28gaGFzIG5vIGludGVy
ZXN0IGluIFRFRTogaXQgdGVsbHMgdGhlIEdQVSBEUk0gZHJpdmVyDQo+IGFib3V0IHRoZSBwcm90
ZWN0ZWQgc3RhdHVzIG9mIGl0cyBidWZmZXJzLCBhbmQgdGhhdCdzIGl0Lg0KPg0KPiBXaGF0IHRo
ZXNlIGNvbXBvbmVudHMgX2FyZV8gb3BpbmlvbmF0ZWQgYWJvdXQsIGlzIHRoZSB3YXkgYnVmZmVy
cyBhcmUNCj4gYWxsb2NhdGVkIGFuZCBtYW5hZ2VkLiBXZSBidWlsdCBvdXQgZG1hYnVmIG1vZGlm
aWVycyBmb3IgdGhpcyB1c2VjYXNlLA0KPiBhbmQgd2UgaGF2ZSBhIGdvb2QgbmVnb3RpYXRpb24g
cHJvdG9jb2wgYXJvdW5kIHRoYXQuIFdlIGFsc28gcmVhbGx5DQo+IGNhcmUgYWJvdXQgYnVmZmVy
IHBsYWNlbWVudCBpbiBzb21lIHVzZWNhc2VzIC0gZS5nLiBzb21lIGRpc3BsYXkvY29kZWMNCj4g
aGFyZHdhcmUgcmVxdWlyZXMgYnVmZmVycyB0byBiZSBzb3VyY2VkIGZyb20gY29udGlndW91cyBt
ZW1vcnksIG90aGVyDQo+IGhhcmR3YXJlIG5lZWRzIHRvIGtub3cgdGhhdCB3aGVuIGl0IHNoYXJl
cyBidWZmZXJzIHdpdGggYW5vdGhlcg0KPiBkZXZpY2UsIGl0IG5lZWRzIHRvIHBsYWNlIHRoZSBi
dWZmZXJzIG91dHNpZGUgb2YgaW5hY2Nlc3NpYmxlL3Nsb3cNCj4gbG9jYWwgUkFNLiBTbyB3ZSBi
dWlsdCBvdXQgZG1hLWhlYXBzLCBzbyBldmVyeSBwYXJ0IG9mIHRoZSBjb21wb25lbnQNCj4gaW4g
dGhlIHN0YWNrIGNhbiBjb21tdW5pY2F0ZSB0aGVpciBidWZmZXItcGxhY2VtZW50IG5lZWRzIGlu
IHRoZSBzYW1lDQo+IHdheSBhcyB3ZSBkbyBtb2RpZmllcnMsIGFuZCBuZWdvdGlhdGUgYW4gYWNj
ZXB0YWJsZSBhbGxvY2F0aW9uLg0KPg0KPiBUaGF0J3MgbXkgc3RhcnRpbmcgcG9pbnQgZm9yIHRo
aXMgZGlzY3Vzc2lvbi4gV2UgaGF2ZSBhIG1lY2hhbmlzbSB0bw0KPiBkZWFsIHdpdGggdGhlIGZh
Y3QgdGhhdCBidWZmZXJzIG5lZWQgdG8gYmUgc2hhcmVkIGJldHdlZW4gZGlmZmVyZW50IElQDQo+
IGJsb2NrcyB3aGljaCBoYXZlIHRoZWlyIG93biBjb25zdHJhaW50cyBvbiBidWZmZXIgcGxhY2Vt
ZW50LCBhdm9pZGluZw0KPiB0aGUgY3VycmVudCBwcm9ibGVtIG9mIGhhdmluZyBldmVyeSBzdWJz
eXN0ZW0gcmVpbnZlbnQgdGhlaXIgb3duDQo+IGFsbG9jYXRpb24gdUFQSSB3aGljaCB3YXMgYnVy
eWluZyB1cyBpbiBpbXBlZGFuY2UgbWlzbWF0Y2ggYW5kDQo+IGNvbmZ1c2lvbi4gVGhhdCBtZWNo
YW5pc20gaXMgZG1hLWhlYXBzLiBJdCBzZWVtcyBsaWtlIHlvdXIgc3RhcnRpbmcNCj4gcG9pbnQg
ZnJvbSB0aGlzIGRpc2N1c3Npb24gaXMgdGhhdCB5b3UndmUgaW1wbGVtZW50ZWQgYSBURUUtY2Vu
dHJpYw0KPiBkZXNpZ24gZm9yIFNWUCwgYW5kIHNvIGFsbCBvZiB1c2Vyc3BhY2Ugc2hvdWxkIGJ5
cGFzcyBvdXIgZXhpc3RpbmcNCj4gY3Jvc3Mtc3Vic3lzdGVtIHNwZWNpYWwtcHVycG9zZSBhbGxv
Y2F0aW9uIG1lY2hhbmlzbSwgYW5kIHdyaXRlDQo+IHNwZWNpZmljYWxseSB0byBvbmUgaW1wbGVt
ZW50YXRpb24uIEkgYmVsaWV2ZSB0aGF0IGlzIGEgbWFzc2l2ZSBzdGVwDQo+IGJhY2t3YXJkcyBh
bmQgYW4gaW1tZWRpYXRlIGludHJvZHVjdGlvbiBvZiB0ZWNobmljYWwgZGVidC4NCj4NCj4gQWdh
aW4sIGhhdmluZyBhbiBpbXBsZW1lbnRhdGlvbiBvZiBTVlAgdmlhIFRFRSBtYWtlcyBhIGh1Z2Ug
YW1vdW50IG9mDQo+IHNlbnNlLiBIYXZpbmcgX21vc3RfIFNWUCBpbXBsZW1lbnRhdGlvbnMgdmlh
IFRFRSBzdGlsbCBtYWtlcyBhIGxvdCBvZg0KPiBzZW5zZS4gSGF2aW5nIF9hbGxfIFNWUCBpbXBs
ZW1lbnRhdGlvbnMgZXZlbnR1YWxseSBiZSB2aWEgVEVFIHdvdWxkDQo+IHN0aWxsIG1ha2Ugc2Vu
c2UuIEJ1dCBldmVuIGlmIHdlIHdlcmUgYXQgdGhhdCBwb2ludCAtIHdoaWNoIHdlIGFyZW4ndA0K
PiAtIGl0IHN0aWxsIGRvZXNuJ3QganVzdGlmeSB0ZWxsaW5nIHVzZXJzcGFjZSAndXNlIHRoZSBn
ZW5lcmljIGRtYS1oZWFwDQo+IHVBUEkgZm9yIGV2ZXJ5IGRldmljZS1zcGVjaWZpYyBhbGxvY2F0
aW9uIGNvbnN0cmFpbnQsIGFwYXJ0IGZyb20gU1ZQDQo+IHdoaWNoIGhhcyBhIGNvbXBsZXRlbHkg
ZGlmZmVyZW50IHdheSB0byBhbGxvY2F0ZSBzb21lIGJ5dGVzJy4NCg0KSSBtdXN0IGFkbWl0IHRo
YXQgSSBkb24ndCBzZWUgaG93IHRoaXMgbWFrZXMgYSBzaWduaWZpY2FudCBkaWZmZXJlbmNlLA0K
YnV0IHRoZW4gSSBoYXZlbid0IGhhY2tlZCBtdWNoIGluIHRoZSBzdGFja3MgeW91J3JlIHRhbGtp
bmcgYWJvdXQsIHNvDQpJJ20gZ29pbmcgdG8gdGFrZSB5b3VyIHdvcmQgZm9yIGl0Lg0KDQpJJ3Zl
IGV4cGVyaW1lbnRlZCB3aXRoIHByb3ZpZGluZyBhIGRtYS1oZWFwIHJlcGxhY2luZyB0aGUgVEVF
IEFQSS4gVGhlDQppbXBsZW1lbnRhdGlvbiBpcyBtb3JlIGNvbXBsZXggdGhhbiBJIGZpcnN0IGFu
dGljaXBhdGVkLCBhZGRpbmcgYWJvdXQNCjQwMCBsaW5lcyB0byB0aGUgcGF0Y2ggc2V0LiBGcm9t
IHVzZXIgc3BhY2UsIGl0IGxvb2tzIGxpa2UgYW5vdGhlcg0KZG1hLWhlYXAuIEknbSB1c2luZyB0
aGUgbmFtZXMgeW91IGdhdmUgZWFybGllciwNCnByb3RlY3RlZCxzZWN1cmUtdmlkZW8sIHByb3Rl
Y3RlZCx0cnVzdGVkLXVpLCBhbmQNCnByb3RlY3RlZCxzZWN1cmUtdmlkZW8tcmVjb3JkLiBIb3dl
dmVyLCBJIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgdXNlDQoicmVzdHJpY3RlZCIgaW5zdGVhZCBv
ZiAicHJvdGVjdGVkIiBzaW5jZSB3ZSBoYWQgYWdyZWVkIHRvIGNhbGwgaXQNCnJlc3RyaWN0ZWQg
bWVtb3J5IGVhcmxpZXIuDQoNCkknbGwgc29vbiBwb3N0IHRoaXMgaW4gYSB2NiBhbmQgYW4gdXBk
YXRlZCBkZW1vLg0KDQpDaGVlcnMsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
