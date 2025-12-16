Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE38CC0900
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 03:07:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05C94400CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Dec 2025 02:07:17 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 581E13F80E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Dec 2025 02:07:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=F6Jaed23;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477a1c8cc47so22195e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 18:07:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765850831; cv=none;
        d=google.com; s=arc-20240605;
        b=dF5LCOdI/YLB24HrCGLf7eQ7UJDub9Dl2EB/59NUZk48sbet34mWa/fChQjRg1+jWb
         Y1o56e/WUf3gL+8qIlLM9LuMtwV140dVAqc5+v0aetCgbVon4eZQjIj9nxneNN+ynkhP
         xZix/2rP2H05HYRDNw+yood1LTrIFRf1klOagboeNLg8RpABNdDalzp/x035RTOgeh7Y
         JJQOIChATZbtINfT3qwiHLCb3tH+30tUoRthQ12O3X20smlFRt9gsbBPneowc3mHt/Kk
         ZFBI5I5RNGfgcMjiBr/jpjL8gueqp+fqfORdPYP2PS+SR2xJcP3rXZeC+sbYcusc1CNg
         LvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=etZ0EK6rCv46UcJh/ala8M9Aq++W1rrlstabB9Q2neI=;
        fh=qqgPZakG7fiF5knJ8xfxWF7g2TD2m/iVLj0HYk8Ef5Y=;
        b=U4xOsdTXLcoeX4hZrsjLMrAoFDHa+BRDQvhhX1RyJsDqIC5uZP2nn2irJPnqslMC6S
         l/1sxM7nUeMucR7tg4DYmj5GMISdKygbdHqlMjea1z7AfvO99OeQ3UbiH8Q5ABBmPSUZ
         6pvx/t6TdO3d1l6Rgc7iYAWeOOH4VcmxkDVX3FtLb+Mm7ypoGRisQ6reiREPS0jPNV+Q
         gtQCVwawN50lWxQ6f1d1LGNiTr2v51sfMb2AaTsPr8LOwafWDPRmUs3oKx/3DjUQrhjL
         tAHCBMLYQ2FYs+0kRWyVob3Ayrxj3XILH0giuXV4jlCsgDPAEHBRUyeN5ajcUP34xoTM
         t3Qw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765850831; x=1766455631; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etZ0EK6rCv46UcJh/ala8M9Aq++W1rrlstabB9Q2neI=;
        b=F6Jaed23PuE8GQ8KDKIACPQjSgotBhZIsx+8w/S15QgtK/kBaxtlyDj0jHv2NjUPbV
         oMsmovQceskqYtoqosFSgm2sIgomAqpzpHWXwzQhBMbYpx+hMIMZw3U1T3FSEtb9Cdiq
         4KzLFNXlL4PXnpuVNzeyyS018HQiHT7nJcXhont4ki9eicTFLrlJMGSFfQT2ia7t4EWw
         qlnhMrzRyk6i8NGy1Bt0VsS8+oIdA6HemjRfWzAv/4H4gsSzRRf50BEQHCojYhXH49bO
         ZrF+WEr6zprXWYh2eZAUTOJ22fF1vtY5aEXMeRjnt5ST6bVneXjbYQHlkjdB2bsc1LMt
         JU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765850831; x=1766455631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=etZ0EK6rCv46UcJh/ala8M9Aq++W1rrlstabB9Q2neI=;
        b=ABr3l0PFy5rfJxFXRwXvDDIQdkCZ3DSrUO7hleCmPZCX/pRzhY9U8LBdt4hJody6sn
         wfHPF9lFa0lSPms73OCyJTrRFxx088YqvAkegBHVl7nvq/PaZxu5u8P23MLU7YM96kvn
         wyct1xesUyd1F+L2tFiMv23TzeVGa5L+k/JYGIfizTy9co+cPTly1n62nPpPWW88GLfM
         3dnbOTqLuTuWO+ZbdttW1r4+faS48FW+B60XBcQgZmOURfIxI+7yWttuUdBHd+OM8QdD
         tFwMPlitG458Yhxen+EwPQXzN0MZpd3pJAd0duD5igUCEU8KkMmUDWDV1U1mcJN81hbr
         cxMw==
X-Forwarded-Encrypted: i=1; AJvYcCU02CdImmqYG4fs4UqWOx9S0tXwvr1tds4YSzH4nMOJHRMXphppTTNi8N4/UWyhzmSbrxCQIbj1l5ZxWzSK@lists.linaro.org
X-Gm-Message-State: AOJu0YzQf/UvDvURSG8giBX5mnuFMlMtQznBo5LejuwNAyX8BLOTPHqm
	q/tRk5oP/MWtNv0HFX70aoUSKDQeWngMFSlHyNtv34EA0PeosfSa98zgZwchmgIRwUaLNFS3e6s
	8hbEoQ3CMJZktbi62vzLB11NsgQ2sg3dzychBGZJQ
X-Gm-Gg: AY/fxX6wZGnqesdWOwPRTdXTC53DZlNYgP812+AbDnuTJD8OdORTdVJ+2dWBJl7CIRu
	Y/gfEjVwWf6yZRoj5/rF4sD6KooHRY7nI0ozpe9VFg1M80hm0xhOSVhzhcRE7mJGxePu/fwf6PN
	TZjQlY4vtX2E5exN+4a4jWG4hKpcvzvbgalJqHJDpY42q7XWDDiC/FAIlpSugUQKg1ZG+jUGhn2
	f4yLu0XF3ZxZ5kSYIl5SMcfIDhCfmLI8peH700xXHClM1bkMBrfjsUnaj+FSYmWpMwD4mmu4/Bw
	QxjtijboRRsKFZDCedf6FlQIO/dDrfFlXUvY8z0=
X-Google-Smtp-Source: AGHT+IEUmHtyIm4mkuG1Lw9nrtCCNOT3mva1Q+G2lidhB9qtF9TON4fldFLcKbTg56beBWDZhQDUCL/VH1kJamQBSf8=
X-Received: by 2002:a05:600c:8a0d:10b0:477:779a:67fc with SMTP id
 5b1f17b1804b1-47bd797450emr116395e9.5.1765850831139; Mon, 15 Dec 2025
 18:07:11 -0800 (PST)
MIME-Version: 1.0
References: <20251211193106.755485-2-echanude@redhat.com> <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
In-Reply-To: <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 16 Dec 2025 11:06:59 +0900
X-Gm-Features: AQt7F2qPBf3y-Wy7fvkcCllXNhzIQ5MM-o21_RdxOwKfkIHj_isVetCaxCEFurk
Message-ID: <CABdmKX1HgSzUPS1Ot93tpctgunfHt_F_XNROB6zzpu_u0oH2=A@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 581E13F80E
X-Spamd-Bar: ----
Message-ID-Hash: GGW6YMYYPCJMRESBQP7I5FDW33LWF5XO
X-Message-ID-Hash: GGW6YMYYPCJMRESBQP7I5FDW33LWF5XO
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Koenig <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GGW6YMYYPCJMRESBQP7I5FDW33LWF5XO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNzo1MeKAr1BNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IEhpIFRKLA0KDQpIaSBNYXhpbWUsDQoNCj4gT24gRnJp
LCBEZWMgMTIsIDIwMjUgYXQgMDg6MjU6MTlBTSArMDkwMCwgVC5KLiBNZXJjaWVyIHdyb3RlOg0K
PiA+IE9uIEZyaSwgRGVjIDEyLCAyMDI1IGF0IDQ6MzHigK9BTSBFcmljIENoYW51ZGV0IDxlY2hh
bnVkZUByZWRoYXQuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBUaGUgc3lzdGVtIGRtYS1idWYg
aGVhcCBsZXRzIHVzZXJzcGFjZSBhbGxvY2F0ZSBidWZmZXJzIGZyb20gdGhlIHBhZ2UNCj4gPiA+
IGFsbG9jYXRvci4gSG93ZXZlciwgdGhlc2UgYWxsb2NhdGlvbnMgYXJlIG5vdCBhY2NvdW50ZWQg
Zm9yIGluIG1lbWNnLA0KPiA+ID4gYWxsb3dpbmcgcHJvY2Vzc2VzIHRvIGVzY2FwZSBsaW1pdHMg
dGhhdCBtYXkgYmUgY29uZmlndXJlZC4NCj4gPiA+DQo+ID4gPiBQYXNzIHRoZSBfX0dGUF9BQ0NP
VU5UIGZvciBvdXIgYWxsb2NhdGlvbnMgdG8gYWNjb3VudCB0aGVtIGludG8gbWVtY2cuDQo+ID4N
Cj4gPiBXZSBoYWQgYSBkaXNjdXNzaW9uIGp1c3QgbGFzdCBuaWdodCBpbiB0aGUgTU0gdHJhY2sg
YXQgTFBDIGFib3V0IGhvdw0KPiA+IHNoYXJlZCBtZW1vcnkgYWNjb3VudGVkIGluIG1lbWNnIGlz
IHByZXR0eSBicm9rZW4uIFdpdGhvdXQgYSB3YXkgdG8NCj4gPiBpZGVudGlmeSAoYW5kIHBvc3Np
Ymx5IHRyYW5zZmVyKSBvd25lcnNoaXAgb2YgYSBzaGFyZWQgYnVmZmVyLCB0aGlzDQo+ID4gbWFr
ZXMgdGhlIGFjY291bnRpbmcgb2Ygc2hhcmVkIG1lbW9yeSwgYW5kIHpvbWJpZSBtZW1jZyBwcm9i
bGVtcw0KPiA+IHdvcnNlLiA6XA0KPg0KPiBBcmUgdGhlcmUgbm90ZXMgb3IgYSByZXBvcnQgZnJv
bSB0aGF0IGRpc2N1c3Npb24gYW55d2hlcmU/DQoNClRoZSBMUEMgdmlkcyBoYXZlbid0IGJlZW4g
Y2xpcHBlZCB5ZXQsIGFuZCBhY3R1YWxseSBJIGNhbid0IGV2ZW4gZmluZA0KdGhlIHJlY29yZGVk
IGZ1bGwgbGl2ZSBzdHJlYW0gZnJvbSBIYWxsIEEyIG9uIHRoZSBmaXJzdCBkYXkuIFNvIEkNCmRv
bid0IHRoaW5rIHRoZXJlJ3MgYW55dGhpbmcgdG8gbG9vayBhdCwgYnV0IEkgYmV0IHRoZXJlJ3Mg
cHJvYmFibHkNCm5vdGhpbmcgdGhlcmUgeW91IGRvbid0IGFscmVhZHkga25vdy4NCg0KPiBUaGUg
d2F5IEkgc2VlIGl0LCB0aGUgZG1hLWJ1ZiBoZWFwcyAqdHJpdmlhbCogY2FzZSBpcyBub24tZXhp
c3RlbnQgYXQNCj4gdGhlIG1vbWVudCBhbmQgdGhhdCdzIGRlZmluaXRlbHkgYnJva2VuLiBBbnkg
YXBwbGljYXRpb24gY2FuIGJ5cGFzcyBpdHMNCj4gY2dyb3VwcyBsaW1pdHMgdHJpdmlhbGx5LCBh
bmQgdGhhdCdzIGEgcHJldHR5IGJpZyBob2xlIGluIHRoZSBzeXN0ZW0uDQoNCkFncmVlLCBidXQg
aWYgd2Ugb25seSBjaGFyZ2UgdGhlIGZpcnN0IGFsbG9jYXRvciB0aGVuIGxpbWl0cyBjYW4gc3Rp
bGwNCmVhc2lseSBiZSBieXBhc3NlZCBhc3N1bWluZyBhbiBhcHAgY2FuIGNhdXNlIGFuIGFsbG9j
YXRpb24gb3V0c2lkZSBvZg0KaXRzIGNncm91cCB0cmVlLg0KDQpJJ20gbm90IHN1cmUgdXNpbmcg
c3RhdGljIG1lbWNnIGxpbWl0cyB3aGVyZSBhIHNpZ25pZmljYW50IHBvcnRpb24gb2YNCnRoZSBt
ZW1vcnkgY2FuIGJlIHNoYXJlZCBpcyByZWFsbHkgZmVhc2libGUuIEV2ZW4gd2l0aCBqdXN0IHBh
Z2VjYWNoZQ0KYmVpbmcgY2hhcmdlZCB0byBtZW1jZ3MsIHdlJ3JlIGhhdmluZyB0cm91YmxlIGRl
ZmluaW5nIGEgc3RhdGljIG1lbWNnDQpsaW1pdCB0aGF0IGlzIHJlYWxseSB1c2VmdWwgc2luY2Ug
aXQgaGFzIHRvIGJlIGhpZ2ggZW5vdWdoIHRvDQphY2NvbW9kYXRlIG9jY2FzaW9uYWwgc3Bpa2Vz
IGR1ZSB0byBzaGFyZWQgbWVtb3J5IHRoYXQgbWlnaHQgb3IgbWlnaHQNCm5vdCBiZSBjaGFyZ2Vk
IChzaW5jZSBpdCBjYW4gb25seSBiZSBjaGFyZ2VkIHRvIG9uZSBtZW1jZyAtIGl0IG1heSBiZQ0K
c3ByZWFkIGFyb3VuZCBvciBpdCBtYXkgYWxsIGdldCBjaGFyZ2VkIHRvIG9uZSBtZW1jZykuIFNv
IGV4Y2Vzc2l2ZQ0KYW5vbnltb3VzIHVzZSBoYXMgdG8gZ2V0IHJlYWxseSBiYWQgYmVmb3JlIGl0
IGdldHMgcHVuaXNoZWQuDQoNCldoYXQgSSd2ZSBiZWVuIGhlYXJpbmcgbGF0ZWx5IGlzIHRoYXQg
Zm9sa3MgYXJlIHBvbGxpbmcgbWVtb3J5LnN0YXQgb3INClBTSSBvciBvdGhlciBtZXRyaWNzIGFu
ZCB1c2luZyB0aGF0IHRvIHRha2UgYWN0aW9ucyAobWVtb3J5LnJlY2xhaW0gLw0Ka2lsbGluZyAv
IGFkanVzdCBtZW1vcnkuaGlnaCkgYXQgcnVudGltZSByYXRoZXIgdGhhbiByZWx5aW5nIG9uDQpt
ZW1vcnkuaGlnaC9tYXggYmVoYXZpb3Igd2l0aCBhIHN0YXRpYyBsaW1pdC4NCg0KPiBUaGUgc2hh
cmVkIG93bmVyc2hpcCBpcyBpbmRlZWQgYnJva2VuLCBidXQgaXQncyBub3QgbW9yZSBvciBsZXNz
IGJyb2tlbg0KPiB0aGFuLCBzYXksIG1lbWZkICsgdWRtYWJ1ZiwgYW5kIEknbSBzdXJlIHBsZW50
eSBvZiBvdGhlcnMuDQoNCk9uZSB0aGluZyB0aGF0J3Mgd29yc2UgYWJvdXQgc3lzdGVtIGhlYXAg
YnVmZmVycyBpcyB0aGF0IHVubGlrZSBtZW1mZA0KdGhlIG1lbW9yeSBpc24ndCByZWNsYWltYWJs
ZS4gU28gd2l0aG91dCBraWxsaW5nIGFsbCB1c2VycyB0aGVyZSdzDQpjdXJyZW50bHkgbm8gd2F5
IHRvIGRlYWwgd2l0aCB0aGUgem9tYmllIGlzc3VlLiBIYXJyeSdzIHByb3Bvc2luZw0KcmVwYXJl
bnRpbmcsIGJ1dCBJIGRvbid0IHRoaW5rIG91ciBjdXJyZW50IGludGVyZmFjZXMgc3VwcG9ydCB0
aGF0DQpiZWNhdXNlIHdlJ2QgaGF2ZSB0byBtZXNzIHdpdGggdGhlIHBhZ2Ugc3RydWN0cyBiZWhp
bmQgc3lzdGVtIGhlYXANCmRtYWJ1ZnMgdG8gY2hhbmdlIHRoZSBtZW1jZyBkdXJpbmcgcmVwYXJl
bnRpbmcuDQoNCkFoLi4uIGJ1dCB1ZG1hYnVmIHBpbnMgdGhlIG1lbWZkIHBhZ2VzLCBzbyB5b3Un
cmUgcmlnaHQgdGhhdCBtZW1mZCArDQp1ZG1hYnVmIGlzbid0IHdvcnNlLg0KDQo+IFNvIHdlIHJl
YWxseSBpbXByb3ZlIHRoZSBjb21tb24gY2FzZSwgYnV0IG9ubHkgbWFrZSB0aGUgImFkdmFuY2Vk
Ig0KPiBzbGlnaHRseSBtb3JlIGJyb2tlbiB0aGFuIGl0IGFscmVhZHkgaXMuDQo+DQo+IFdvdWxk
IHlvdSBkaXNhZ3JlZT8NCg0KSSB0aGluayBtZW1jZyBsaW1pdHMgaW4gdGhpcyBjYXNlIGp1c3Qg
d291bGRuJ3QgYmUgdXNhYmxlIGJlY2F1c2Ugb2YNCndoYXQgSSBtZW50aW9uZWQgYWJvdmUuIElu
IG91ciBjb21tb24gY2FzZSB0aGUgYWxsb2NhdG9yIGlzIGluIGENCmRpZmZlcmVudCBjZ3JvdXAg
dHJlZSB0aGFuIHRoZSByZWFsIHVzZXJzIG9mIHRoZSBidWZmZXIuDQoNCj4gTWF4aW1lDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
