Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9BD82C821
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 00:52:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A0FB43D0D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 23:52:00 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 7496A3F0D1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 23:51:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=dESPPSBB;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e43e55b87so17365e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 15:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705103498; x=1705708298; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kp9mV4Ke/a2nl4+Mq/TPZKlXYFvSYBSYldkMY7yov80=;
        b=dESPPSBB2drx3eePdMapc1TfIScS1ZP2FiTNgmiSIRRe+Jc/UAReOn5suZjSmwHC51
         hPDvgB0RxxwMfPovB0DiNK3shXJvgT9oYK224UNdxXvb2ujt1dWFtgG6QMV1lhlB1WcB
         Xa+1yv6pXairl1shY71ouMg8vHkYcwEm1LmK0b1udtNeTdEOq5dHTeDVjRQlNxWClg1d
         20KVmpG20KRKIuG537QI6ha3BDrOPYmpYW3fZZY32x4qv3Wje6N+0I6BDrfX3pMc/kKA
         O9aKijw3Ot5ZdySS17VUba//NcUInffkuxgA1iGqEst+d4QwqoDqmL7kRF4gBP2WeKO2
         B48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705103498; x=1705708298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kp9mV4Ke/a2nl4+Mq/TPZKlXYFvSYBSYldkMY7yov80=;
        b=RmmWa9B8/kkqaeMPavIGNtJsDJ6eUJIa9n32vTesPCQTiquHVdhg4E45HuZfWcshFj
         F2wodUiJL2OjtA2s47fUVsOrdWVCHvnP/TPv/5UalUaZbLTvUcZjnxPGDtkvDMnBPiqb
         73u0WGoVgaj1ErK+tfGjOduyca3vhJAz1bu1acZGG02t0z5+A4k1rC/uqilEZ8TsAHds
         kFUZBxD8wGPAuLm34xYevGJRRk4CSNVg70QoMJhlRBHX+TKfcoOwVJ/kLPB/+NY74INP
         fiUgktmVQ5c6uUw8I+l7hCSj5Y5mWhPz9m+0bFKuEwmaOx46/kOb9kSjozXISqmNch/G
         6iew==
X-Gm-Message-State: AOJu0Yw2gvjj4fgBcUzI96WLbat2o4soVrbsUP21vxcJ0Odnto+Oo6uN
	l31oU4bZkROwGQqGzGB3MtUhKNBpsStLFW8HELCnyp+AtXc=
X-Google-Smtp-Source: AGHT+IHw6ArP/KmmpI2CYpNyzdh9UGjQJc8eU/h6V5ZAE1R9MItE23iIMtklhlwhBVwyIqzHg22KBjSAxDaPMMiP1UE=
X-Received: by 2002:a05:600c:3b1d:b0:40d:87df:92ca with SMTP id
 m29-20020a05600c3b1d00b0040d87df92camr30276wms.3.1705103498218; Fri, 12 Jan
 2024 15:51:38 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com> <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
In-Reply-To: <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
From: John Stultz <jstultz@google.com>
Date: Fri, 12 Jan 2024 15:51:25 -0800
Message-ID: <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
To: Jeffrey Kardatzke <jkardatzke@google.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7496A3F0D1
X-Spamd-Bar: ------
Message-ID-Hash: Y4FG4J6IZORXD2W7I3SXJGRCLD4TFTDU
X-Message-ID-Hash: Y4FG4J6IZORXD2W7I3SXJGRCLD4TFTDU
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4FG4J6IZORXD2W7I3SXJGRCLD4TFTDU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMzoyN+KAr1BNIEplZmZyZXkgS2FyZGF0emtlIDxqa2Fy
ZGF0emtlQGdvb2dsZS5jb20+IHdyb3RlOg0KPiBPbiBGcmksIEphbiAxMiwgMjAyNCBhdCAyOjUy
4oCvUE0gSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4gT24gRnJp
LCBKYW4gMTIsIDIwMjQgYXQgMToyMeKAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29t
PiB3cm90ZToNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJp
Y3RlZF9oZWFwLmggYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4g
PiA+IGluZGV4IDQ0MzAyOGY2YmEzYi4uZGRlYWY5ODA1NzA4IDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+ID4gPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4gPiA+IEBAIC0xNSw2ICsxNSwx
OCBAQCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgew0KPiA+ID4NCj4gPiA+ICBzdHJ1Y3QgcmVz
dHJpY3RlZF9oZWFwIHsNCj4gPiA+ICAgICAgICAgY29uc3QgY2hhciAgICAgICAgICAgICAgKm5h
bWU7DQo+ID4gPiArDQo+ID4gPiArICAgICAgIGNvbnN0IHN0cnVjdCByZXN0cmljdGVkX2hlYXBf
b3BzICpvcHM7DQo+ID4gPiArfTsNCj4gPiA+ICsNCj4gPiA+ICtzdHJ1Y3QgcmVzdHJpY3RlZF9o
ZWFwX29wcyB7DQo+ID4gPiArICAgICAgIGludCAgICAgKCpoZWFwX2luaXQpKHN0cnVjdCByZXN0
cmljdGVkX2hlYXAgKmhlYXApOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBpbnQgICAgICgqbWVt
b3J5X2FsbG9jKShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLCBzdHJ1Y3QgcmVzdHJpY3Rl
ZF9idWZmZXIgKmJ1Zik7DQo+ID4gPiArICAgICAgIHZvaWQgICAgKCptZW1vcnlfZnJlZSkoc3Ry
dWN0IHJlc3RyaWN0ZWRfaGVhcCAqaGVhcCwgc3RydWN0IHJlc3RyaWN0ZWRfYnVmZmVyICpidWYp
Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICBpbnQgICAgICgqbWVtb3J5X3Jlc3RyaWN0KShzdHJ1
Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKmJ1Zik7
DQo+ID4gPiArICAgICAgIHZvaWQgICAgKCptZW1vcnlfdW5yZXN0cmljdCkoc3RydWN0IHJlc3Ry
aWN0ZWRfaGVhcCAqaGVhcCwgc3RydWN0IHJlc3RyaWN0ZWRfYnVmZmVyICpidWYpOw0KPiA+ID4g
IH07DQo+ID4gPg0KPiA+ID4gIGludCByZXN0cmljdGVkX2hlYXBfYWRkKHN0cnVjdCByZXN0cmlj
dGVkX2hlYXAgKnJzdHJkX2hlYXApOw0KPiA+DQo+ID4gU28sIEknbSBhIGxpdHRsZSB3b3JyaWVk
IGhlcmUsIGJlY2F1c2UgeW91J3JlIGJhc2ljYWxseSB0dXJuaW5nIHRoZQ0KPiA+IHJlc3RyaWN0
ZWRfaGVhcCBkbWEtYnVmIGhlYXAgZHJpdmVyIGludG8gYSBmcmFtZXdvcmsgaXRzZWxmLg0KPiA+
IFdoZXJlIHRoaXMgcGF0Y2ggaXMgY3JlYXRpbmcgYSBzdWJkcml2ZXIgZnJhbWV3b3JrLg0KPiA+
DQo+ID4gUGFydCBvZiBteSBoZXNpdGFuY3ksIGlzIHlvdSdyZSBpbnRyb2R1Y2luZyB0aGlzIHVu
ZGVyIHRoZSBkbWEtYnVmDQo+ID4gaGVhcHMuIEZvciB0aGluZ3MgbGlrZSBDTUEsIHRoYXQncyBt
b3JlIG9mIGEgY29yZSBzdWJzeXN0ZW0gdGhhdCBoYXMNCj4gPiBtdWx0aXBsZSB1c2VycywgYW5k
IGV4cG9ydGluZyBjbWEgYnVmZmVycyB2aWEgZG1hYnVmIGhlYXBzIGlzIGp1c3QgYW4NCj4gPiBh
ZGRpdGlvbmFsIGludGVyZmFjZS4gIFdoYXQgSSBsaWtlIGFib3V0IHRoYXQgaXMgdGhlIGNvcmUg
a2VybmVsIGhhcw0KPiA+IHRvIGRlZmluZSB0aGUgc2VtYW50aWNzIGZvciB0aGUgbWVtb3J5IHR5
cGUgYW5kIHRoZW4gdGhlIGRtYWJ1ZiBoZWFwDQo+ID4gaXMganVzdCBleHBvcnRpbmcgdGhhdCB3
ZWxsIHVuZGVyc3Rvb2QgdHlwZSBvZiBidWZmZXIuDQo+ID4NCj4gPiBCdXQgd2l0aCB0aGVzZSBy
ZXN0cmljdGVkIGJ1ZmZlcnMsIEknbSBub3Qgc3VyZSB0aGVyZSdzIHlldCBhIHdlbGwNCj4gPiB1
bmRlcnN0b29kIHNldCBvZiBzZW1hbnRpY3Mgbm9yIGEgY2VudHJhbCBhYnN0cmFjdGlvbiBmb3Ig
dGhhdCB3aGljaA0KPiA+IG90aGVyIGRyaXZlcnMgdXNlIGRpcmVjdGx5Lg0KPiA+DQo+ID4gSSBr
bm93IHBhcnQgb2YgdGhpcyBlZmZvcnQgaGVyZSBpcyB0byBzdGFydCB0byBjZW50cmFsaXplIGFs
bCB0aGVzZQ0KPiA+IHZlbmRvciBzcGVjaWZpYyByZXN0cmljdGVkIGJ1ZmZlciBpbXBsZW1lbnRh
dGlvbnMsIHdoaWNoIEkgdGhpbmsgaXMNCj4gPiBncmVhdCwgYnV0IEkganVzdCB3b3JyeSB0aGF0
IGluIGRvaW5nIGl0IGluIHRoZSBkbWFidWYgaGVhcCBpbnRlcmZhY2UsDQo+ID4gaXQgaXMgYSBi
aXQgdG9vIHVzZXItZmFjaW5nLiBUaGUgbGlrZWxpaG9vZCBvZiBlbmNvZGluZyBhIHBhcnRpY3Vs
YXINCj4gPiBzZW1hbnRpYyB0byB0aGUgc2luZ3VsYXIgInJlc3RyaWN0ZWRfaGVhcCIgbmFtZSBz
ZWVtcyBoaWdoLg0KPg0KPiBJbiBwYXRjaCAjNSBpdCBoYXMgdGhlIGFjdHVhbCBkcml2ZXIgaW1w
bGVtZW50YXRpb24gZm9yIHRoZSBNVEsgaGVhcA0KPiB0aGF0IGluY2x1ZGVzIHRoZSBoZWFwIG5h
bWUgb2YgInJlc3RyaWN0ZWRfbXRrX2NtIiwgc28gdGhlcmUgc2hvdWxkbid0DQo+IGJlIGEgaGVh
cCBuYW1lZCAicmVzdHJpY3RlZF9oZWFwIiB0aGF0J3MgYWN0dWFsbHkgZ2V0dGluZyBleHBvc2Vk
LiBUaGUNCg0KQWgsIEkgYXBwcmVjaWF0ZSB0aGF0IGNsYXJpZmljYXRpb24hIEluZGVlZCwgeW91
J3JlIHJpZ2h0IHRoZSBuYW1lIGlzDQpwYXNzZWQgdGhyb3VnaC4gQXBvbG9naWVzIGZvciBtaXNz
aW5nIHRoYXQgZGV0YWlsLg0KDQo+IHJlc3RyaWN0ZWRfaGVhcCBjb2RlIGlzIGEgZnJhbWV3b3Jr
LCBhbmQgbm90IGEgZHJpdmVyIGl0c2VsZi4gIFVubGVzcw0KPiBJJ20gbWlzc2luZyBzb21ldGhp
bmcgaW4gdGhpcyBwYXRjaHNldC4uLmJ1dCB0aGF0J3MgdGhlIHdheSBpdCdzDQo+ICpzdXBwb3Nl
ZCogdG8gYmUuDQoNClNvIEkgZ3Vlc3MgSSdtIG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB0aGUgYmVu
ZWZpdCBvZiB0aGUgZXh0cmENCmluZGlyZWN0aW9uLiBXaGF0IHRoZW4gZG9lcyB0aGUgcmVzdHJp
Y3RlZF9oZWFwLmMgbG9naWMgaXRzZWxmDQpwcm92aWRlPw0KVGhlIGRtYWJ1ZiBoZWFwcyBmcmFt
ZXdvcmsgYWxyZWFkeSBwcm92aWRlcyBhIHdheSB0byBhZGQgaGVhcCBpbXBsZW1lbnRhdGlvbnMu
DQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
