Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C39480BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2024 19:53:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20D4644AC3
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2024 17:53:50 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id E41843F673
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2024 17:53:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=jmEwy1cl;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.46) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a7abaa983bcso1858866b.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Aug 2024 10:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1722880413; x=1723485213; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cEa+YT/mVCcUD9GpjPevIJZLtJmVc6lmcDDNejfBO+w=;
        b=jmEwy1clPCxPKcI951ww5d0mYbYSKKZR4ShhIhYIifQudQUsNtCK+Hh0wJoGaZZwb3
         MI8tlqg2yXX+QgmgKX+cKlygbFk01X74xMT63kQnUYiCid9W0oxJpEgfURUe/tp8KFCK
         UyNEfdQmeL6mlI754PyRFHBXT8T1OeKkxHvjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722880413; x=1723485213;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cEa+YT/mVCcUD9GpjPevIJZLtJmVc6lmcDDNejfBO+w=;
        b=VYyjzaaKTxBFn6utWfsdWgKEGJ/Fqca3cTdW7/Mnz3jDm4SAIQjMS/IPH2fvEezgwv
         UQw5WFiX15uezdurGtEeKltaI7IWUrGNarDvbPCQZpKaSkia90M7sZLH3YqrMS3kT8/z
         krFqKchVnL7dJeMxb5j2PABzScDf1lcru10WYHeLuDZHXjaoWiNb3N/YYSGWgVWi3tGy
         oTDa95krW6+kRdOzaT4x3S2T4XXMNTNBRCwVRWCVaUk5hqbUHRBNgprkNiSCh4NJVJPQ
         st1rv+ACcrGnGdwESSuLdc7oFBelDLjTecgpy//FGrgvzQrYu9VBn/1v0Y/pBYNtsdIU
         jCxg==
X-Forwarded-Encrypted: i=1; AJvYcCXpK+lKV+d97JrUzt3pS5moJYt9EiWaeTW+VQpxlRd9xjE1lvs4rLJbnoVqEkAhibSCwCX/cGAna14xYlCHgDy/F1a/LdMId17XN7aDcN8=
X-Gm-Message-State: AOJu0YzMAfxxxpWLdFCj8pD8ySnIVmQHJytwNO7w2Ru/lw5sy0epWd+/
	ajwrNqNNTD0mDahjNBh9UJVrMivS4EOex7svbWSIc7czUyReMXFcc2vAk3/C0r8=
X-Google-Smtp-Source: AGHT+IGlF5DiKdBDow/gpp4uHOITP01+3OGMKycpIkbo2FerV/n9VK31oyha5PyJpYnERo4T2I9irQ==
X-Received: by 2002:a17:907:3f29:b0:a72:499a:e5ba with SMTP id a640c23a62f3a-a7dc50f07d0mr706646266b.7.1722880412461;
        Mon, 05 Aug 2024 10:53:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9bcc86asm472899466b.28.2024.08.05.10.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 10:53:31 -0700 (PDT)
Date: Mon, 5 Aug 2024 19:53:30 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Huan Yang <link@vivo.com>
Message-ID: <ZrERmndxBS5xUvuE@phenom.ffwll.local>
Mail-Followup-To: Huan Yang <link@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	opensource.kernel@vivo.com
References: <20240730075755.10941-1-link@vivo.com>
 <Zqiqv7fomIp1IPS_@phenom.ffwll.local>
 <25cf34bd-b11f-4097-87b5-39e6b4a27d85@vivo.com>
 <37b07e69-df85-45fc-888d-54cb7c4be97a@vivo.com>
 <Zqqing7M2notp6Ou@phenom.ffwll.local>
 <4e83734a-d0cf-4f8a-9731-d370e1064d65@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e83734a-d0cf-4f8a-9731-d370e1064d65@vivo.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E41843F673
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.39 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: LOIGGXRIOQAMHBPELQM6QSIVHS5FNNYE
X-Message-ID-Hash: LOIGGXRIOQAMHBPELQM6QSIVHS5FNNYE
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/5] Introduce DMA_HEAP_ALLOC_AND_READ_FILE heap flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOIGGXRIOQAMHBPELQM6QSIVHS5FNNYE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBdWcgMDEsIDIwMjQgYXQgMTA6NTM6NDVBTSArMDgwMCwgSHVhbiBZYW5nIHdyb3Rl
Og0KPiANCj4g5ZyoIDIwMjQvOC8xIDQ6NDYsIERhbmllbCBWZXR0ZXIg5YaZ6YGTOg0KPiA+IE9u
IFR1ZSwgSnVsIDMwLCAyMDI0IGF0IDA4OjA0OjA0UE0gKzA4MDAsIEh1YW4gWWFuZyB3cm90ZToN
Cj4gPiA+IOWcqCAyMDI0LzcvMzAgMTc6MDUsIEh1YW4gWWFuZyDlhpnpgZM6DQo+ID4gPiA+IOWc
qCAyMDI0LzcvMzAgMTY6NTYsIERhbmllbCBWZXR0ZXIg5YaZ6YGTOg0KPiA+ID4gPiA+IFs/Pz8/
Pz8/Pz8gZGFuaWVsLnZldHRlckBmZndsbC5jaCA/Pz8/Pz8/Pz8NCj4gPiA+ID4gPiBodHRwczov
L2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24/Pz8/Pz8/Pz8/Pz8/XQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IE9uIFR1ZSwgSnVsIDMwLCAyMDI0IGF0IDAzOjU3OjQ0UE0gKzA4
MDAsIEh1YW4gWWFuZyB3cm90ZToNCj4gPiA+ID4gPiA+IFVETUEtQlVGIHN0ZXA6DQo+ID4gPiA+
ID4gPiAgwqDCoCAxLiBtZW1mZF9jcmVhdGUNCj4gPiA+ID4gPiA+ICDCoMKgIDIuIG9wZW4gZmls
ZShidWZmZXIvZGlyZWN0KQ0KPiA+ID4gPiA+ID4gIMKgwqAgMy4gdWRtYWJ1ZiBjcmVhdGUNCj4g
PiA+ID4gPiA+ICDCoMKgIDQuIG1tYXAgbWVtZmQNCj4gPiA+ID4gPiA+ICDCoMKgIDUuIHJlYWQg
ZmlsZSBpbnRvIG1lbWZkIHZhZGRyDQo+ID4gPiA+ID4gWWVhaCB0aGlzIGlzIHJlYWxseSBzbG93
IGFuZCB0aGUgd29yc3Qgd2F5IHRvIGRvIGl0LiBZb3UgYWJzb2x1dGVseSB3YW50DQo+ID4gPiA+
ID4gdG8gc3RhcnQgX2FsbF8gdGhlIGlvIGJlZm9yZSB5b3Ugc3RhcnQgY3JlYXRpbmcgdGhlIGRt
YS1idWYsIGlkZWFsbHkNCj4gPiA+ID4gPiB3aXRoDQo+ID4gPiA+ID4gZXZlcnl0aGluZyBydW5u
aW5nIGluIHBhcmFsbGVsLiBCdXQganVzdCBzdGFydGluZyB0aGUgZGlyZWN0IEkvTyB3aXRoDQo+
ID4gPiA+ID4gYXN5bmMgYW5kIHRoZW4gY3JlYXRpbmcgdGhlIHVtZGFidWYgc2hvdWxkIGJlIGEg
bG90IGZhc3RlciBhbmQgYXZvaWQNCj4gPiA+ID4gVGhhdCdzIGdyZWF0ZSzCoCBMZXQgbWUgcmVw
aHJhc2UgdGhhdCwgYW5kIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZy4NCj4gPiA+ID4g
DQo+ID4gPiA+IFVETUEtQlVGIHN0ZXA6DQo+ID4gPiA+ICDCoCAxLiBtZW1mZF9jcmVhdGUNCj4g
PiA+ID4gIMKgIDIuIG1tYXAgbWVtZmQNCj4gPiA+ID4gIMKgIDMuIG9wZW4gZmlsZShidWZmZXIv
ZGlyZWN0KQ0KPiA+ID4gPiAgwqAgNC4gc3RhcnQgdGhyZWFkIHRvIGFzeW5jIHJlYWQNCj4gPiA+
ID4gIMKgIDMuIHVkbWFidWYgY3JlYXRlDQo+ID4gPiA+IA0KPiA+ID4gPiBXaXRoIHRoaXMsIGNh
biBpbXByb3ZlDQo+ID4gPiBJIGp1c3QgdGVzdCB3aXRoIGl0LiBTdGVwIGlzOg0KPiA+ID4gDQo+
ID4gPiBVRE1BLUJVRiBzdGVwOg0KPiA+ID4gIMKgIDEuIG1lbWZkX2NyZWF0ZQ0KPiA+ID4gIMKg
IDIuIG1tYXAgbWVtZmQNCj4gPiA+ICDCoCAzLiBvcGVuIGZpbGUoYnVmZmVyL2RpcmVjdCkNCj4g
PiA+ICDCoCA0LiBzdGFydCB0aHJlYWQgdG8gYXN5bmMgcmVhZA0KPiA+ID4gIMKgIDUuIHVkbWFi
dWYgY3JlYXRlDQo+ID4gPiANCj4gPiA+ICDCoCA2IC4gam9pbiB3YWl0DQo+ID4gPiANCj4gPiA+
IDNHIGZpbGUgcmVhZCBhbGwgc3RlcCBjb3N0IDEsNTI3LDEwMyw0MzFucywgaXQncyBncmVhdGUu
DQo+ID4gT2sgdGhhdCdzIGFsbW9zdCB0aGUgdGhyb3VnaHB1dCBvZiB5b3VyIHBhdGNoIHNldCwg
d2hpY2ggSSB0aGluayBpcyBjbG9zZQ0KPiA+IGVub3VnaC4gVGhlIHJlbWFpbmluZyBkaWZmZXJl
bmNlIGlzIHByb2JhYmx5IGp1c3QgdGhlIG1tYXAgb3ZlcmhlYWQsIG5vdA0KPiA+IHN1cmUgd2hl
dGhlci9ob3cgd2UgY2FuIGRvIGRpcmVjdCBpL28gdG8gYW4gZmQgZGlyZWN0bHkgLi4uIGluIHBy
aW5jaXBsZQ0KPiA+IGl0J3MgcG9zc2libGUgZm9yIGFueSBmaWxlIHRoYXQgdXNlcyB0aGUgc3Rh
bmRhcmQgcGFnZWNhY2hlLg0KPiANCj4gWWVzLCBmb3IgbW1hcCwgSU1PLCBub3cgdGhhdCB3ZSBn
ZXQgYWxsIGZvbGlvcyBhbmQgcGluIGl0LiBUaGF0J3MgbWVhbiBhbGwNCj4gcGZuIGl0J3MgZ290
IHdoZW4gdWRtYWJ1ZiBjcmVhdGVkLg0KPiANCj4gU28sIEkgdGhpbmsgbW1hcCB3aXRoIHBhZ2Ug
ZmF1bHQgaXMgaGVscGxlc3MgZm9yIHNhdmUgbWVtb3J5IGJ1dCBpbmNyZWFzZQ0KPiB0aGUgbW1h
cCBhY2Nlc3MgY29zdC4obWF5YmUgY2FuIHNhdmUgYSBsaXR0bGUgcGFnZSB0YWJsZSdzIG1lbW9y
eSkNCj4gDQo+IEkgd2FudCB0byBvZmZlciBhIHBhdGNoc2V0IHRvIHJlbW92ZSBpdCBhbmQgbW9y
ZSBzdWl0YWJsZSBmb3IgZm9saW9zDQo+IG9wZXJhdGUoQW5kIHJlbW92ZSB1bnBpbiBsaXN0KS4g
QW5kIGNvbnRhaW5zIHNvbWUgZml4IHBhdGNoLg0KPiANCj4gSSdsbCBzZW5kIGl0IHdoZW4gSSB0
ZXN0IGl0J3MgZ29vZC4NCj4gDQo+IA0KPiBBYm91dCBmZCBvcGVyYXRpb24gZm9yIGRpcmVjdCBJ
L08sIG1heWJlIHVzZSBzZW5kZmlsZSBvciBjb3B5X2ZpbGVfcmFuZ2U/DQo+IA0KPiBzZW5kZmls
ZSBiYXNlIHBpcGUgYnVmZmVyLCBpdCdzIGxvdyBwZXJmb3JtYW5jZSB3aGVuIEkgdGVzdCBpcy4N
Cj4gDQo+IGNvcHlfZmlsZV9yYW5nZSBjYW4ndCB3b3JrIGR1ZSB0byBpdCdzIG5vdCB0aGUgc2Ft
ZSBmaWxlIHN5c3RlbS4NCj4gDQo+IFNvLCBJIGNhbid0IGZpbmQgb3RoZXIgd2F5IHRvIGRvIGl0
LiBDYW4gc29tZW9uZSBnaXZlIHNvbWUgc3VnZ2VzdGlvbnM/DQoNClllYWggZGlyZWN0IEkvTyB0
byBwYWdlY2FjaGUgd2l0aG91dCBhbiBtbWFwIG1pZ2h0IGJlIHRvbyBuaWNoZSB0byBiZQ0Kc3Vw
cG9ydGVkLiBNYXliZSBpb191cmluZyBoYXMgc29tZXRoaW5nLCBidXQgSSBndWVzcyBhcyB1bmxp
a2VseSBhcw0KYW55dGhpbmcgZWxzZS4NCi1TaW1hDQotLSANCkRhbmllbCBWZXR0ZXINClNvZnR3
YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbg0KaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
