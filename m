Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0D4A348AF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 16:58:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 967FE453A7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Feb 2025 15:58:11 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by lists.linaro.org (Postfix) with ESMTPS id B0EA144162
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 15:57:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=oZpZaSe9;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.170 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3f3d9321dccso561855b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Feb 2025 07:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739462278; x=1740067078; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NHtO1l0Sm3xnCkozanEaDdmWEvTg249bwN+Pta/EflE=;
        b=oZpZaSe9Avj7ZEDttR4iCh7TelhimyWkTVPdXZFT6lZOUmdz9pBfgRmD06Rj9nMme+
         DQ7TswmqSpCP1NkLFSte3rfgH1lunntLssxnI1j83ldO7Jrrvpz/Gw5z3CIZqOLcigh4
         w9D5Q8oLIZNwDUUIG1gVlOTwq1Uy2Hso3v8v4CN7euAY+CB6kqpNjoEDX5IYs9Bl1SAP
         E2AoXly+InDsuJBKGQO7q3cfd1SFaIHuvgHE+y6lhAZ/eLbb2rYTtC/dLJnUwR9f1+1e
         EX8GenTwmv1bQ/fyZdE+WZDtS9SZPvF2pOnAE9VciiKACFjihFN/JmW2le5L8qLdw3OT
         9ydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739462278; x=1740067078;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NHtO1l0Sm3xnCkozanEaDdmWEvTg249bwN+Pta/EflE=;
        b=IBNztjvgNzUxitmttLo1mgTdzVfZ3P3gpHD0Z7W7+OAv02+q8f+auPi7zWnNEGr7kc
         /nzuVeacJ6kaNdDV04K8D68e3McT/9s/4cy7ExlnZ4lPtE8xWJYRLWN+/VuQxZ5uDIMu
         UA6gXAUko6YGx9jzHtXfy6p8W9uATMWwN3Qh4Qjy4LYszxJRLzhDP8sYbfaFd3DmAdIb
         0PVW4yjAdXQMv0MhiqClE2oOAh66lp9jKl5OnPaKxut2NHqZm//9ZRoujKUIOxhyJXS6
         BqqCd4UYD/WEoba7AyTMh/g69aVO5ZchOekPBCEAJ5+ERIOQ5uc5PgcnuUxVWbLNUVpQ
         aMYg==
X-Forwarded-Encrypted: i=1; AJvYcCUj7vu6cK9EdgyNT1CYPN59oruW+TBxNH74IsD/f3jhF1/5L+hjHKyRP6jfhlxrCSTX2dG8l4Af7OQlRcxM@lists.linaro.org
X-Gm-Message-State: AOJu0YzpmUtJ/ou2AgK3cZpGSV74AgMZ2GqQfFTFAAbI6HNTsvcchvEt
	05uoNT6fv+kh2A7DCAJAakSbDRVCFBDfhdQ/RxE/Rz5bKi+wFe+qWFVxGw6WwfJSVsO0gBglV2w
	wveggNWW8MbL3sN0txrze3pa375fptmXP1iHHcP12
X-Gm-Gg: ASbGncvpHND9BHuRHOmsgFvep0o17MFVLxGH3LFynjLNMRkl2r66VQ5YcxlSL6h8Hty
	0HnIFtXNUpFRMsLzCI3gEC1VdvLNSndIQutV+342cSTK2tIGX2bIzznoceyLY+u81wpBi38x6KQ
	==
X-Google-Smtp-Source: AGHT+IFP5g43bicIDLt/S4uI2Sk6WesrFKEkZAgRcsR6UVnbplWcWySy+Pe58g7cxxxYF2yjdv9hpHSaFgfwFOWE+Ow=
X-Received: by 2002:a05:6870:f112:b0:2b8:84d7:ddd5 with SMTP id
 586e51a60fabf-2b8d68c6af2mr4406581fac.39.1739462278059; Thu, 13 Feb 2025
 07:57:58 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
In-Reply-To: <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 13 Feb 2025 16:57:42 +0100
X-Gm-Features: AWEUYZmgVASDSvu5hsJWJHBSSPIof2Z6xxr-T5u2MSp4prWGrnjV2aHs43vhfXo
Message-ID: <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B0EA144162
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.97%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_ONE(0.00)[1];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.170:from];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.170:from];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: M2O6M7AWT5MA3PTXU2I5ZHOVKENJFUNP
X-Message-ID-Hash: M2O6M7AWT5MA3PTXU2I5ZHOVKENJFUNP
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Boris Brezillon <boris.brezillon@collabora.com>, Sumit Garg <sumit.garg@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M2O6M7AWT5MA3PTXU2I5ZHOVKENJFUNP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgRmViIDEzLCAyMDI1IGF0IDM6MDXigK9QTSBEYW5pZWwgU3RvbmUgPGRh
bmllbEBmb29pc2hiYXIub3JnPiB3cm90ZToNCj4NCj4gSGksDQo+DQo+IE9uIFRodSwgMTMgRmVi
IDIwMjUgYXQgMTI6NDAsIEJvcmlzIEJyZXppbGxvbg0KPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxh
Ym9yYS5jb20+IHdyb3RlOg0KPiA+IE9uIFRodSwgMTMgRmViIDIwMjUgMTQ6NDY6MDEgKzA1MzAg
U3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BsaW5hcm8ub3JnPiB3cm90ZToNCj4gPiA+IFllYWggYnV0
IGFsbCB0aGUgcHJpb3IgdmVuZG9yIHNwZWNpZmljIHNlY3VyZS9yZXN0cmljdGVkIERNQSBoZWFw
cw0KPiA+ID4gcmVsaWVkIG9uIERUIGluZm9ybWF0aW9uLg0KPiA+DQo+ID4gUmlnaHQsIGJ1dCB0
aGVyZSdzIG5vdGhpbmcgaW4gdGhlIERNQSBoZWFwIHByb3ZpZGVyIEFQSSBmb3JjaW5nIHRoYXQu
DQo+DQo+IFllYWguIERNQSBoZWFwcyBhcmUganVzdCBhIHdheSB0byBhbGxvY2F0ZSBtZW1vcnkg
ZnJvbSBhIHNwZWNpZmljDQo+IHBsYWNlLiBJdCBhbGxvd3MgcGVvcGxlIHRvIHNldHRsZSBvbiBo
YXZpbmcgYSBzaW5nbGUgd2F5IHRvIGRvDQo+IGFsbG9jYXRpb25zIGZyb20gd2VpcmQgcGxhdGZv
cm0tc3BlY2lmaWMgcGxhY2VzOyB0aGUgb25seSB3ZWlyZA0KPiBwbGF0Zm9ybS1zcGVjaWZpYyBw
YXJ0IHVzZXJzcGFjZSBuZWVkcyB0byBkZWFsIHdpdGggaXMgZmlndXJpbmcgb3V0DQo+IHRoZSBu
YW1lIHRvIHVzZS4gVGhlIHJlc3QgaXMgYXQgbGVhc3QgYSB1bmlmaWVkIEFQSTogdGhlIHBvaW50
IG9mDQo+IGRtYS1oZWFwcyB3YXMgZXhhY3RseSB0byBoYXZlIGEgc2luZ2xlIGNvaGVyZW50IEFQ
SSBmb3IgdXNlcnNwYWNlLCBub3QNCj4gdG8gY3JlYXRlIG9uZSBBUEkgZm9yIFpPTkVfQ01BIGFu
ZCBEVCByYW5nZXMgYW5kIGV2ZXJ5b25lIGVsc2UgZG9pbmcNCj4gdGhlaXIgb3duIHRoaW5nLg0K
Pg0KPiA+ID4gUmF0aGVyIHRoYW4gdGhhdCBpdCdzIGJldHRlcg0KPiA+ID4gZm9yIHRoZSB1c2Vy
IHRvIGRpcmVjdGx5IGFzayB0aGUgVEVFIGRldmljZSB0byBhbGxvY2F0ZSByZXN0cmljdGVkDQo+
ID4gPiBtZW1vcnkgd2l0aG91dCB3b3JyeWluZyBhYm91dCBob3cgdGhlIG1lbW9yeSByZXN0cmlj
dGlvbiBnZXRzDQo+ID4gPiBlbmZvcmNlZC4NCj4gPg0KPiA+IElmIHRoZSBjb25zZW5zdXMgaXMg
dGhhdCByZXN0cmljdGVkL3Byb3RlY3RlZCBtZW1vcnkgYWxsb2NhdGlvbiBzaG91bGQNCj4gPiBh
bHdheXMgYmUgcm91dGVkIHRvIHRoZSBURUUsIHN1cmUsIGJ1dCBJIGhhZCB0aGUgZmVlbGluZyB0
aGlzIHdhc24ndCBhcw0KPiA+IGNsZWFyIGFzIHRoYXQuIE9UT0gsIHVzaW5nIGEgZG1hLWhlYXAg
dG8gZXhwb3NlIHRoZSBURUUtU0RQDQo+ID4gaW1wbGVtZW50YXRpb24gcHJvdmlkZXMgdGhlIHNh
bWUgYmVuZWZpdHMsIHdpdGhvdXQgbWFraW5nIHBvdGVudGlhbA0KPiA+IGZ1dHVyZSBub24tVEVF
IGJhc2VkIGltcGxlbWVudGF0aW9ucyBhIHBhaW4gZm9yIHVzZXJzLiBUaGUgZG1hLWhlYXANCj4g
PiBpb2N0bCBiZWluZyBjb21tb24gdG8gYWxsIGltcGxlbWVudGF0aW9ucywgaXQganVzdCBiZWNv
bWVzIGENCj4gPiBjb25maWd1cmF0aW9uIG1hdHRlciBpZiB3ZSB3YW50IHRvIGNoYW5nZSB0aGUg
aGVhcCB3ZSByZWx5IG9uIGZvcg0KPiA+IHByb3RlY3RlZC9yZXN0cmljdGVkIGJ1ZmZlciBhbGxv
Y2F0aW9uLiBBbmQgYmVjYXVzZSBoZWFwcyBoYXZlDQo+ID4gdW5pcXVlL3dlbGwta25vd24gbmFt
ZXMsIHVzZXJzIGNhbiBzdGlsbCBkZWZhdWx0IHRvIChvciByZWx5IHNvbGVseSBvbikNCj4gPiB0
aGUgVEVFLVNQRCBpbXBsZW1lbnRhdGlvbiBpZiB0aGV5IHdhbnQuDQo+ID4NCj4gPiA+IFRoZXJl
IGhhdmUgYmVlbiBzZXZlcmFsIGF0dGVtcHRzIHdpdGggRE1BIGhlYXBzIGluIHRoZSBwYXN0IHdo
aWNoIGFsbA0KPiA+ID4gcmVzdWx0ZWQgaW4gYSB2ZXJ5IHZlbmRvciBzcGVjaWZpYyB2ZXJ0aWNh
bGx5IGludGVncmF0ZWQgc29sdXRpb24uIEJ1dA0KPiA+ID4gdGhlIHNvbHV0aW9uIHdpdGggVEVF
IHN1YnN5c3RlbSBhaW1zIHRvIG1ha2UgaXQgZ2VuZXJpYyBhbmQgdmVuZG9yDQo+ID4gPiBhZ25v
c3RpYy4NCj4gPg0KPiA+IEp1c3QgYmVjYXVzZSBhbGwgcHJldmlvdXMgcHJvdGVjdGVkL3Jlc3Ry
aWN0ZWQgZG1hLWhlYXAgZWZmb3J0DQo+ID4gZmFpbGVkIHRvIG1ha2UgaXQgdXBzdHJlYW0sIGRv
ZXNuJ3QgbWVhbiBkbWEtaGVhcCBpcyB0aGUgd3Jvbmcgd2F5IG9mDQo+ID4gZXhwb3NpbmcgdGhp
cyBmZWF0dXJlIElNSE8uDQo+DQo+IFRvIGJlIGZhaXIsIGhhdmluZyBhIFRFRSBpbXBsZW1lbnRh
dGlvbiBkb2VzIGdpdmUgdXMgYSBtdWNoIGJldHRlcg0KPiBjaGFuY2Ugb2YgaGF2aW5nIGEgc2Vu
c2libGUgY3Jvc3MtdmVuZG9yIHBsYW4uIEFuZCB0aGUgZmFjdCBpdCdzDQo+IGFscmVhZHkgKHNv
cnQgb2YgYWNjaWRlbnRhbGx5IGFuZCBvbmx5IG9uIG9uZSBwbGF0Zm9ybSBBRkFJQ1QpIHJlYWR5
DQo+IGZvciBhICd0ZXN0JyBpbnRlcmZhY2UsIHdoZXJlIHdlIGNhbiBzdGlsbCBleGVyY2lzZSBw
cm90ZWN0ZWQNCj4gYWxsb2NhdGlvbiBwYXRocyBidXQgd2l0aG91dCBoYXZpbmcgdG8gZ28gdGhy
b3VnaCBhbGwgdGhlDQo+IHBsYXRmb3JtLXNwZWNpZmljIHNldHVwIHRoYXQgaXMgaW5hY2Nlc3Np
YmxlIHRvIG1vc3QgcGVvcGxlLCBpcyBhbHNvDQo+IHJlYWxseSBncmVhdCEgVGhhdCdzIHByb2Jh
Ymx5IGJlZW4gdGhlIGJpZ2dlc3QgYmFycmllciB0byBoYXZpbmcgdGhpcw0KPiB0ZXN0ZWQgb3V0
c2lkZSBvZiBJSFZzIGFuZCBPRU1zLg0KPg0KPiBCdXQganVzdCBiZWNhdXNlIFRFRSBpcyBvbmUg
Z29vZCBiYWNrZW5kIGltcGxlbWVudGF0aW9uLCBkb2Vzbid0IG1lYW4NCj4gaXQgc2hvdWxkIGJl
IHRoZSB1c2Vyc3BhY2UgQUJJLiBXaHkgc2hvdWxkIHVzZXJzcGFjZSBjYXJlIHRoYXQgVEVFIGhh
cw0KPiBtZWRpYXRlZCB0aGUgYWxsb2NhdGlvbiBpbnN0ZWFkIG9mIGl0IGJlaW5nIGEgcHJlZGVm
aW5lZCByYW5nZSB3aXRoaW4NCj4gRFQ/DQoNClRoZSBURUUgbWF5IHZlcnkgd2VsbCB1c2UgYSBw
cmVkZWZpbmVkIHJhbmdlIHRoYXQgcGFydCBpcyBhYnN0cmFjdGVkDQp3aXRoIHRoZSBpbnRlcmZh
Y2UuDQoNCj4gSG93IGRvZXMgdXNlcnNwYWNlIHBpY2sgd2hpY2ggVEVFIGRldmljZSB0byB1c2U/
DQoNClRoZXJlJ3Mgbm9ybWFsbHkgb25seSBvbmUgYW5kIGV2ZW4gaWYgdGhlcmUgaXMgbW9yZSB0
aGFuIG9uZSBpdCBzaG91bGQNCmJlIHNhZmUgdG8gYXNzdW1lIHRoYXQgb25seSBvbmUgb2YgdGhl
bSBzaG91bGQgYmUgdXNlZCB3aGVuIGFsbG9jYXRpbmcNCnJlc3RyaWN0ZWQgbWVtb3J5IChURUVf
R0VOX0NBUF9SU1RNRU0gZnJvbSBURUVfSU9DX1ZFUlNJT04pLg0KDQo+ICBXaGF0IGFkdmFudGFn
ZQ0KPiBkb2VzIHVzZXJzcGFjZSBnZXQgZnJvbSBoYXZpbmcgdG8gaGF2ZSBhIGRpZmZlcmVudCBj
b2RlcGF0aCB0byBnZXQgYQ0KPiBkaWZmZXJlbnQgaGFuZGxlIHRvIG1lbW9yeT8gV2hhdCBhYm91
dCB4ODY/DQo+DQo+IEkgdGhpbmsgdGhpcyBwcm9wb3NhbCBpcyBsb29raW5nIGF0IGl0IGZyb20g
dGhlIHdyb25nIGRpcmVjdGlvbi4NCj4gSW5zdGVhZCBvZiB3b3JraW5nIHVwd2FyZHMgZnJvbSB0
aGUgaW1wbGVtZW50YXRpb24gdG8gdXNlcnNwYWNlLCBzdGFydA0KPiB3aXRoIHVzZXJzcGFjZSBh
bmQgd29yayBkb3dud2FyZHMuIFRoZSBpbnRlcmVzdGluZyBwcm9wZXJ0eSB0byBmb2N1cw0KPiBv
biBpcyBhbGxvY2F0aW5nIG1lbW9yeSwgbm90IHRoYXQgRUwxIGlzIGludm9sdmVkIGJlaGluZCB0
aGUgc2NlbmVzLg0KDQpGcm9tIHdoYXQgSSd2ZSBnYXRoZXJlZCBmcm9tIGVhcmxpZXIgZGlzY3Vz
c2lvbnMsIGl0IHdhc24ndCBtdWNoIG9mIGENCnByb2JsZW0gZm9yIHVzZXJzcGFjZSB0byBoYW5k
bGUgdGhpcy4gSWYgdGhlIGtlcm5lbCB3ZXJlIHRvIHByb3ZpZGUgaXQNCnZpYSBhIGRpZmZlcmVu
dCBBQkksIGhvdyB3b3VsZCBpdCBiZSBlYXNpZXIgdG8gaW1wbGVtZW50IGluIHRoZQ0Ka2VybmVs
PyBJIHRoaW5rIHdlIG5lZWQgYW4gZXhhbXBsZSB0byB1bmRlcnN0YW5kIHlvdXIgc3VnZ2VzdGlv
bi4NCg0KQ2hlZXJzLA0KSmVucw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
