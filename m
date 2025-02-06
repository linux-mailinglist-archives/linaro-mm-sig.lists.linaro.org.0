Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7A2A2B418
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Feb 2025 22:21:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8CCF4434A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Feb 2025 21:21:40 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by lists.linaro.org (Postfix) with ESMTPS id 5082E4253B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Feb 2025 21:21:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=ONcfTk22;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.160.170) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-46c7855df10so23714331cf.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Feb 2025 13:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1738876874; x=1739481674; darn=lists.linaro.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6DxvZdZPg1+c/4MiY+1eFG+nW41sRJmolNY7AFhKpW0=;
        b=ONcfTk22vQpcVARmur7og2mNER5Ung4GMHCRFUYwqg9PI/LdWdOHU2MjaCGWUI37CP
         N4Q1UKmzZo0FKyNmKpHQXRnOMu7zAIhvD3v3IeAZjejcOE2aAdoUv1JB/xUWozL65iiq
         yGhl86LTbDUm7uV0Jpw5jy4uhmGvbG9/EWJXxAjTbQEf9liNfVp5y0xBdK5wMLKpiFGc
         B5HUI/wUHNQVGka6UV1liULDe4SsYrUEnaQCW8wHAn2dzsy2AiIad6IQzztxd/GUbcKc
         iW5tQldxSSffJ62gPbddLL/5TzqMsIVdEp1SN3+vL2xMEIRmw7CBTB6IJDnY4+BM29kC
         4bTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738876874; x=1739481674;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6DxvZdZPg1+c/4MiY+1eFG+nW41sRJmolNY7AFhKpW0=;
        b=Pf31LVs/u83TwwjG+t8g/yhyKAlRWLglhTCPkjMAdW2W6KL8TPSb92b8s/g5oHk+8N
         WcUhKC04CGuSoCZm5YRcZOxoKOBhgzusHLKILL+2Um7m9Cw6iFikK5sEQ6sTzSZ8wvaC
         ym3IlcD/hLTOXJztcyN4F8TQSIo3RZ/J/bgcBsVuVu8usNc5ZsDIbrT09gUywQa3OBY8
         +/d9HNOBGBRGwwD0AM7TIPrqaTRZBuZtfTbbe6VWijdiSgFjCtQWbvKLjk8oB3niNyXV
         LPSHfDWsR9bZ4hxlD8IjrBEdIuOXGJBpy0S6Cc6MpGhC4+50aVCMxwBVGMzZ6LmJ47sl
         Y5RA==
X-Forwarded-Encrypted: i=1; AJvYcCXQ9P9HTC7/0ywbnC+gDcPm7H8+4Aowz27jAYlZcHDA6RynjJwPvx3LzJVy9F0asQ6fsvq0jFWH8t3kM+0k@lists.linaro.org
X-Gm-Message-State: AOJu0YxorELvlEPCkf+9t6focGV7GAnuf8E2JDf96WgnjqPothZz/2cz
	uROjYsbOR/su1jkeGbJ0VSI2bvGya95BJE5n8HFLD/ALnMsnv1mbetNFX80L0SM=
X-Gm-Gg: ASbGncuVPqqQtq9jyf12Ozf6FkopYLdtozuYzWQQNwNsIcY75SdFT8o7ZbR5wcVjUeB
	WCHmyqEsaNSbQXOutrEtKniGs9dXsEmIL6WuyoMw+iQ38U/IgE+m29cRi3kp1LN8aplrsqGTRd4
	b3bcdJsBkxFkUsbWCa8AsBlM0TjrAMbJA5yB2Xnj3JJDa6aBvC4H6wp1lGpkd799l+0euHQfuSx
	2g6pqQu8zeXqD0kQ2o2duD2dqg8EQrZmbPrKuA+fo7LDz7Z7n8POeivWKEO5Hqi3XHD9yg2yG+j
	NRBuWobOH/g+cN6F
X-Google-Smtp-Source: AGHT+IHI8yMd/5aYfmfZcfbDFH3h4Fy2Z99LYvivEu182Bj0ddc/CD4GBHcML5OVdc/uP/LZDxsEvA==
X-Received: by 2002:a05:622a:5a95:b0:466:a06f:ae0a with SMTP id d75a77b69052e-47167ae29c0mr13578771cf.32.1738876873855;
        Thu, 06 Feb 2025 13:21:13 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:e976::7a9])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47153bc741asm9168671cf.62.2025.02.06.13.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 13:21:12 -0800 (PST)
Message-ID: <5e0e2fbb22c2ffb0c5281727cd95d70f5f5ba696.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Krzysztof Kozlowski <krzk@kernel.org>, Florent Tomasin	
 <florent.tomasin@arm.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal
 <sumit.semwal@linaro.org>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
 John Stultz <jstultz@google.com>, "T . J . Mercier"	
 <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong
 Wu <yong.wu@mediatek.com>
Date: Thu, 06 Feb 2025 16:21:10 -0500
In-Reply-To: <c0aad911-ecc4-4b04-a453-6da226f76ed2@kernel.org>
References: <cover.1738228114.git.florent.tomasin@arm.com>
	 <36b57dcf20860398ba83985e1c5b6f6958d08ba7.1738228114.git.florent.tomasin@arm.com>
	 <7234f25c-a2aa-4834-931b-aeeb7a49dfa7@kernel.org>
	 <4b9deab1-e330-4c93-8260-75276c2bc9ff@arm.com>
	 <c0aad911-ecc4-4b04-a453-6da226f76ed2@kernel.org>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5082E4253B
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.160.170:from];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.170:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,arm.com,collabora.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ndufresne.ca];
	R_DKIM_ALLOW(0.00)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: T3XNOSDXTHK5ECILWOUHF24XNRSRVHEY
X-Message-ID-Hash: T3XNOSDXTHK5ECILWOUHF24XNRSRVHEY
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/5] dt-bindings: gpu: Add protected heap name to Mali Valhall CSF binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T3XNOSDXTHK5ECILWOUHF24XNRSRVHEY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbWVyY3JlZGkgMDUgZsOpdnJpZXIgMjAyNSDDoCAxMDoxMyArMDEwMCwgS3J6eXN6dG9mIEtv
emxvd3NraSBhIMOpY3JpdMKgOg0KPiBPbiAwMy8wMi8yMDI1IDE2OjMxLCBGbG9yZW50IFRvbWFz
aW4gd3JvdGU6DQo+ID4gSGkgS3J6eXN6dG9mDQo+ID4gDQo+ID4gT24gMzAvMDEvMjAyNSAxMzoy
NSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gPiA+IE9uIDMwLzAxLzIwMjUgMTQ6MDgs
IEZsb3JlbnQgVG9tYXNpbiB3cm90ZToNCj4gPiA+ID4gQWxsb3cgbWFsaS12YWxoYWxsLWNzZiBk
cml2ZXIgdG8gcmV0cmlldmUgYSBwcm90ZWN0ZWQNCj4gPiA+ID4gaGVhcCBhdCBwcm9iZSB0aW1l
IGJ5IHBhc3NpbmcgdGhlIG5hbWUgb2YgdGhlIGhlYXANCj4gPiA+ID4gYXMgYXR0cmlidXRlIHRv
IHRoZSBkZXZpY2UgdHJlZSBHUFUgbm9kZS4NCj4gPiA+IA0KPiA+ID4gUGxlYXNlIHdyYXAgY29t
bWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRvIExpbnV4IGNvZGluZyBzdHlsZSAvIHN1Ym1pc3Npb24N
Cj4gPiA+IHByb2Nlc3MgKG5laXRoZXIgdG9vIGVhcmx5IG5vciBvdmVyIHRoZSBsaW1pdCk6DQo+
ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni40LXJjMS9zb3VyY2UvRG9j
dW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDU5Nw0KPiA+IEFwb2xv
Z2llcywgSSB0aGluayBJIG1hZGUgcXVpdGUgZmV3IG90aGVyIG1pc3Rha2VzIGluIHRoZSBzdHls
ZSBvZiB0aGUNCj4gPiBwYXRjaGVzIEkgc2VudC4gSSB3aWxsIHdvcmsgb24gaW1wcm92aW5nIHRo
aXMgYXNwZWN0LCBhcHByZWNpYXRlZA0KPiA+IA0KPiA+ID4gV2h5IHRoaXMgY2Fubm90IGJlIHBh
c3NlZCBieSBwaGFuZGxlLCBqdXN0IGxpa2UgYWxsIHJlc2VydmVkIHJlZ2lvbnM/DQo+ID4gPiAN
Cj4gPiA+IEZyb20gd2hlcmUgZG8geW91IHRha2UgdGhlc2UgcHJvdGVjdGVkIGhlYXBzPyBGaXJt
d2FyZT8gVGhpcyB3b3VsZA0KPiA+ID4gZXhwbGFpbiB3aHkgbm8gcmVsYXRpb24gaXMgaGVyZSAo
bm8gcHJvYmUgb3JkZXJpbmcsIG5vIGRldmljZSBsaW5rcywNCj4gPiA+IG5vdGhpbmcgY29ubmVj
dGluZyBzZXBhcmF0ZSBkZXZpY2VzKS4NCj4gPiANCj4gPiBUaGUgcHJvdGVjdGVkIGhlYXAgaXMg
Z2VuZXJhbHkgb2J0YWluZWQgZnJvbSBhIGZpcm13YXJlIChURUUpIGFuZCBjb3VsZA0KPiA+IHNv
bWV0aW1lcyBiZSBhIGNhcnZlZC1vdXQgbWVtb3J5IHdpdGggcmVzdHJpY3RlZCBhY2Nlc3MuDQo+
IA0KPiBXaGljaCBpcyBhIHJlc2VydmVkIG1lbW9yeSwgaXNuJ3QgaXQ/DQo+IA0KPiA+IA0KPiA+
IFRoZSBQYW50aG9yIENTRiBrZXJuZWwgZHJpdmVyIGRvZXMgbm90IG93biBvciBtYW5hZ2UgdGhl
IHByb3RlY3RlZCBoZWFwDQo+ID4gYW5kIGlzIGluc3RlYWQgYSBjb25zdW1lciBvZiBpdCAoYXNz
dW1pbmcgdGhlIGhlYXAgaXMgbWFkZSBhdmFpbGFibGUgYnkNCj4gPiB0aGUgc3lzdGVtIGludGVn
cmF0b3IpLg0KPiA+IA0KPiA+IEkgaW5pdGlhbGx5IHVzZWQgYSBwaGFuZGxlLCBidXQgdGhlbiBJ
IHJlYWxpc2VkIGl0IHdvdWxkIGludHJvZHVjZSBhIG5ldw0KPiA+IEFQSSB0byBzaGFyZSB0aGUg
aGVhcCBhY3Jvc3Mga2VybmVsIGRyaXZlci4gSW4gYWRkaXRpb24gSSBmb3VuZCB0aGlzDQo+ID4g
cGF0Y2ggc2VyaWVzOg0KPiA+IC0NCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIw
MjMwOTExMDIzMDM4LjMwNjQ5LTEteW9uZy53dUBtZWRpYXRlay5jb20vI3QNCj4gPiANCj4gPiB3
aGljaCBpbnRyb2R1Y2VzIGEgRE1BIEhlYXAgQVBJIHRvIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwg
dG8gZmluZCBhDQo+ID4gaGVhcCBieSBuYW1lOg0KPiA+IC0gZG1hX2hlYXBfZmluZCgpDQo+ID4g
DQo+ID4gSSB0aGVuIGRlY2lkZWQgdG8gZm9sbG93IHRoYXQgYXBwcm9hY2ggdG8gaGVscCBpc29s
YXRlIHRoZSBoZWFwDQo+ID4gbWFuYWdlbWVudCBmcm9tIHRoZSBHUFUgZHJpdmVyIGNvZGUuIElu
IHRoZSBQYW50aG9yIGRyaXZlciwgaWYgdGhlDQo+ID4gaGVhcCBpcyBub3QgZm91bmQgYXQgcHJv
YmUgdGltZSwgdGhlIGRyaXZlciB3aWxsIGRlZmVyIHRoZSBwcm9iZSB1bnRpbA0KPiA+IHRoZSBl
eHBvcnRlciBtYWRlIGl0IGF2YWlsYWJsZS4NCj4gDQo+IA0KPiBJIGRvbid0IHRhbGsgaGVyZSBy
ZWFsbHkgYWJvdXQgdGhlIGRyaXZlciBidXQgZXZlbiBhYm92ZSBtZWRpYXRlaw0KPiBwYXRjaHNl
dCB1c2VzIHJlc2VydmVkIG1lbW9yeSBiaW5kaW5ncy4NCj4gDQo+IFlvdSBleHBsYWluZWQgc29t
ZSB0aGluZ3MgYWJvdXQgZHJpdmVyIHlldCB5b3UgZGlkIG5vdCBhbnN3ZXIgdGhlDQo+IHF1ZXN0
aW9uLiBUaGlzIGxvb2tzIGxpa2UgcmVzZXJ2ZWQgbWVtb3J5LiBJZiBpdCBkb2VzIG5vdCwgYnJp
bmcNCj4gYXJndW1lbnRzIHdoeSB0aGlzIGJpbmRpbmcgY2Fubm90IGJlIGEgcmVzZXJ2ZWQgbWVt
b3J5LCB3aHkgaGFyZHdhcmUgaXMNCj4gbm90IGEgY2FydmUgb3V0IG1lbW9yeS4NCg0KSSB0aGlu
ayB0aGUgcG9pbnQgaXMgdGhhdCBmcm9tIHRoZSBNYWxpIEdQVSB2aWV3LCB0aGUgbWVtb3J5IGRv
ZXMgbm90IG5lZWQgdG8gYmUNCndpdGhpbiB0aGUgcmFuZ2UgdGhlIExpbnV4IEtlcm5lbCBhY3R1
YWxseSBzZWUsIGV2ZW4gdGhvdWdoIGN1cnJlbnQgaW50ZWdyYXRpb24NCmhhdmUgdGhhdC4gRnJv
bSBNYWxpIEdQVSBkcml2ZXIgc3RhbmQgcG9pbnQgKG9yIGNvZGVjIGRyaXZlcnMgYW5kIHdoYXQn
cyBub3QpLA0KdGhlIG1lbW9yeSByYW5nZSBpcyBub3QgdXNlZnVsIHRvIGFsbG9jYXRlIHByb3Rl
Y3RlZC9yZXN0cmljdGVkIG1lbW9yeS4gT24gdG9wDQpvZiB3aGljaCwgaXRzIG5vdCByZXNlcnZl
ZCBzcGVjaWZpY2FsbHkgZm9yIHRoZSBNYWxpIEdQVS4NCg0KV2hhdCdzIHlvdXIgcHJhY3RpY2Fs
IHN1Z2dlc3Rpb24gaGVyZSA/IEludHJvZHVjZSBkbWFfaGVhcF9maW5kX2J5X3JlZ2lvbigpID8N
Cg0KTmljb2xhcw0KDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KPiANCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
