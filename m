Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 086E0B52BC2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 10:35:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D358A45D3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 08:35:14 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9AA3845959
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 08:35:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=kux5pqvh;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-74526ca7d64so464738a34.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 01:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757579707; x=1758184507; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3kQgAiwPfvEAAOGUV7iUTri/K2HtvbKjHs1xtQRX0U=;
        b=kux5pqvh8N66Snl8Fs7bNPYJjLK9O5S97Pz/ksMX9W65Tv+zmJ14PQVx4g4/r8qBmH
         KpxoV2CVQw/avsjazYRKoN6j/c1dO7Ti2fGxJpo5jKIJC258HuFJP3eSZKw2AOEApTDD
         /QeDfR9O6GPz1mEbc/i+/AubB6asLAbrP5oa5rqgAkvscy3SwjtwRCpCw8FnzIJ1jFrP
         pqnZm7GVSyCT/s7HpT4O5bEFkL6n4EubRqKjG/UEywQVYNrAHOm40t5WQXEf5r/uWtPU
         Os2NGvBoyUltLTp/fvWzuccgQO8BPR4QA1u9xr54hyXJbBjyhYCD+eWBwUlhNE/FAfP+
         yG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757579707; x=1758184507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X3kQgAiwPfvEAAOGUV7iUTri/K2HtvbKjHs1xtQRX0U=;
        b=KwzX6b8XQ2lg86LTcbOLMb0ftchEu2+v4zVeDL6I7B8LX6cOQQA/6StcEz0zimylDy
         /b/aCsHrGkKCWwXGZaqJctuBPmXgicGdLowJ2JmCA9Sur8mgV1FqbaxkfFjDPwE6Iiuh
         dDa99q6LG//KOLG6Tp8/MEQ3C67/x7dgjCFK2eAA0vg7fDRzYgxEBKJu+153Yw84IICT
         Ra49d6u+YA8VoGBwO+3kw1xIXyztZEEpyVGYXctBIyg1OKxQqPExKIpESb9wtecRqQGM
         Bsragc4D37MROPkcc/aHJ1js+ZwZCB9/BBPdWU82S9q7VYYjYfjsBoeUP0kz1B73HFWx
         GbrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmnnjsRbbJdKH66rmg/X1cI4G1mfK7Dew9LJ0tN6yFWlHyEfRt49x8bqxhpxz1owsSE6rQJLhKnXERkMVW@lists.linaro.org
X-Gm-Message-State: AOJu0YzTCkQXveagDD10s9eiC6ZWqNEoaa7lFWKbxKYThYBNzU+xvf3y
	jYEfqrwfN9yQZcavGRwZjV23ObruD6dVvOEpDrRTdL5sjGCDKLtJHl8nr8zZaOrpM4VPmO0xxRj
	evGIGpcE1/3Yl3OQOUNnmrNCwpY1gw3sm4LnB7gnLBR0K
X-Gm-Gg: ASbGnculbdXGT47VsJg14WTFQS93bnqD20iCNiTpHg4oy1DufyxnXcN9QtOGYtGG6rF
	uBUwzUEGecA1Z4UqSrYqFiX2AfjvBVnhKxstqiql+tRbY6zdWmfR26Uz0YL7oL+izHgflRdMPZJ
	nLcyxPlV+OI5TCapHqgmTHzTbrSJxMFw3BBbfss6iCXpETCPF/BD4pzi/JaCNjuaSiHFKUwK4B/
	z5a9miXp1XNvdv4p6s=
X-Google-Smtp-Source: AGHT+IFeh9GhwJV0/BRbDqXK1301VOv+yaAADE4wRS2wEzztzMHQXFq1Ue2WE8k5BTs1i0e0aU2GdBSeES8eqZ6R/tc=
X-Received: by 2002:a05:6830:348e:b0:74b:3422:f33d with SMTP id
 46e09a7af769-74c66acfea9mr10389569a34.0.1757579706886; Thu, 11 Sep 2025
 01:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
 <20250813060339.2977604-3-jens.wiklander@linaro.org> <aJ1-YpgvGt4_6CFU@sumit-X1>
 <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com>
 <CAO_48GEqkf_Jm8kSTPEDZkZy-YmT56Zs1Jx9zCvzETPsCzrkEg@mail.gmail.com>
 <CAHUa44HHSKwiBYPMSY5hj6wyWc9-uvtQVx+JLx4M5yjD5AwyTg@mail.gmail.com> <CAO_48GE=FHaNzybUxjY=igyOO1oasKb9yu_yAjJEdjTQXicaJA@mail.gmail.com>
In-Reply-To: <CAO_48GE=FHaNzybUxjY=igyOO1oasKb9yu_yAjJEdjTQXicaJA@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 11 Sep 2025 10:34:53 +0200
X-Gm-Features: Ac12FXx5ebSInGSvpsrj2pSWY8lp7qtZdsTImt4o0DLikSjOCGD4PzhkPWZzq-g
Message-ID: <CAHUa44HkMNO1ONTGEKHCPXRQwg3zqYf5ZHmxEijW==vbmd1LFw@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9AA3845959
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.50:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,linaro.org,oss.qualcomm.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.210.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: H7VPTQ5O57GKASVAENPPCZCGTZYN4E3Q
X-Message-ID-Hash: H7VPTQ5O57GKASVAENPPCZCGTZYN4E3Q
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7VPTQ5O57GKASVAENPPCZCGTZYN4E3Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgU2VwIDExLCAyMDI1IGF0IDEwOjAw4oCvQU0gU3VtaXQgU2Vtd2FsIDxz
dW1pdC5zZW13YWxAbGluYXJvLm9yZz4gd3JvdGU6DQo+DQo+IEhpIEplbnMsDQo+DQo+IE9uIFRo
dSwgMTEgU2VwdCAyMDI1IGF0IDEzOjIwLCBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJA
bGluYXJvLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBIaSBTdW1pdCwNCj4gPg0KPiA+IE9uIFRodSwg
U2VwIDExLCAyMDI1IGF0IDk6MTXigK9BTSBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBIZWxsbyBKZW5zLA0KPiA+ID4NCj4gPiA+IE9u
IEZyaSwgMTUgQXVnIDIwMjUgYXQgMDU6MDAsIFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2ds
ZS5jb20+IHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPiBPbiBXZWQsIEF1ZyAxMywgMjAyNSBhdCAx
MToxM+KAr1BNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiBPbiBXZWQsIEF1ZyAxMywgMjAyNSBhdCAwODowMjo1MUFNICswMjAw
LCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiA+ID4gPiA+IEV4cG9ydCB0aGUgZG1hLWJ1ZiBo
ZWFwIGZ1bmN0aW9ucyB0byBhbGxvdyB0aGVtIHRvIGJlIHVzZWQgYnkgdGhlIE9QLVRFRQ0KPiA+
ID4gPiA+ID4gZHJpdmVyLiBUaGUgT1AtVEVFIGRyaXZlciB3YW50cyB0byByZWdpc3RlciBhbmQg
bWFuYWdlIHNwZWNpZmljIHNlY3VyZQ0KPiA+ID4gPiA+ID4gRE1BIGhlYXBzIHdpdGggaXQuDQo+
ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBzZXJpZXMuDQo+ID4gPg0KPiA+ID4gQ291bGQgeW91IHBs
ZWFzZSB1c2UgRVhQT1JUX1NZTUJPTF9HUExfTlMgaW5zdGVhZCBvZiBFWFBPUlRfU1lNQk9MIGZv
ciB0aGVzZT8NCj4gPg0KPiA+IFN1cmUsIHdoYXQgbmFtZXNwYWNlIGRvIHlvdSB3YW50IGluIHRo
ZSBhcmd1bWVudCBmb3INCj4gPiBFWFBPUlRfU1lNQk9MX0dQTF9OUygpPyAiRE1BX0JVRiI/DQo+
DQo+IEkgdGhpbmsgIkRNQV9CVUZfSEVBUCIgbWF5IGJlIGJldHRlcj8NCg0KSSdsbCB1c2UgdGhh
dC4NCg0KVGhhbmtzLA0KSmVucw0KDQo+ID4NCj4gPiA+DQo+ID4gPiBXaXRoIHRoYXQgY2hhbmdl
LCBwbGVhc2UgZmVlbCBmcmVlIHRvIHVzZSBteQ0KPiA+ID4gQWNrZWQtYnk6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gSmVucw0K
PiA+DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVucyBXaWtsYW5k
ZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTog
U3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVhbGNvbW0uY29tPg0KPiA+ID4gPiA+ID4gLS0t
DQo+ID4gPiA+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgfCAzICsrKw0KPiA+ID4g
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiA+DQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiBDYW4gd2UgZ2V0IGFuIGFjayBmcm9tIERNQWJ1ZiBtYWludGFpbmVy
cyBoZXJlPyBXaXRoIHRoYXQgd2Ugc2hvdWxkIGJlDQo+ID4gPiA+ID4gYWJsZSB0byBxdWV1ZSB0
aGlzIHBhdGNoLXNldCBmb3IgbGludXgtbmV4dCB0YXJnZXR0aW5nIHRoZSA2LjE4IG1lcmdlDQo+
ID4gPiA+ID4gd2luZG93Lg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gLVN1bWl0DQo+ID4gPiA+DQo+
ID4gPiA+IFJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0K
PiA+ID4gPg0KPiA+ID4gPiBTb3JyeSBJIGhhdmVuJ3QgYmVlbiBhYmxlIHRvIHBhcnRpY2lwYXRl
IG11Y2ggdXBzdHJlYW0gbGF0ZWx5Lg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KPiA+ID4gPiA+ID4gaW5kZXggM2NiZTg3ZDRhNDY0Li5jZGRkZjBlMjRkY2UgMTAwNjQ0DQo+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiA+ID4gPiA+IEBAIC0yMDIsNiAr
MjAyLDcgQEAgdm9pZCAqZG1hX2hlYXBfZ2V0X2RydmRhdGEoc3RydWN0IGRtYV9oZWFwICpoZWFw
KQ0KPiA+ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiA+ICAgICAgIHJldHVybiBoZWFwLT5wcml2Ow0K
PiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+ICtFWFBPUlRfU1lNQk9MKGRtYV9oZWFwX2dldF9k
cnZkYXRhKTsNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiAgLyoqDQo+ID4gPiA+ID4gPiAgICog
ZG1hX2hlYXBfZ2V0X25hbWUgLSBnZXQgaGVhcCBuYW1lDQo+ID4gPiA+ID4gPiBAQCAtMjE0LDYg
KzIxNSw3IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAq
aGVhcCkNCj4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+ID4gPiAgICAgICByZXR1cm4gaGVhcC0+bmFt
ZTsNCj4gPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gPiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9n
ZXRfbmFtZSk7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gIC8qKg0KPiA+ID4gPiA+ID4gICAq
IGRtYV9oZWFwX2FkZCAtIGFkZHMgYSBoZWFwIHRvIGRtYWJ1ZiBoZWFwcw0KPiA+ID4gPiA+ID4g
QEAgLTMwMyw2ICszMDUsNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25zdCBz
dHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiA+ID4gPiA+ID4gICAgICAg
a2ZyZWUoaGVhcCk7DQo+ID4gPiA+ID4gPiAgICAgICByZXR1cm4gZXJyX3JldDsNCj4gPiA+ID4g
PiA+ICB9DQo+ID4gPiA+ID4gPiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9hZGQpOw0KPiA+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+ICBzdGF0aWMgY2hhciAqZG1hX2hlYXBfZGV2bm9kZShjb25zdCBz
dHJ1Y3QgZGV2aWNlICpkZXYsIHVtb2RlX3QgKm1vZGUpDQo+ID4gPiA+ID4gPiAgew0KPiA+ID4g
PiA+ID4gLS0NCj4gPiA+ID4gPiA+IDIuNDMuMA0KPiA+ID4gPiA+ID4NCj4gPiA+DQo+ID4gPiBC
ZXN0LA0KPiA+ID4gU3VtaXQuDQo+DQo+DQo+DQo+IC0tDQo+IFRoYW5rcyBhbmQgcmVnYXJkcywN
Cj4NCj4gU3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkNCj4gU2VuaW9yIFRlY2ggTGVhZCAtIEFuZHJv
aWQsIFBsYXRmb3JtcyBhbmQgVmlydHVhbGlzYXRpb24NCj4gTGluYXJvLm9yZyDilIIgQXJtIFNv
bHV0aW9ucyBhdCBMaWdodCBTcGVlZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
