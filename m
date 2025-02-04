Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BC4A27977
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Feb 2025 19:13:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B6D544938
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Feb 2025 18:12:59 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by lists.linaro.org (Postfix) with ESMTPS id 3B04D43B8D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Feb 2025 18:12:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=nt54kwzN;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.219.49) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6e4295b72b5so8903946d6.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Feb 2025 10:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738692767; x=1739297567; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7FLDKP+B1KLmToqN0+wbXjgRxetp1/agS67Xma08wWo=;
        b=nt54kwzN41eZp2iNK2Xh4YvTzYAWQqCbie9nj9vLqa3vl1/b7dPuBYK2K9ojWO+VD4
         Asg5150PRGYYjqqCUc1T7TTwWyM1X7aB0INVXH3nYSBGAZOg5udLG0/Tku1qcCqPHdSJ
         yrdZ3QQh37MdQzslsHnV6BurHhXdGM3tdql6RysxdnOgESCBPVCn52dj5KODsQhj6Qh+
         POiRYYAPBlVDFWou+gCS8u2jnTy36KhX+pITJXWzc5hy6J1OCs6TKKqxySLosYZ5E1Pk
         4ZLv6BAsBylW2rgKLkxmvxkPbhMpFZDddfYKBaFYsmowjNHQ9FfC8ZJ0be37yZxLn3lH
         8ztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738692767; x=1739297567;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7FLDKP+B1KLmToqN0+wbXjgRxetp1/agS67Xma08wWo=;
        b=b7yF+qWjdY0gq7ny8dE7tj91GET9ny3J68q3D9TWL7ZhSVx3IlnKD+aHm6Ij5zMKEN
         1j5vCvVmzT85UT7fLcDpog82B1gQWiM9y7YO8OxcrAhc0OsebGZptT7YBmpcJUpFXNxM
         /mjQcktMpZMUWIxc/25PSSPNnatiyQu7U3JM6S+wEbZIBdiK16cSNA45px+DPXG7DYzT
         R8FYFrCDpsgWZG3Jlg4fwrnAgyIm/czgP53gXWEwow6UEwp18+3qNOF5HgIb7Dv760Yc
         ERziZW87+aAvFTQ/JME5/xRiJAcmb6br+cx9Gh5+G+oosN7U1KN9Uo31OBNvC87mQy7l
         enGA==
X-Forwarded-Encrypted: i=1; AJvYcCVwD+JyzfbRIXEkS0MEZCvCAoNwwiEwfZj41a7aKluW2Q/yhu6f7fP2WD8piR8iBWgJyA++hriNvA/QTs0k@lists.linaro.org
X-Gm-Message-State: AOJu0YxLY8QHIhrVXu4NWZsAsaaVXGTZ9KXM71JbMpSDPOIzaYvKrdrD
	SjvTYSZDOCcaC5VVKhKNhQhur+OIAYa/VJ37vQdz+yOuSRHj9d4fdNJ7O3wCxc0=
X-Gm-Gg: ASbGncsz1S5J2A3RCrIShGLZhhgPTbw/vM/l0jF0Gs+7trJ6IK/SQmpVH5o+8CL+Z+A
	GYl0SuMdmk316B1PQwsn1hYmvECV1arESr1dOMDmE5wEV0+FBr5LDOBaFmrhH6mHKk+xUoZ3Aut
	pGYB8YAzkisQv5zHpPWwFdWp6yqaFzbUwAcG2/T57w2hHSYe0w/Ctj9AKpVc2xopE+DRRuIx5Na
	Zxb/iANE22zezbczRZnNDeyGQhrMpkRDd0HOemgp32MInlwx4tWfXDO5GoARnHVicvqLm0ru88e
	9TWzubd5YwgO06FB
X-Google-Smtp-Source: AGHT+IEUFtl7TqQiYVbLC5fRURyW+Ho5rjSwqMbAkbu0qwIuaYAMXRJbz+FDijkjOelVbHDYm/RAhg==
X-Received: by 2002:a05:6214:3291:b0:6e1:a4d6:185f with SMTP id 6a1803df08f44-6e243c9b8c2mr427636956d6.34.1738692766625;
        Tue, 04 Feb 2025 10:12:46 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e2548143c4sm64370106d6.35.2025.02.04.10.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 10:12:46 -0800 (PST)
Message-ID: <b02711c901e8acf2bc47926919de7673a0cb0b98.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Florent Tomasin <florent.tomasin@arm.com>, Maxime Ripard
	 <mripard@kernel.org>
Date: Tue, 04 Feb 2025 13:12:44 -0500
In-Reply-To: <be8e6b9f-c3c6-41d1-af9c-3dcd102f0fe3@arm.com>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <771534be8dfa2a3bdc3876502752f518224b9298.1738228114.git.florent.tomasin@arm.com>
	 <ats2unrml5a7vbpdrqrzowodrsfj44bnubpbujg2igk3imeklx@nrpmg5oeq3gz>
	 <be8e6b9f-c3c6-41d1-af9c-3dcd102f0fe3@arm.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3B04D43B8D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.219.49:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DMARC_NA(0.00)[ndufresne.ca];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.49:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: L22OAFOUB3M57SNRJQKEPO2T5QHILMCS
X-Message-ID-Hash: L22OAFOUB3M57SNRJQKEPO2T5QHILMCS
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm
 -kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/5] dt-bindings: dma: Add CMA Heap bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L22OAFOUB3M57SNRJQKEPO2T5QHILMCS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRmxvcmVudCwNCg0KTGUgbHVuZGkgMDMgZsOpdnJpZXIgMjAyNSDDoCAxMzozNiArMDAwMCwg
RmxvcmVudCBUb21hc2luIGEgw6ljcml0wqA6DQo+IA0KPiBPbiAzMC8wMS8yMDI1IDEzOjI4LCBN
YXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+IEhpLA0KPiA+IA0KPiA+IE9uIFRodSwgSmFuIDMwLCAy
MDI1IGF0IDAxOjA4OjU3UE0gKzAwMDAsIEZsb3JlbnQgVG9tYXNpbiB3cm90ZToNCj4gPiA+IElu
dHJvZHVjZSBhIENNQSBIZWFwIGR0LWJpbmRpbmcgYWxsb3dpbmcgY3VzdG9tDQo+ID4gPiBDTUEg
aGVhcCByZWdpc3RyYXRpb25zLg0KPiA+ID4gDQo+ID4gPiAqIE5vdGUgdG8gdGhlIHJldmlld2Vy
czoNCj4gPiA+IFRoZSBwYXRjaCB3YXMgdXNlZCBmb3IgdGhlIGRldmVsb3BtZW50IG9mIHRoZSBw
cm90ZWN0ZWQgbW9kZQ0KDQpKdXN0IHRvIGF2b2lkIGRpdmVyZ2VuY2UgaW4gbm9tZW5jbGF0dXJl
LCBhbmQgYmVjYXVzZSB0aGlzIGlzIG5vdCBhIG5ldyBzdWJqZWN0LA0KcGVyaGFwcyB5b3Ugc2hv
dWxkIGFsc28gYWRoZXJlIHRvIHRoZSBuYW1lICJyZXN0cmljdGVkIi4gQm90aCBMaW5hcm8gYW5k
DQpNZWRpYXRlayBoYXZlIG1vdmVkIGZyb20gInNlY3VyZSIgdG8gdGhhdCBuYW1lIGluIHRoZWly
IHByb3Bvc2FsLiBBcyB5b3UgYXJlIHRoZQ0KdGhpcmQgcHJvcG9zaW5nIHRoaXMgKGF0IGxlYXN0
IGZvciB0aGUgcHJvcG9zYWwgdGhhdCBhcmUgQ0NlZCBvbiBsaW51eC1tZWRpYSksIEkNCndvdWxk
IGhhdmUgZXhwZWN0ZWQgaW4geW91ciBjb3ZlciBsZXR0ZXIgYSBzdW1tYXJ5IG9mIGhvdyB0aGUg
b3RoZXIgcmVxdWlyZW1lbnQNCmhhdmUgYmVlbiBibGVuZGVkIGluIHlvdXIgcHJvcG9zYWwuDQoN
CnJlZ2FyZHMsDQpOaWNvbGFzDQoNCj4gPiA+IGZlYXR1cmUgaW4gUGFudGhvciBDU0Yga2VybmVs
IGRyaXZlciBhbmQgaXMgbm90IGluaXRpYWxseSB0aG91Z2h0DQo+ID4gPiB0byBsYW5kIGluIHRo
ZSBMaW51eCBrZXJuZWwuIEl0IGlzIG1vc3RseSByZWxldmFudCBpZiBzb21lb25lDQo+ID4gPiB3
YW50cyB0byByZXByb2R1Y2UgdGhlIGVudmlyb25tZW50IG9mIHRlc3RpbmcuIFBsZWFzZSwgcmFp
c2UNCj4gPiA+IGludGVyZXN0IGlmIHlvdSB0aGluayB0aGUgcGF0Y2ggaGFzIHZhbHVlIGluIHRo
ZSBMaW51eCBrZXJuZWwuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEZsb3JlbnQgVG9t
YXNpbiA8ZmxvcmVudC50b21hc2luQGFybS5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9kbWEvbGludXgsY21hLnltbCAgICAgfCA0MyArKysrKysrKysrKysr
KysrKysrDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykNCj4gPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS9s
aW51eCxjbWEueW1sDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZG1hL2xpbnV4LGNtYS55bWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZG1hL2xpbnV4LGNtYS55bWwNCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0DQo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmM1MzJlMDE2YmJlNQ0KPiA+ID4gLS0tIC9k
ZXYvbnVsbA0KPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rt
YS9saW51eCxjbWEueW1sDQo+ID4gPiBAQCAtMCwwICsxLDQzIEBADQo+ID4gPiArIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQ0KPiA+ID4gKyVZ
QU1MIDEuMg0KPiA+ID4gKy0tLQ0KPiA+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvZG1hL2xpbnV4LWNtYS55YW1sIw0KPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPiA+ID4gKw0KPiA+ID4gK3RpdGxlOiBD
dXN0b20gTGludXggQ01BIGhlYXANCj4gPiA+ICsNCj4gPiA+ICtkZXNjcmlwdGlvbjoNCj4gPiA+
ICsgIFRoZSBjdXN0b20gTGludXggQ01BIGhlYXAgZGV2aWNlIHRyZWUgbm9kZSBhbGxvd3MgcmVn
aXN0ZXJpbmcNCj4gPiA+ICsgIG9mIG11bHRpcGxlIENNQSBoZWFwcy4NCj4gPiA+ICsNCj4gPiA+
ICsgIFRoZSBDTUEgaGVhcCBuYW1lIHdpbGwgbWF0Y2ggdGhlIG5vZGUgbmFtZSBvZiB0aGUgIm1l
bW9yeS1yZWdpb24iLg0KPiA+ID4gKw0KPiA+ID4gK3Byb3BlcnRpZXM6DQo+ID4gPiArICBjb21w
YXRpYmxlOg0KPiA+ID4gKyAgICBlbnVtOg0KPiA+ID4gKyAgICAgIC0gbGludXgsY21hDQo+ID4g
PiArDQo+ID4gPiArICBtZW1vcnktcmVnaW9uOg0KPiA+ID4gKyAgICBtYXhJdGVtczogMQ0KPiA+
ID4gKyAgICBkZXNjcmlwdGlvbjogfA0KPiA+ID4gKyAgICAgIFBoYW5kbGUgdG8gdGhlIHJlc2Vy
dmVkIG1lbW9yeSBub2RlIGFzc29jaWF0ZWQgd2l0aCB0aGUgQ01BIEhlYXAuDQo+ID4gPiArICAg
ICAgVGhlIHJlc2VydmVkIG1lbW9yeSBub2RlIG11c3QgZm9sbG93IHRoaXMgYmluZGluZyBjb252
ZW50aW9uOg0KPiA+ID4gKyAgICAgICAtIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9yZXNlcnZlZC1tZW1vcnkvcmVzZXJ2ZWQtbWVtb3J5LnR4dA0KPiA+ID4gKw0KPiA+ID4gK2V4
YW1wbGVzOg0KPiA+ID4gKyAgLSB8DQo+ID4gPiArICAgIHJlc2VydmVkLW1lbW9yeSB7DQo+ID4g
PiArICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47DQo+ID4gPiArICAgICAgI3NpemUtY2VsbHMg
PSA8Mj47DQo+ID4gPiArDQo+ID4gPiArICAgICAgY3VzdG9tX2NtYV9oZWFwOiBjdXN0b20tY21h
LWhlYXAgew0KPiA+ID4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJzaGFyZWQtZG1hLXBvb2wiOw0K
PiA+ID4gKyAgICAgICAgcmVnID0gPDB4MCAweDkwNjAwMDAwIDB4MCAweDEwMDAwMDA+Ow0KPiA+
ID4gKyAgICAgICAgcmV1c2FibGU7DQo+ID4gPiArICAgICAgfTsNCj4gPiA+ICsgICAgfTsNCj4g
PiA+ICsNCj4gPiA+ICsgICAgZGV2aWNlX2NtYV9oZWFwOiBkZXZpY2UtY21hLWhlYXAgew0KPiA+
ID4gKyAgICAgIGNvbXBhdGlibGUgPSAibGludXgsY21hIjsNCj4gPiA+ICsgICAgICBtZW1vcnkt
cmVnaW9uID0gPCZjdXN0b21fY21hX2hlYXA+Ow0KPiA+ID4gKyAgICB9Ow0KPiA+IA0KPiA+IElz
bid0IGl0IHJlZHVuZGFudCB3aXRoIHRoZSBsaW51eCxjbWEtZGVmYXVsdCBzaGFyZWQtZG1hLXBv
b2wgcHJvcGVydHkNCj4gPiBhbHJlYWR5Pw0KPiA+IA0KPiA+IE1heGltZQ0KPiANCj4gSGkgTWF4
aW1lLA0KPiANCj4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgbXkgdW5kZXJzdGFuZGluZyBpcyB3cm9u
ZywNCj4gDQo+IFRoZSBleGlzdGluZyBwcm9wZXJ0aWVzOiBsaW51eCxjbWEtZGVmYXVsdCBhbmQg
c2hhcmVkLWRtYS1wb29sLCBkbyBub3QNCj4gYWxsb3cgdGhlIGNyZWF0aW9ucyBvZiBtdWx0aXBs
ZSBzdGFuZGFsb25lIENNQSBoZWFwcywgdGhvc2Ugd2lsbCBjcmVhdGUNCj4gYSBzaW5nbGUgQ01B
IGhlYXA6IGBkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWFgPyBPdGhlciBDTUEgaGVhcHMgd2ls
bA0KPiBiZSBib3VuZCB0byBhIGRyaXZlci4NCj4gDQo+IEkgaW50cm9kdWNlZCB0aGUgImxpbnV4
LGNtYSIgdG8gYWxsb3cgY3JlYXRpbmcgbXVsdGlwbGUgc3RhbmRhbG9uZSBDTUENCj4gaGVhcHMs
IHdpdGggdGhlIGludGVudGlvbiBvZiB2YWxpZGF0aW5nIHRoZSBwcm90ZWN0ZWQgbW9kZSBzdXBw
b3J0IG9uDQo+IE1hbGkgQ1NHIEdQVXMuIEl0IHdhcyBpbmNsdWRlZCBpbiB0aGUgUkZDIGluIHRo
ZXJlIGFyZSBpbnRlcmVzdHMgaW4NCj4gdGhpcyBhcHByb2FjaC4NCj4gDQo+IFNpbmNlIHRoZSBQ
YW50aG9yIENTRiBrZXJuZWwgZHJpdmVyIGRvZXMgbm90IG93biBvciBtYW5hZ2UgYSBoZWFwLA0K
PiBJIG5lZWRlZCBhIHdheSB0byBjcmVhdGUgYSBzdGFuZGFsb25lIGhlYXAuIFRoZSBpZGVhIGhl
cmUgaXMgZm9yIHRoZQ0KPiBrZXJuZWwgZHJpdmVyIHRvIGJlIGFuIGltcG9ydGVyLiBJIHJlbGll
ZCBvbiBhIHBhdGNoIHNlcmllcyB0byByZXRyaWV2ZQ0KPiB0aGUgaGVhcCBhbmQgYWxsb2NhdGUg
YSBETUEgYnVmZmVyIGZyb20gaXQ6DQo+IC0gZG1hX2hlYXBfZmluZCgpDQo+IC0gZG1hX2hlYXBf
YnVmZmVyX2FsbG9jKCkNCj4gLSBkbWFfaGVhcF9wdXQoKQ0KPiANCj4gUmVmOg0KPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMwOTExMDIzMDM4LjMwNjQ5LTEteW9uZy53dUBtZWRp
YXRlay5jb20vI3QNCj4gDQo+IA0KPiBTaW5jZSB0aGUgcHJvdGVjdGVkL3NlY3VyZSBtZW1vcnkg
bWFuYWdlbWVudCBpcyBpbnRlZ3JhdGlvbiBzcGVjaWZpYywNCj4gSSBuZWVkZWQgYSBnZW5lcmlj
IHdheSBmb3IgUGFudGhvciB0byBhbGxvY2F0ZSBmcm9tIHN1Y2ggaGVhcC4NCj4gDQo+IEluIHNv
bWUgc2NlbmFyaW9zIGl0IG1pZ2h0IGJlIGEgY2FydmVkLW91dCBtZW1vcnksIGluIG90aGVycyBh
IEZXIHdpbGwNCj4gcmVzaWRlIGluIHRoZSBzeXN0ZW0gKFRFRSkgYW5kIHJlcXVpcmUgYSBzZWN1
cmUgaGVhcCBkcml2ZXIgdG8gYWxsb2NhdGUNCj4gbWVtb3J5IChlLmc6IGEgc2ltaWxhciBhcHBy
b2FjaCBpcyBmb2xsb3dkIGJ5IE1USykuIFN1Y2ggZHJpdmVyIHdvdWxkDQo+IGltcGxlbWVudCB0
aGUgYWxsb2NhdGlvbiBhbmQgZnJlZSBsb2dpYy4NCj4gDQo+IEZsb3JlbnQNCj4gDQo+IA0KPiAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
