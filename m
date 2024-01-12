Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF5A82C7FE
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 13 Jan 2024 00:28:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA6E543F11
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 23:28:01 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by lists.linaro.org (Postfix) with ESMTPS id DC27C3F0D1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 23:27:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=QofW9Mxb;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d47fae33e0so51025ad.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 15:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1705102060; x=1705706860; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhEbbmE1Z6uLNZgCKtRC6woP3H/Wl1Wl1gQfP+v/DTY=;
        b=QofW9MxbsP8RpY7lYAa8FMvr7NQOH69+jmoiX7kRigtH9B20+2gLEaM29kXDaEYOxu
         97CUkDlZ+ahYf+Nz0YsfDMgQAM7k5bhbWXjM07ha2zdJq3yVqPmxC993g5U4dW3qdGbP
         yRwPFGgMQdRI76tQotRyrfJ/Ji5K26MRmACweddRC6LiKvdrDVXETEBE2gHeWOrSIdEG
         Lj6jydSFaBg+6+dy48hBmtDDjxLmLFTMyhZwoawu4e9XeI1XZum7vzluxvTA3fwZ2BSn
         lHp6YPeh5kL/2NRNL8keEkqPNdVZff4a6KlzZAt6dy9OkZlS8BJZP0/rIOmdBs00MFAM
         2DXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705102060; x=1705706860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OhEbbmE1Z6uLNZgCKtRC6woP3H/Wl1Wl1gQfP+v/DTY=;
        b=G4DYaQ96eJrFonr+WKGxgrTnNC65Bhl+CsEYS15jTs0wyXsuzdh1gS6pAzNptyc7eP
         lJGJSqwrdrY+d3GSctzOBbrmlEJiuRUfx0j7B6h4o21RoP3wW9vSefLM0r1rPJ+BmfAN
         5IlSICf/FGoFkEwLHEkQsuNfXRI4f7SLzH6yVlDDLJdZMTU5JKwDRN6MCcI+Yd9wPj54
         ItMKTFTACfJTgudLFGZwixoRDpAOWaLLetjlVVHRcyRcmaDTBhqe1A/Es9q96IE4UhdR
         4ZwIy3WRIOYhhEa78j6dMygRpfzKWSVT+3XOEq21/COg7JhxzTcvARahoy1egMegmHfa
         Va/w==
X-Gm-Message-State: AOJu0YzxA8BCxVhiEYhsGTK3co+6mhMLJEqIN5UfkffSWWBjsCfTirTk
	2Wcl9PEjEgcso5sK40ahhxbTKQ5TtsujIn8kTU9KY7Jjpqc=
X-Google-Smtp-Source: AGHT+IFwwNVRgX+18llMY6Crrv0CZvMC6Ee5jLqPJn9RMR+jzSAJCxBI0rpUZIw0G2/SmU4oxB/NiR3hY1G0xancka4=
X-Received: by 2002:a17:903:210d:b0:1d5:a791:ef1b with SMTP id
 o13-20020a170903210d00b001d5a791ef1bmr203692ple.1.1705102059466; Fri, 12 Jan
 2024 15:27:39 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
In-Reply-To: <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Fri, 12 Jan 2024 15:27:27 -0800
Message-ID: <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.170:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DC27C3F0D1
X-Spamd-Bar: ------
Message-ID-Hash: QQAI2XVX5DPVOOSL6SLFDRKW7ZKL4AOF
X-Message-ID-Hash: QQAI2XVX5DPVOOSL6SLFDRKW7ZKL4AOF
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QQAI2XVX5DPVOOSL6SLFDRKW7ZKL4AOF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMjo1MuKAr1BNIEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdv
b2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBGcmksIEphbiAxMiwgMjAyNCBhdCAxOjIx4oCvQU0g
WW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+IHdyb3RlOg0KPiA+DQo+ID4gQWRkICJzdHJ1
Y3QgcmVzdHJpY3RlZF9oZWFwX29wcyIuIEZvciB0aGUgcmVzdHJpY3RlZCBtZW1vcnksIHRvdGFs
bHkgdGhlcmUNCj4gPiBhcmUgdHdvIHN0ZXBzOg0KPiA+IGEpIG1lbW9yeV9hbGxvYzogQWxsb2Nh
dGUgdGhlIGJ1ZmZlciBpbiBrZXJuZWw7DQo+ID4gYikgbWVtb3J5X3Jlc3RyaWN0OiBSZXN0cmlj
dC9Qcm90ZWN0L1NlY3VyZSB0aGF0IGJ1ZmZlci4NCj4gPiBUaGUgbWVtb3J5X2FsbG9jIGlzIG1h
bmRhdG9yeSB3aGlsZSBtZW1vcnlfcmVzdHJpY3QgaXMgb3B0aW5hbCBzaW5jZSBpdCBtYXkNCj4g
PiBiZSBwYXJ0IG9mIG1lbW9yeV9hbGxvYy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFlvbmcg
V3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYv
aGVhcHMvcmVzdHJpY3RlZF9oZWFwLmMgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKystDQo+
ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXAuaCB8IDEyICsrKysrKysr
DQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+DQo+DQo+IFRoYW5rcyBmb3Igc2VuZGluZyB0aGlzIG91dCEgQSB0aG91Z2h0IGJlbG93Lg0K
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFw
LmggYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4gPiBpbmRleCA0
NDMwMjhmNmJhM2IuLmRkZWFmOTgwNTcwOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVh
cHMvcmVzdHJpY3RlZF9oZWFwLmgNCj4gPiBAQCAtMTUsNiArMTUsMTggQEAgc3RydWN0IHJlc3Ry
aWN0ZWRfYnVmZmVyIHsNCj4gPg0KPiA+ICBzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwIHsNCj4gPiAg
ICAgICAgIGNvbnN0IGNoYXIgICAgICAgICAgICAgICpuYW1lOw0KPiA+ICsNCj4gPiArICAgICAg
IGNvbnN0IHN0cnVjdCByZXN0cmljdGVkX2hlYXBfb3BzICpvcHM7DQo+ID4gK307DQo+ID4gKw0K
PiA+ICtzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwX29wcyB7DQo+ID4gKyAgICAgICBpbnQgICAgICgq
aGVhcF9pbml0KShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwKTsNCj4gPiArDQo+ID4gKyAg
ICAgICBpbnQgICAgICgqbWVtb3J5X2FsbG9jKShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFw
LCBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKmJ1Zik7DQo+ID4gKyAgICAgICB2b2lkICAgICgq
bWVtb3J5X2ZyZWUpKHN0cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmlj
dGVkX2J1ZmZlciAqYnVmKTsNCj4gPiArDQo+ID4gKyAgICAgICBpbnQgICAgICgqbWVtb3J5X3Jl
c3RyaWN0KShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpoZWFwLCBzdHJ1Y3QgcmVzdHJpY3RlZF9i
dWZmZXIgKmJ1Zik7DQo+ID4gKyAgICAgICB2b2lkICAgICgqbWVtb3J5X3VucmVzdHJpY3QpKHN0
cnVjdCByZXN0cmljdGVkX2hlYXAgKmhlYXAsIHN0cnVjdCByZXN0cmljdGVkX2J1ZmZlciAqYnVm
KTsNCj4gPiAgfTsNCj4gPg0KPiA+ICBpbnQgcmVzdHJpY3RlZF9oZWFwX2FkZChzdHJ1Y3QgcmVz
dHJpY3RlZF9oZWFwICpyc3RyZF9oZWFwKTsNCj4NCj4gU28sIEknbSBhIGxpdHRsZSB3b3JyaWVk
IGhlcmUsIGJlY2F1c2UgeW91J3JlIGJhc2ljYWxseSB0dXJuaW5nIHRoZQ0KPiByZXN0cmljdGVk
X2hlYXAgZG1hLWJ1ZiBoZWFwIGRyaXZlciBpbnRvIGEgZnJhbWV3b3JrIGl0c2VsZi4NCj4gV2hl
cmUgdGhpcyBwYXRjaCBpcyBjcmVhdGluZyBhIHN1YmRyaXZlciBmcmFtZXdvcmsuDQo+DQo+IFBh
cnQgb2YgbXkgaGVzaXRhbmN5LCBpcyB5b3UncmUgaW50cm9kdWNpbmcgdGhpcyB1bmRlciB0aGUg
ZG1hLWJ1Zg0KPiBoZWFwcy4gRm9yIHRoaW5ncyBsaWtlIENNQSwgdGhhdCdzIG1vcmUgb2YgYSBj
b3JlIHN1YnN5c3RlbSB0aGF0IGhhcw0KPiBtdWx0aXBsZSB1c2VycywgYW5kIGV4cG9ydGluZyBj
bWEgYnVmZmVycyB2aWEgZG1hYnVmIGhlYXBzIGlzIGp1c3QgYW4NCj4gYWRkaXRpb25hbCBpbnRl
cmZhY2UuICBXaGF0IEkgbGlrZSBhYm91dCB0aGF0IGlzIHRoZSBjb3JlIGtlcm5lbCBoYXMNCj4g
dG8gZGVmaW5lIHRoZSBzZW1hbnRpY3MgZm9yIHRoZSBtZW1vcnkgdHlwZSBhbmQgdGhlbiB0aGUg
ZG1hYnVmIGhlYXANCj4gaXMganVzdCBleHBvcnRpbmcgdGhhdCB3ZWxsIHVuZGVyc3Rvb2QgdHlw
ZSBvZiBidWZmZXIuDQo+DQo+IEJ1dCB3aXRoIHRoZXNlIHJlc3RyaWN0ZWQgYnVmZmVycywgSSdt
IG5vdCBzdXJlIHRoZXJlJ3MgeWV0IGEgd2VsbA0KPiB1bmRlcnN0b29kIHNldCBvZiBzZW1hbnRp
Y3Mgbm9yIGEgY2VudHJhbCBhYnN0cmFjdGlvbiBmb3IgdGhhdCB3aGljaA0KPiBvdGhlciBkcml2
ZXJzIHVzZSBkaXJlY3RseS4NCj4NCj4gSSBrbm93IHBhcnQgb2YgdGhpcyBlZmZvcnQgaGVyZSBp
cyB0byBzdGFydCB0byBjZW50cmFsaXplIGFsbCB0aGVzZQ0KPiB2ZW5kb3Igc3BlY2lmaWMgcmVz
dHJpY3RlZCBidWZmZXIgaW1wbGVtZW50YXRpb25zLCB3aGljaCBJIHRoaW5rIGlzDQo+IGdyZWF0
LCBidXQgSSBqdXN0IHdvcnJ5IHRoYXQgaW4gZG9pbmcgaXQgaW4gdGhlIGRtYWJ1ZiBoZWFwIGlu
dGVyZmFjZSwNCj4gaXQgaXMgYSBiaXQgdG9vIHVzZXItZmFjaW5nLiBUaGUgbGlrZWxpaG9vZCBv
ZiBlbmNvZGluZyBhIHBhcnRpY3VsYXINCj4gc2VtYW50aWMgdG8gdGhlIHNpbmd1bGFyICJyZXN0
cmljdGVkX2hlYXAiIG5hbWUgc2VlbXMgaGlnaC4NCg0KSW4gcGF0Y2ggIzUgaXQgaGFzIHRoZSBh
Y3R1YWwgZHJpdmVyIGltcGxlbWVudGF0aW9uIGZvciB0aGUgTVRLIGhlYXANCnRoYXQgaW5jbHVk
ZXMgdGhlIGhlYXAgbmFtZSBvZiAicmVzdHJpY3RlZF9tdGtfY20iLCBzbyB0aGVyZSBzaG91bGRu
J3QNCmJlIGEgaGVhcCBuYW1lZCAicmVzdHJpY3RlZF9oZWFwIiB0aGF0J3MgYWN0dWFsbHkgZ2V0
dGluZyBleHBvc2VkLiBUaGUNCnJlc3RyaWN0ZWRfaGVhcCBjb2RlIGlzIGEgZnJhbWV3b3JrLCBh
bmQgbm90IGEgZHJpdmVyIGl0c2VsZi4gIFVubGVzcw0KSSdtIG1pc3Npbmcgc29tZXRoaW5nIGlu
IHRoaXMgcGF0Y2hzZXQuLi5idXQgdGhhdCdzIHRoZSB3YXkgaXQncw0KKnN1cHBvc2VkKiB0byBi
ZS4NCg0KPg0KPiBTaW1pbGFybHkgd2UgbWlnaHQgcnVuIGludG8gc3lzdGVtcyB3aXRoIG11bHRp
cGxlIHR5cGVzIG9mIHJlc3RyaWN0ZWQNCj4gYnVmZmVycyAoaW1hZ2luZSBhIGRpc2NyZXRlIGdw
dSBoYXZpbmcgb25lIHR5cGUgYWxvbmcgd2l0aCBURUUNCj4gcHJvdGVjdGVkIGJ1ZmZlcnMgYWxz
byBiZWluZyB1c2VkIG9uIHRoZSBzYW1lIHN5c3RlbSkuDQo+DQo+IFNvIHRoZSBvbmUgcXVlc3Rp
b24gSSBoYXZlOiBXaHkgbm90IGp1c3QgaGF2ZSBhIG1lZGlhdGVrIHNwZWNpZmljDQo+IHJlc3Ry
aWN0ZWRfaGVhcCBkbWFidWYgaGVhcCBkcml2ZXI/ICBTaW5jZSB0aGVyZSdzIGFscmVhZHkgYmVl
biBzb21lDQo+IHRhbGsgb2Ygc2xpZ2h0IHNlbWFudGljIGRpZmZlcmVuY2VzIGluIHZhcmlvdXMg
cmVzdHJpY3RlZCBidWZmZXINCj4gaW1wbGVtZW50YXRpb25zLCBzaG91bGQgd2UganVzdCBzdGFy
dCB3aXRoIHNlcGFyYXRlbHkgbmFtZWQgZG1hYnVmDQo+IGhlYXBzIGZvciBlYWNoPyBNYXliZSBj
b25zb2xpZGF0aW5nIHRvIGEgY29tbW9uIG5hbWUgYXMgbW9yZSBkcml2ZXJzDQo+IGFycml2ZSBh
bmQgd2UgZ2FpbiBhIGJldHRlciB1bmRlcnN0YW5kaW5nIG9mIHRoZSB2YXJpYXRpb25zIG9mDQo+
IHNlbWFudGljcyBmb2xrcyBhcmUgdXNpbmc/DQo+DQo+IHRoYW5rcw0KPiAtam9obg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
