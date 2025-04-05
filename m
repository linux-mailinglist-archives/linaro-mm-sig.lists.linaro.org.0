Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAA6A7C74C
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Apr 2025 03:57:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C567146026
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Apr 2025 01:57:40 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 36C1A3F44C
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Apr 2025 01:57:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=AiSyKQYg;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfe808908so22505e9.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Apr 2025 18:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743818257; x=1744423057; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAoewxTDbadnGF1GAguojqOu/hTz+6xUWg05jevi4+Q=;
        b=AiSyKQYgu1Egh4FmCTP9LD0U2UAWjHvHiHW0HeGXCgp5FeO6hO1HNPClCUuqm/XT0J
         gh9B8jfynpDeF2It8lM8yRMTUig4hxFzhx4TRzdXphe5Tc+vlE5y/h4jg+ttbjQ4pX+I
         UlK5Nyvv2nDNV0jlOJ/7UO6balCQhVpj1+cOfZFHpTM1PoP5VkfmsHVT1BvV8a9wJ3Nx
         DCE/kFVvA46uUIH7nd2CjREKKR3nE87S9hCTr6W57pWnY0mMoWSMYOYehYRah9y4erB+
         /1YEGagFlfWR9PY6ujQFz8aQigyowrtTz+g/YsjGRzE5pa6V6TBzKBNV6fLexNBFikfQ
         q/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743818257; x=1744423057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OAoewxTDbadnGF1GAguojqOu/hTz+6xUWg05jevi4+Q=;
        b=b/E7lvp2Z3UBidvwdZw0D6HqibUq3+8eIOYTH/SGj/4jjwKUj8marHmGOBAGTKo+AJ
         FiskD8pdtqo9N4SpWAKAXuzrQy/cqvFnct0dj3j4nHMdogR7hwUx5BZQDG8m2ELEZxdQ
         6qPqWtA0yrtlYL1W8VMeZxazYAVMcaQRudSAfzf2rVEV36BNC+1VHn+MK0bXYVtSSYHp
         x0sNy4pImSuiPybwWlGkFLKqNHKUf/QLUPOQBP9mWKWq2+P8Fw4+kMgqz1U0UPeCdygi
         ye2Kqm6wiZG8966+vkx0wsFjYIkL6Us7gKbC1MKNdsXNuMauch/EXX6P11SDT2AWTDpm
         ScHg==
X-Forwarded-Encrypted: i=1; AJvYcCUSlGUQyI9BdpgckuyR/oc5OitdC/U92MVEASYYGIXerVHw7ah6nJvdYnphXTxolZLs+loPS7U8wIQDE006@lists.linaro.org
X-Gm-Message-State: AOJu0Yy68TfslYPqTaVLWpd5f3VbeqNIuN/B/PZagAghFMKjfp8q1RSB
	sjKEcyARayIAtjqL7pPxNPyov5oT4PtyFIZ89lc0Rir8jzv/Vhht3QdlAX7xecfxcp8u9SaNtLp
	jaBKjGl5FBNBvR4gItjBWIlujvi6Ka4OSQ2/B
X-Gm-Gg: ASbGncsHWrBP/yMZAKc09e7P44cOtRg7WIqBQepjwKpmpGsgEGMQbClIGXEZFaIhR1o
	8sDnj5hIp9c7PeuU09qcoBV9U+9c2zQtqvyy/FQsIae3jPJr8c6TA7ZNksxEAqvKOm23S73Maml
	yva+vhPTxgKmhphgIYrmuk7lIN
X-Google-Smtp-Source: AGHT+IEZgBBuLcDuNWx/jFE8YY2SlwYmrCbwtiJPDyDgjgoOsHULjpV/CWiTVdB4+NcESAdkrCw+xWEHlXEt9xlkY4M=
X-Received: by 2002:a05:600c:3548:b0:43d:409c:6142 with SMTP id
 5b1f17b1804b1-43ee0e84029mr527915e9.0.1743818256732; Fri, 04 Apr 2025
 18:57:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com> <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com>
 <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com> <CAPM=9twgFt43OKqUY0TNopTmibnR_d891xmV=wFM91n604NUCw@mail.gmail.com>
 <5ed87c80-6fe3-4f8c-bb98-ca07f1db8c34@amd.com> <20250403-quick-salamander-of-charisma-cab289@houat>
 <202c3a58-97a3-489c-b3f2-b1fd2735bd19@amd.com>
In-Reply-To: <202c3a58-97a3-489c-b3f2-b1fd2735bd19@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 4 Apr 2025 18:57:25 -0700
X-Gm-Features: ATxdqUG3Y0HIBufABo7xowgVhlloVVBpkM4JhVkK9QLhPMspK9dsEIobBZzLpG8
Message-ID: <CABdmKX2LhrcyDM0r1tytt2vKLuCLGsxZaGHgN+u1hUmEMXuGtw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 36C1A3F44C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_ONE(0.00)[1];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.51:from];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.51:from];
	TAGGED_RCPT(0.00)[renesas];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: WQ5KG6MRYZ2UO2Q2ZXSVF6NLY2AVWKH6
X-Message-ID-Hash: WQ5KG6MRYZ2UO2Q2ZXSVF6NLY2AVWKH6
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCAxOjQ34oCvQU0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gSGkgTWF4aW1lLA0KPg0KPiBBbSAwMy4w
NC4yNSB1bSAxNzo0NyBzY2hyaWViIE1heGltZSBSaXBhcmQ6DQo+ID4gT24gVGh1LCBBcHIgMDMs
IDIwMjUgYXQgMDk6Mzk6NTJBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPj4+
IEZvciB0aGUgVU1BIEdQVSBjYXNlIHdoZXJlIHRoZXJlIGlzIG5vIGRldmljZSBtZW1vcnkgb3Ig
ZXZpY3Rpb24NCj4gPj4+IHByb2JsZW0sIHBlcmhhcHMgYSBjb25maWd1cmFibGUgb3B0aW9uIHRv
IGp1c3Qgc2F5IGFjY291bnQgbWVtb3J5IGluDQo+ID4+PiBtZW1jZyBmb3IgYWxsIGFsbG9jYXRp
b25zIGRvbmUgYnkgdGhpcyBwcm9jZXNzLCBhbmQgc3RhdGUgeWVzIHlvdSBjYW4NCj4gPj4+IHdv
cmsgYXJvdW5kIGl0IHdpdGggYWxsb2NhdGlvbiBzZXJ2ZXJzIG9yIHdoYXRldmVyIGJ1dCB0aGUg
YmVoYXZpb3VyDQo+ID4+PiBmb3Igd2VsbCBiZWhhdmVkIHRoaW5ncyBpcyBhdCBsZWFzdCBzb21l
d2hhdCBkZWZpbmVkLg0KPiA+PiBXZSBjYW4gaGF2ZSB0aGF0IGFzIGEgd29ya2Fyb3VuZCwgYnV0
IEkgdGhpbmsgd2Ugc2hvdWxkIGFwcHJvYWNoIHRoYXQNCj4gPj4gZGlmZmVyZW50bHkuDQo+ID4+
DQo+ID4+IFdpdGggdXBjb21pbmcgQ1hMIGV2ZW4gY29oZXJlbnQgZGV2aWNlIG1lbW9yeSBpcyBl
eHBvc2VkIHRvIHRoZSBjb3JlDQo+ID4+IE9TIGFzIE5VTUEgbWVtb3J5IHdpdGgganVzdCBhIGhp
Z2ggbGF0ZW5jeS4NCj4gPj4NCj4gPj4gU28gYm90aCBpbiB0aGUgQ1hMIGFuZCBVTUEgY2FzZSBp
dCBhY3R1YWxseSBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8NCj4gPj4gYWxsb2NhdGUgdGhlIG1lbW9y
eSB0aHJvdWdoIHRoZSBkcml2ZXIgaW50ZXJmYWNlcyBhbnkgbW9yZS4gV2l0aA0KPiA+PiBBTURH
UFUgZm9yIGV4YW1wbGUgd2UgYXJlIGp1c3QgcmVwbGljYXRpbmcgbWJpbmQoKS9tYWR2aXNlKCkg
d2l0aGluDQo+ID4+IHRoZSBkcml2ZXIuDQo+ID4+DQo+ID4+IEluc3RlYWQgd2hhdCB0aGUgRFJN
IHN1YnN5c3RlbSBzaG91bGQgYWltIGZvciBpcyB0byBhbGxvY2F0ZSBtZW1vcnkNCj4gPj4gdXNp
bmcgdGhlIG5vcm1hbCBjb3JlIE9TIGZ1bmN0aW9uYWxpdHkgYW5kIHRoZW4gaW1wb3J0IGl0IGlu
dG8gdGhlDQo+ID4+IGRyaXZlci4NCj4gPj4NCj4gPj4gQU1ELCBOVmlkaWEgYW5kIEludGVsIGhh
dmUgSE1NIHdvcmtpbmcgZm9yIHF1aXRlIGEgd2hpbGUgbm93IGJ1dCBpdA0KPiA+PiBoYXMgc29t
ZSBsaW1pdGF0aW9ucywgZXNwZWNpYWxseSBvbiB0aGUgcGVyZm9ybWFuY2Ugc2lkZS4NCj4gPj4N
Cj4gPj4gU28gZm9yIEFNREdQVSB3ZSBhcmUgY3VycmVudGx5IGV2YWx1YXRpbmcgdWRtYWJ1ZiBh
cyBhbHRlcm5hdGl2ZS4gVGhhdA0KPiA+PiBzZWVtcyB0byBiZSB3b3JraW5nIGZpbmUgd2l0aCBk
aWZmZXJlbnQgTlVNQSBub2RlcywgaXMgcGVyZmVjdGx5IG1lbWNnDQo+ID4+IGFjY291bnRlZCBh
bmQgZ2l2ZXMgeW91IGEgRE1BLWJ1ZiB3aGljaCBjYW4gYmUgaW1wb3J0ZWQgZXZlcnl3aGVyZS4N
Cj4gPj4NCj4gPj4gVGhlIG9ubHkgc2hvdyBzdG9wcGVyIG1pZ2h0IGJlIHRoZSBhbGxvY2F0aW9u
IHBlcmZvcm1hbmNlLCBidXQgZXZlbiBpZg0KPiA+PiB0aGF0J3MgdGhlIGNhc2UgSSB0aGluayB0
aGUgb25nb2luZyBmb2xpbyB3b3JrIHdpbGwgcHJvcGVybHkgcmVzb2x2ZQ0KPiA+PiB0aGF0Lg0K
PiA+IEkgbWVhbiwgbm8sIHRoZSBzaG93c3RvcHBlciB0byB0aGF0IGlzIHRoYXQgdXNpbmcgdWRt
YWJ1ZiBoYXMgdGhlDQo+ID4gYXNzdW1wdGlvbiB0aGF0IHlvdSBoYXZlIGFuIElPTU1VIGZvciBl
dmVyeSBkZXZpY2UgZG9pbmcgRE1BLCB3aGljaCBpcw0KPiA+IGFic29sdXRlbHkgbm90IHRydWUg
b24gIXg4NiBwbGF0Zm9ybXMuDQo+ID4NCj4gPiBJdCBtaWdodCBiZSB0cnVlIGZvciBhbGwgR1BV
cywgYnV0IGl0IGNlcnRhaW5seSBpc24ndCBmb3IgZGlzcGxheQ0KPiA+IGNvbnRyb2xsZXJzLCBh
bmQgaXQncyBub3QgZWl0aGVyIGZvciBjb2RlY3MsIElTUHMsIGFuZCBjYW1lcmFzLg0KPiA+DQo+
ID4gQW5kIHRoZW4gdGhlcmUncyB0aGUgb3RoZXIgYXNzdW1wdGlvbiB0aGF0IGFsbCBtZW1vcnkg
aXMgdW5kZXIgdGhlDQo+ID4gbWVtb3J5IGFsbG9jYXRvciBjb250cm9sLCB3aGljaCBpc24ndCB0
aGUgY2FzZSBvbiBtb3N0IHJlY2VudCBwbGF0Zm9ybXMNCj4gPiBlaXRoZXIuDQo+ID4NCj4gPiBX
ZSAqbmVlZCogdG8gdGFrZSBDTUEgaW50byBhY2NvdW50IHRoZXJlLCBhbGwgdGhlIGNhcnZlZC1v
dXQsIGRldmljZQ0KPiA+IHNwZWNpZmljIG1lbW9yeSByZWdpb25zLCBhbmQgdGhlIG1lbW9yeSBy
ZWdpb25zIHRoYXQgYXJlbid0IGV2ZW4gdW5kZXINCj4gPiBMaW51eCBzdXBlcnZpc2lvbiBsaWtl
IHByb3RlY3RlZCBtZW1vcnkgdGhhdCBpcyB0eXBpY2FsbHkgaGFuZGxlZCBieSB0aGUNCj4gPiBm
aXJtd2FyZSBhbmQgYWxsIHlvdSBnZXQgaXMgYSBkbWEtYnVmLg0KPiA+DQo+ID4gU2F5aW5nIHRo
YXQgaXQncyBob3cgeW91IHdhbnQgdG8gd29ya2Fyb3VuZCBpdCBvbiBBTUQgaXMgYWJzb2x1dGVs
eQ0KPiA+IGZpbmUsIGJ1dCBEUk0gYXMgYSB3aG9sZSBzaG91bGQgY2VydGFpbmx5IG5vdCBhaW0g
Zm9yIHRoYXQsIGJlY2F1c2UgaXQNCj4gPiBjYW4ndC4NCj4NCj4gQSBidW5jaCBvZiBnb29kIHBv
aW50cyB5b3UgYnJpbmcgdXAgaGVyZSBidXQgaXQgc291bmRzIGxpa2UgeW91IG1pc3VuZGVyc3Rv
b2QgbWUgYSBiaXQuDQo+DQo+IEknbSBjZXJ0YWlubHkgKm5vdCogc2F5aW5nIHRoYXQgd2Ugc2hv
dWxkIHB1c2ggZm9yIHVkbWFidWYgZm9yIGV2ZXJ5dGhpbmcsIHRoYXQgaXMgY2xlYXJseSB1c2Ug
Y2FzZSBzcGVjaWZpYy4NCj4NCj4gRm9yIHVzZSBjYXNlcyBsaWtlIENNQSBvciBwcm90ZWN0ZWQg
Y2FydmUtb3V0IHRoZSBxdWVzdGlvbiB3aGF0IHRvIGRvIGRvZXNuJ3QgZXZlbiBhcmlzZSBpbiB0
aGUgZmlyc3QgcGxhY2UuDQo+DQo+IFdoZW4geW91IGhhdmUgQ01BIHdoaWNoIGR5bmFtaWNhbGx5
IHN0ZWFscyBtZW1vcnkgZnJvbSB0aGUgY29yZSBPUyB0aGVuIG9mIGNvdXJzZSBpdCBzaG91bGQg
YmUgYWNjb3VudGVkIHRvIG1lbWNnLg0KPg0KPiBXaGVuIHlvdSBoYXZlIGNhcnZlLW91dCB3aGlj
aCB0aGUgY29yZSBPUyBtZW1vcnkgbWFuYWdlbWVudCBkb2Vzbid0IGV2ZW4ga25vdyBhYm91dCB0
aGVuIGl0IHNob3VsZCBjZXJ0YWlubHkgYmUgaGFuZGxlZCBieSBkbWVtLg0KPg0KPiBUaGUgcHJv
YmxlbWF0aWMgdXNlIGNhc2VzIGFyZSB0aGUgb25lIHdoZXJlIGEgYnVmZmVyIGNhbiBzb21ldGlt
ZXMgYmUgYmFja2VkIGJ5IHN5c3RlbSBtZW1vcnkgYW5kIHNvbWV0aW1lIGJ5IHNvbWV0aGluZyBz
cGVjaWFsLiBGb3IgdGhpcyB3ZSBkb24ndCBoYXZlIGEgZ29vZCBhcHByb2FjaCB3aGF0IHRvIGRv
IHNpbmNlIGV2ZXJ5IGFwcHJvYWNoIHNlZW1zIHRvIGhhdmUgYSBkcmF3IGJhY2sgZm9yIHNvbWUg
dXNlIGNhc2UuDQoNClRoaXMgcmVtaW5kcyBtZSBvZiBtZW1vcnkubWVtc3cgaW4gY2dyb3VwIHYx
LCB3aGVyZSBib3RoIHJlc2lkZW50IGFuZA0Kc3dhcHBlZCBtZW1vcnkgc2hvdyB1cCB1bmRlciB0
aGUgc2FtZSBtZW1jZyBjb3VudGVyLiBJbiB0aGlzIGRtZW0NCnNjZW5hcmlvIGl0J3Mgc2ltaWxh
ciBidXQgYWNyb3NzIHR3byBkaWZmZXJlbnQgY2dyb3VwIGNvbnRyb2xsZXJzDQppbnN0ZWFkIG9m
IHR3byBkaWZmZXJlbnQgdHlwZXMgb2Ygc3lzdGVtIG1lbW9yeSB1bmRlciB0aGUgc2FtZQ0KY29u
dHJvbGxlci4NCg0KbWVtc3cgZG9lc24ndCBleGlzdCBpbiB2MiwgYW5kIHVzZXJzIGFyZSBhc2tp
bmcgZm9yIGl0IGJhY2suIFsxXSBJDQp0ZW5kIHRvIGFncmVlIHRoYXQgYSBjb21iaW5lZCBjb3Vu
dGVyIGlzIHVzZWZ1bCBhcyBJIGRvbid0IHNlZSBhIGdyZWF0DQp3YXkgdG8gYXBwbHkgbWVhbmlu
Z2Z1bCBsaW1pdHMgdG8gaW5kaXZpZHVhbCBjb3VudGVycyAob3IgaW5kaXZpZHVhbA0KY29udHJv
bGxlciBsaW1pdHMgaW4gdGhlIGRtZW0rbWVtY2cgY2FzZSkgd2hlbiBtdWx0aXBsZSBjZ3JvdXBz
IGFyZQ0KaW52b2x2ZWQgYW5kIGV2aWN0aW9uIGNhbiBjYXVzZSBtZW1vcnkgdG8gYmUgdHJhbnNm
ZXJyZWQgZnJvbSBvbmUNCnBsYWNlIHRvIGFub3RoZXIuIFNvcnJ5IEknbSBub3QgcmVhbGx5IG9m
ZmVyaW5nIGEgc29sdXRpb24gdG8gdGhpcywNCmJ1dCBJIGZlZWwgbGlrZSBvbmx5IHRyYW5zZmVy
cmluZyB0aGUgY2hhcmdlIGJldHdlZW4gY2dyb3VwcyBpcyBhDQpwYXJ0aWFsIHNvbHV0aW9uIHNp
bmNlIHRoZSBlbmZvcmNlbWVudCBieSB0aGUga2VybmVsIGlzIGluZGVwZW5kZW50DQpmb3IgZWFj
aCBjb250cm9sbGVyLiBTbyB5ZWFoIGFzIERhdmUgYW5kIFNpbWEgc2FpZCBmb3IgYWNjb3VudGlu
ZyBJDQpndWVzcyBpdCB3b3JrcywgYW5kIG1heWJlIHRoYXQncyBnb29kIGVub3VnaCBpZiB5b3Ug
aGF2ZSB1c2Vyc3BhY2UNCmVuZm9yY2VtZW50IHRoYXQncyBzbWFydCBlbm91Z2ggdG8gbG9vayBp
biBhbGwgdGhlIGRpZmZlcmVudCBwbGFjZXMuDQpCdXQgdGhlbiB0aGVyZSBhcmUgdGhlIGZvbGtz
IGFza2luZyBmb3Iga2VybmVsIGVuZm9yY2VtZW50LiBNYXliZSBqdXN0DQphY2NvdW50aW5nIGFz
IGJlc3Qgd2UgY2FuIGlzIGEgZ29vZCBwbGFjZSB0byBzdGFydD8NCg0KWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDI1MDMxOTA2NDE0OC43NzQ0MDYtNS1qaW5neGlhbmd6ZW5nLmNh
c0BnbWFpbC5jb20vDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
