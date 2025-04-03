Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954FA79BC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 08:07:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1BD34606D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Apr 2025 06:07:54 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6BC2245F6A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Apr 2025 06:07:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MHspOv+g;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2bdea5a38so82141166b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Apr 2025 23:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743660456; x=1744265256; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0y1chSLTgq4by+/iKzl7cqrc4OIVMXRZ18Ndod/oVA4=;
        b=MHspOv+gm+oz+1HNBZc2Vodwh26yM5QiCR1JIAqxeFPQCfd/7L4DEHF3SuP5pZACzU
         xpFEgdKD8sFZBqAcU8nnqBtfTVRDLMKPMZMPMR0jXmElf5/5v+j1U4VjP4Q2GbCdHrmw
         3g48Vpd1qyqLyZ7m5FbViwol36IFxMIfHei6zjUJ3l9uAnKLU6g+wEMdkcAkUIGfzuSe
         hx4K1H1dV1TH5rYRcLvgnYzrBGvqHITD3IS84PK0aVLt8vc0FvMSlXdv4rFp8pci8wvo
         zfc2MPA4IqOLVutaHUfhlfADdHsO79QBDICurR7JUsxLBZC/Shg2fXyuXsUIvty75sPt
         R/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743660456; x=1744265256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0y1chSLTgq4by+/iKzl7cqrc4OIVMXRZ18Ndod/oVA4=;
        b=e6tQnO0Yr0kfS4IJZDmNV7/4vhIL4TJsAeXqfavsN479qmKskuU8noAyRQuPYLAkew
         qyPH5oYmtc/vUKfFDMorj8UBWda4jIhXIIutnvc37Y2InhcrIQd5d66C9/o0V29IB4b5
         gg0HdmJCNeVmO94s3h4aW0PPequOfzQ3nn0T31GjiOh7yNcXHk2iXAQJNP3gs0EOkn/+
         wv6BeFGslr68GaRQ5WL75BfezC/5oBRbbtZWsSs1xSZSClIKW6UbY1VFaRSp+LLBodok
         QmR45dJl3N4qDH0IpjOlYGStx3wD47VxLNm4M2UySj4aOg6yxaWco8yrzsA2eqlqNaj7
         gOOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpKhToybUWu48oHuKiF64BRLQwMsYef6YnH8q9qqVkGBVHjHsH9mvr54yUy47qSN9px449Ea4pO/83jgHT@lists.linaro.org
X-Gm-Message-State: AOJu0YyM24Y4FDQ1o+k7cNzFjAIMzNwUm1aC+Xg/n7VJFgMFTW2Rfq2o
	TTKfuau06OxEswke8PnSvfpEx3TsHN3FyFJAKPdu3TSCiCXiIM49oIkH8cLRWdrT/7XiOZbosDW
	XlFCuKRoOIKZlAzRsacHB3gCwaVE=
X-Gm-Gg: ASbGncuZTceAeEUO17BkVnPtju9vzQNEPT48h4tQG/aQh5AKq3qLd/JnyC9aTBaldfA
	PyYou18ybhs5SaNWlEH2ddSA2B8TT5474767JHm9a2FeBNOL5gffeh8g4BPimskyFd0eD6quRbM
	xSaMXWIAy4C/AxtCnt4KoYBoIzBVvtBrxiSv8=
X-Google-Smtp-Source: AGHT+IEf6my0Oevy7HxSEvSBLIVZB6UUtRLQAMtnvT9ULs0ZmHL4HufuJOz3Xwan6rPv7/6qdLH2tQeyB4bomKzEbiI=
X-Received: by 2002:a17:906:7955:b0:ac1:e00c:a566 with SMTP id
 a640c23a62f3a-ac738bbe6e9mr1868178566b.45.1743660456051; Wed, 02 Apr 2025
 23:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com> <20250310-eccentric-wonderful-puffin-ddbb26@houat>
 <CAPM=9tzkLXOz=-3eujUbbjMHunR+_5JZ4oQaqNmbrWWF9WZJ0w@mail.gmail.com> <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com>
In-Reply-To: <e08f10da-b0cd-444b-8e0b-11009b05b161@amd.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 3 Apr 2025 16:07:24 +1000
X-Gm-Features: AQ5f1JqIs6baj7zESBDpkv7pR6DzQLKEPOII2QRNAbnnHufJyGkPQs5rKDbOWPQ
Message-ID: <CAPM=9twgFt43OKqUY0TNopTmibnR_d891xmV=wFM91n604NUCw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6BC2245F6A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[kernel.org,linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,ffwll.ch,chromium.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.974];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.218.42:from];
	TAGGED_RCPT(0.00)[renesas];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: KW2CPAT2AQ6NSEF2VUSIFDVC7UTLWNFG
X-Message-ID-Hash: KW2CPAT2AQ6NSEF2VUSIFDVC7UTLWNFG
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KW2CPAT2AQ6NSEF2VUSIFDVC7UTLWNFG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCAxIEFwciAyMDI1IGF0IDIxOjAzLCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAzMS4wMy4yNSB1bSAyMjo0MyBzY2hyaWVi
IERhdmUgQWlybGllOg0KPiA+IE9uIFR1ZSwgMTEgTWFyIDIwMjUgYXQgMDA6MjYsIE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4+IEhpLA0KPiA+Pg0KPiA+PiBP
biBNb24sIE1hciAxMCwgMjAyNSBhdCAwMzoxNjo1M1BNICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPiA+Pj4gW0FkZGluZyBCZW4gc2luY2Ugd2UgYXJlIGN1cnJlbnRseSBpbiB0aGUg
bWlkZGxlIG9mIGEgZGlzY3Vzc2lvbg0KPiA+Pj4gcmVnYXJkaW5nIGV4YWN0bHkgdGhhdCBwcm9i
bGVtXQ0KPiA+Pj4NCj4gPj4+IEp1c3QgZm9yIG15IHVuZGVyc3RhbmRpbmcgYmVmb3JlIEkgZGVl
cCBkaXZlIGludG8gdGhlIGNvZGU6IFRoaXMgdXNlcw0KPiA+Pj4gYSBzZXBhcmF0ZSBkbWVtIGNn
cm91cCBhbmQgZG9lcyBub3QgYWNjb3VudCBhZ2FpbnN0IG1lbWNnLCBkb24ndCBpdD8NCj4gPj4g
WWVzLiBUaGUgbWFpbiByYXRpb25hbGUgYmVpbmcgdGhhdCBpdCBkb2Vzbid0IGFsd2F5cyBtYWtl
IHNlbnNlIHRvDQo+ID4+IHJlZ2lzdGVyIGFnYWluc3QgbWVtY2c6IGEgbG90IG9mIGRldmljZXMg
YXJlIGdvaW5nIHRvIGFsbG9jYXRlIGZyb20NCj4gPj4gZGVkaWNhdGVkIGNodW5rcyBvZiBtZW1v
cnkgdGhhdCBhcmUgZWl0aGVyIGNhcnZlZCBvdXQgZnJvbSB0aGUgbWFpbg0KPiA+PiBtZW1vcnkg
YWxsb2NhdG9yLCBvciBub3QgdW5kZXIgTGludXggc3VwZXJ2aXNpb24gYXQgYWxsLg0KPiA+Pg0K
PiA+PiBBbmQgaWYgdGhlcmUncyBubyB3YXkgdG8gbWFrZSBpdCBjb25zaXN0ZW50IGFjcm9zcyBk
cml2ZXJzLCBpdCdzIG5vdCB0aGUNCj4gPj4gcmlnaHQgdG9vbC4NCj4gPj4NCj4gPiBXaGlsZSBJ
IGFncmVlIG9uIHRoYXQsIGlmIGEgdXNlciBjYW4gY2F1c2UgYSBkZXZpY2UgZHJpdmVyIHRvIGFs
bG9jYXRlDQo+ID4gbWVtb3J5IHRoYXQgaXMgYWxzbyBtZW1vcnkgdGhhdCBtZW1jZyBhY2NvdW50
cywgdGhlbiB3ZSBoYXZlIHRvDQo+ID4gaW50ZXJmYWNlIHdpdGggbWVtY2cgdG8gYWNjb3VudCB0
aGF0IG1lbW9yeS4NCj4NCj4gVGhpcyBhc3N1bWVzIHRoYXQgbWVtY2cgc2hvdWxkIGJlIGluIGNv
bnRyb2wgb2YgZGV2aWNlIGRyaXZlciBhbGxvY2F0ZWQgbWVtb3J5LiBXaGljaCBpbiBzb21lIGNh
c2VzIGlzIGludGVudGlvbmFsbHkgbm90IGRvbmUuDQo+DQo+IEUuZy4gYSBzZXJ2ZXIgYXBwbGlj
YXRpb24gd2hpY2ggYWxsb2NhdGVzIGJ1ZmZlcnMgb24gYmVoYWx2ZXMgb2YgY2xpZW50cyBnZXRz
IGEgbmljZSBkZW55IG9mIHNlcnZpY2UgcHJvYmxlbSBpZiB3ZSBzdWRkZW5seSBzdGFydCB0byBh
Y2NvdW50IHRob3NlIGJ1ZmZlcnMuDQoNClllcyB3ZSBkZWZpbml0ZWx5IG5lZWQgdGhlIGFiaWxp
dHkgdG8gdHJhbnNmZXIgYW4gYWxsb2NhdGlvbiBiZXR3ZWVuDQpjZ3JvdXBzIGZvciB0aGlzIGNh
c2UuDQoNCj4NCj4gVGhhdCB3YXMgb25lIG9mIHRoZSByZWFzb25zIHdoeSBteSBPT00ga2lsbGVy
IGltcHJvdmVtZW50IHBhdGNoZXMgbmV2ZXIgbGFuZGVkIChlLmcuIHlvdSBjb3VsZCB0cml2aWFs
bHkga2lsbCBYL1dheWxhbmQgb3Igc3lzdGVtZCB3aXRoIHRoYXQpLg0KPg0KPiA+IFRoZSBwYXRo
b2xvZ2ljYWwgY2FzZSB3b3VsZCBiZSBhIHNpbmdsZSBhcHBsaWNhdGlvbiB3YW50aW5nIHRvIHVz
ZSA5MCUNCj4gPiBvZiBSQU0gZm9yIGRldmljZSBhbGxvY2F0aW9ucywgZnJlZWluZyBpdCBhbGws
IHRoZW4gdXNpbmcgOTAlIG9mIFJBTQ0KPiA+IGZvciBub3JtYWwgdXNhZ2UuIEhvdyB0byBjcmVh
dGUgYSBwb2xpY3kgdGhhdCB3b3VsZCBhbGxvdyB0aGF0IHdpdGgNCj4gPiBkbWVtIGFuZCBtZW1j
ZyBpcyBkaWZmaWN1bHQsIHNpbmNlIGlmIHlvdSBzYXkgeW91IGNhbiBkbyA5MCUgb24gYm90aA0K
PiA+IHRoZW4gdGhlIHVzZXIgY2FuIGVhc2lseSBPT00gdGhlIHN5c3RlbS4NCj4NCj4gWWVhaCwg
Y29tcGxldGVseSBhZ3JlZS4NCj4NCj4gVGhhdCdzIHdoeSB0aGUgR1RUIHNpemUgbGltaXQgd2Ug
YWxyZWFkeSBoYXZlIHBlciBkZXZpY2UgYW5kIHRoZSBnbG9iYWwgNTAlIFRUTSBsaW1pdCBkb2Vz
bid0IHdvcmsgYXMgZXhwZWN0ZWQuIFBlb3BsZSBhbHNvIGRpZG4ndCBsaWtlZCB0aG9zZSBsaW1p
dHMgYW5kIGJlY2F1c2Ugb2YgdGhhdCB3ZSBldmVuIGhhdmUgZmxhZ3MgdG8gY2lyY3VtdmVudCB0
aGVtLCBzZWUgQU1ER1BVX0dFTV9DUkVBVEVfUFJFRU1QVElCTEUgYW5kICBUVE1fVFRfRkxBR19F
WFRFUk5BTC4NCj4NCj4gQW5vdGhlciBwcm9ibGVtIGlzIHdoZW4gYW5kIHRvIHdoaWNoIHByb2Nl
c3Mgd2UgYWNjb3VudCB0aGluZ3Mgd2hlbiBldmljdGlvbiBoYXBwZW5zPyBGb3IgZXhhbXBsZSBw
cm9jZXNzIEEgd2FudHMgdG8gdXNlIFZSQU0gdGhhdCBwcm9jZXNzIEIgY3VycmVudGx5IG9jY3Vw
aWVzLiBJbiB0aGlzIGNhc2Ugd2Ugd291bGQgZ2l2ZSBib3RoIHByb2Nlc3NlcyBhIG1peCBvZiBW
UkFNIGFuZCBzeXN0ZW0gbWVtb3J5LCBidXQgaG93IGRvIHdlIGFjY291bnQgdGhhdD8NCj4NCj4g
SWYgd2UgYWNjb3VudCB0byBwcm9jZXNzIEIgdGhlbiBpdCBjYW4gYmUgdGhhdCBwcm9jZXNzIEEg
ZmFpbHMgYmVjYXVzZSBvZiBwcm9jZXNzIEJzIG1lbWNnIGxpbWl0LiBUaGlzIGNyZWF0ZXMgYSBz
aXR1YXRpb24gd2hpY2ggaXMgYWJzb2x1dGVseSBub3QgdHJhY2VhYmxlIGZvciBhIHN5c3RlbSBh
ZG1pbmlzdHJhdG9yLg0KPg0KPiBCdXQgcHJvY2VzcyBBIG5ldmVyIGFza2VkIGZvciBzeXN0ZW0g
bWVtb3J5IGluIHRoZSBmaXJzdCBwbGFjZSwgc28gd2UgY2FuJ3QgYWNjb3VudCB0aGUgbWVtb3J5
IHRvIGl0IGVpdGhlciBvciBvdGhlcndpc2Ugd2UgbWFrZSB0aGUgcHJvY2VzcyByZXNwb25zaWJs
ZSBmb3IgdGhpbmdzIGl0IGRpZG4ndCBkby4NCj4NCj4gVGhlcmUgYXJlIGdvb2QgYXJndW1lbnQg
Zm9yIGFsbCBzb2x1dGlvbnMgYW5kIHRoZXJlIGFyZSBhIGNvdXBsZSBvZiBibG9ja3Mgd2hpY2gg
cnVsZSBvdXQgb25lIHNvbHV0aW9uIG9yIGFub3RoZXIgZm9yIGEgY2VydGFpbiB1c2UgY2FzZS4g
VG8gc3VtbWFyaXplIEkgdGhpbmsgdGhlIHdob2xlIHNpdHVhdGlvbiBpcyBhIGNvbXBsZXRlIG1l
c3MuDQo+DQo+IE1heWJlIHRoZXJlIGlzIG5vdCB0aGlzIG9uZSBzb2x1dGlvbiBhbmQgd2UgbmVl
ZCB0byBtYWtlIGl0IHNvbWVob3cgY29uZmlndXJhYmxlPw0KDQpNeSBmZWVsaW5nIGlzIHRoYXQg
d2UgY2FuJ3Qgc29sdmUgdGhlIFZSQU0gZXZpY3Rpb24gcHJvYmxlbSBzdXBlcg0KZWZmZWN0aXZl
bHksIGJ1dCBpdCdzIGFsc28gcHJvYmFibHkgbm90IGdvaW5nIHRvIGJlIGEgbWFqb3IgY29tbW9u
DQpjYXNlLCBJIGRvbid0IHRoaW5rIHdlIHNob3VsZCBkb3VibGUgYWNjb3VudCBtZW1jZy9kbWVt
IGp1c3QgaW4gY2FzZQ0Kd2UgaGF2ZSB0byBldmljdCBhbGwgb2YgYSB1c2VycyBkbWVtIGF0IHNv
bWUgcG9pbnQsIG1heWJlIGlmIHRoZXJlIHdhcw0Kc29tZSBraW5kIG9mIHNvZnQgbWVtY2cgbGlt
aXQgd2UgY291bGQgYWRkIGFzIGFuIGFjY291bnRpbmcgYnV0IG5vdA0KZW5mb3JjZWQgb3Zlcmhl
YWQgaXQgbWlnaHQgYmUgdXNlZnVsIHRvIHRyYWNrIGV2aWN0aW9ucywgYnV0IHllcyB3ZQ0KY2Fu
J3QgaGF2ZSBBIGFsbG9jYXRpbmcgbWVtb3J5IGNhdXNpbmcgQiB0byBmYWxsIG92ZXIgYmVjYXVz
ZSB3ZSBldmljdA0KbWVtb3J5IGludG8gaXQncyBtZW1jZyBzcGFjZSBhbmQgaXQgZmFpbHMgdG8g
YWxsb2NhdGUgdGhlIG5leHQgdGltZSBpdA0KdHJpZXMsIG9yIGhhdmluZyBBIGZhaWwgaW4gdGhh
dCBjYXNlLg0KDQpGb3IgdGhlIFVNQSBHUFUgY2FzZSB3aGVyZSB0aGVyZSBpcyBubyBkZXZpY2Ug
bWVtb3J5IG9yIGV2aWN0aW9uDQpwcm9ibGVtLCBwZXJoYXBzIGEgY29uZmlndXJhYmxlIG9wdGlv
biB0byBqdXN0IHNheSBhY2NvdW50IG1lbW9yeSBpbg0KbWVtY2cgZm9yIGFsbCBhbGxvY2F0aW9u
cyBkb25lIGJ5IHRoaXMgcHJvY2VzcywgYW5kIHN0YXRlIHllcyB5b3UgY2FuDQp3b3JrIGFyb3Vu
ZCBpdCB3aXRoIGFsbG9jYXRpb24gc2VydmVycyBvciB3aGF0ZXZlciBidXQgdGhlIGJlaGF2aW91
cg0KZm9yIHdlbGwgYmVoYXZlZCB0aGluZ3MgaXMgYXQgbGVhc3Qgc29tZXdoYXQgZGVmaW5lZC4N
Cg0KRGF2ZS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
