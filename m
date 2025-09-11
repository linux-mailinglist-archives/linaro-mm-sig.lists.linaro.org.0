Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 361CAB529AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 09:16:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2924945D36
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 07:16:01 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id D10C744422
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 07:15:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=hLFOCSJi;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.46 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b046fc9f359so64184566b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 00:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757574951; x=1758179751; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GP9NntJ30KfEYObDqnhrL+C6H0K6PogP4x/qLVkNDh8=;
        b=hLFOCSJiyOK79jWOPsUmp/BJWnZw6YY6gv241bE8Qk4Nm/ptKs+9xERRbHFw36hMaL
         ahKeDcktmT9T+QyikObLeA8ZJ+sS5dI8209UuAhD6/OOfJov0jrSEckFcTll1SN4dNjZ
         E5eCBhqfpZSISny7bpSUxUJZbjHwIaxsTG1wScaDXXNYKnkA10AiZ34dfdgANEMLnAJ2
         JDSSphrJhT0fwCs6NlPxP5VkmpR8y4tzV2GwD528hOCKbmYu6ZKDmn8vqyt+AlPnncMM
         m4ai9HwQK+yuFd/y50pxsAQXQ4OSsLDg9ulxJfSgT+n1PG3uMdU4iT6FCRPidwmm9gk/
         OyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757574951; x=1758179751;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GP9NntJ30KfEYObDqnhrL+C6H0K6PogP4x/qLVkNDh8=;
        b=L6sy8sLs3K37DJ77mMj8hU9q0iZhva1enx07o1HMC8z4y4llX58bPOLp3MzYFA6aBA
         RFyqSXgYlMf5sUC1ysVwvzf/BGe/ZKl6pUwGR/eUMu+MbtCN7uSsGpP3uo9Vb1ooiDfn
         6dG/+IbnsXqc4VrnBO1vArcQMkj6xi/iTjFgZWQEfyrQjoq8dOmP5EeKmBDMIH6L8oFS
         lQHpxNJgfRT2pXxHqOrI7VnSu2BsufGvSsi5ASwlmqu8kgsmVaZA5ng3OSZs+IQZoRPc
         GrkZKBPlO46k9uIkCYKFTSBBpwF994tII8XoRRgu9l0Qw2f/6WcAq+hrtBnUBMLyZHZB
         UpXw==
X-Forwarded-Encrypted: i=1; AJvYcCVdFlWAq659jPyrwAesQmsY5PpO+2M3hQreQl+bK6+frOOOdBBcCZ8FdUu9ha/zG/2KY06+h8hpqnq7qHdg@lists.linaro.org
X-Gm-Message-State: AOJu0YwxOEaVvkmpCaO9lDiGKYZju6bq0+4cA8ijziDbC0jvZC3Wkqo5
	DxBCUYrNDaGQrDIcwjQ2CNRguNQEQ3Bg6fmzXAwXTazIvAB+BxZfM5vgn0oYa4k0QIUMdvw8wtD
	ifRdgE+wWJjwrSP2uMCbIl8vMP57q9bRyf6bZxB0ORDLH
X-Gm-Gg: ASbGncubJSTVnuqNumeKeCLc5x++NnvnHuq9ihkhUFzK457ps4/mFK45BSPuNW7P8It
	6eBHK+oA7lxqHSe+dGwAQRmVq8Vemzd8v2rxWpeAqLb/WzuxsUVD9tNEZFUyKDjInpQu1yyU3+K
	teEwG6yoVsqKdKLx2bc9DXroZuysVY5X9dd31Cum6acj9YhNP3vqrFB0bFJYU6pGFEj5uE4TuG8
	t+Vwx8AMRi316Pc00LPm1XPCBCnlip5l3HIDPs=
X-Google-Smtp-Source: AGHT+IHy2Mv7dBIklAlXQ3z1llA5qfh3QOZdDcp9k/xtxjZUz/DCzy7vfzzhI0hlOYW8883NeAHTA7AVAmb3DRGTR8w=
X-Received: by 2002:a17:906:730e:b0:b04:6546:345a with SMTP id
 a640c23a62f3a-b04b16c733fmr1789866766b.52.1757574950692; Thu, 11 Sep 2025
 00:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
 <20250813060339.2977604-3-jens.wiklander@linaro.org> <aJ1-YpgvGt4_6CFU@sumit-X1>
 <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com>
In-Reply-To: <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 11 Sep 2025 12:45:39 +0530
X-Gm-Features: Ac12FXy7pNPcf0b_CAub_P3Nk83sbsucFa_59lr_vcagvKGZnRZhFr4eESPBY3M
Message-ID: <CAO_48GEqkf_Jm8kSTPEDZkZy-YmT56Zs1Jx9zCvzETPsCzrkEg@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D10C744422
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: KQ5HEC6QXDWMCLLMXSMXHQXZZWN6JZUI
X-Message-ID-Hash: KQ5HEC6QXDWMCLLMXSMXHQXZZWN6JZUI
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQ5HEC6QXDWMCLLMXSMXHQXZZWN6JZUI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSmVucywNCg0KT24gRnJpLCAxNSBBdWcgMjAyNSBhdCAwNTowMCwgVC5KLiBNZXJjaWVy
IDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFdlZCwgQXVnIDEzLCAyMDI1
IGF0IDExOjEz4oCvUE0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BrZXJuZWwub3JnPiB3cm90ZToN
Cj4gPg0KPiA+IE9uIFdlZCwgQXVnIDEzLCAyMDI1IGF0IDA4OjAyOjUxQU0gKzAyMDAsIEplbnMg
V2lrbGFuZGVyIHdyb3RlOg0KPiA+ID4gRXhwb3J0IHRoZSBkbWEtYnVmIGhlYXAgZnVuY3Rpb25z
IHRvIGFsbG93IHRoZW0gdG8gYmUgdXNlZCBieSB0aGUgT1AtVEVFDQo+ID4gPiBkcml2ZXIuIFRo
ZSBPUC1URUUgZHJpdmVyIHdhbnRzIHRvIHJlZ2lzdGVyIGFuZCBtYW5hZ2Ugc3BlY2lmaWMgc2Vj
dXJlDQo+ID4gPiBETUEgaGVhcHMgd2l0aCBpdC4NClRoYW5rIHlvdSBmb3IgdGhlIHNlcmllcy4N
Cg0KQ291bGQgeW91IHBsZWFzZSB1c2UgRVhQT1JUX1NZTUJPTF9HUExfTlMgaW5zdGVhZCBvZiBF
WFBPUlRfU1lNQk9MIGZvciB0aGVzZT8NCg0KV2l0aCB0aGF0IGNoYW5nZSwgcGxlYXNlIGZlZWwg
ZnJlZSB0byB1c2UgbXkNCkFja2VkLWJ5OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5h
cm8ub3JnPg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5z
Lndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IFN1bWl0IEdhcmcgPHN1
bWl0LmdhcmdAb3NzLnF1YWxjb21tLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtaGVhcC5jIHwgMyArKysNCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspDQo+ID4gPg0KPiA+DQo+ID4gQ2FuIHdlIGdldCBhbiBhY2sgZnJvbSBETUFidWYgbWFp
bnRhaW5lcnMgaGVyZT8gV2l0aCB0aGF0IHdlIHNob3VsZCBiZQ0KPiA+IGFibGUgdG8gcXVldWUg
dGhpcyBwYXRjaC1zZXQgZm9yIGxpbnV4LW5leHQgdGFyZ2V0dGluZyB0aGUgNi4xOCBtZXJnZQ0K
PiA+IHdpbmRvdy4NCj4gPg0KPiA+IC1TdW1pdA0KPg0KPiBSZXZpZXdlZC1ieTogVC5KLiBNZXJj
aWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCj4NCj4gU29ycnkgSSBoYXZlbid0IGJlZW4gYWJs
ZSB0byBwYXJ0aWNpcGF0ZSBtdWNoIHVwc3RyZWFtIGxhdGVseS4NCj4gPg0KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1o
ZWFwLmMNCj4gPiA+IGluZGV4IDNjYmU4N2Q0YTQ2NC4uY2RkZGYwZTI0ZGNlIDEwMDY0NA0KPiA+
ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gPiBAQCAtMjAyLDYgKzIwMiw3IEBAIHZvaWQgKmRtYV9o
ZWFwX2dldF9kcnZkYXRhKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiA+ICB7DQo+ID4gPiAg
ICAgICByZXR1cm4gaGVhcC0+cHJpdjsNCj4gPiA+ICB9DQo+ID4gPiArRVhQT1JUX1NZTUJPTChk
bWFfaGVhcF9nZXRfZHJ2ZGF0YSk7DQo+ID4gPg0KPiA+ID4gIC8qKg0KPiA+ID4gICAqIGRtYV9o
ZWFwX2dldF9uYW1lIC0gZ2V0IGhlYXAgbmFtZQ0KPiA+ID4gQEAgLTIxNCw2ICsyMTUsNyBAQCBj
b25zdCBjaGFyICpkbWFfaGVhcF9nZXRfbmFtZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApDQo+ID4g
PiAgew0KPiA+ID4gICAgICAgcmV0dXJuIGhlYXAtPm5hbWU7DQo+ID4gPiAgfQ0KPiA+ID4gK0VY
UE9SVF9TWU1CT0woZG1hX2hlYXBfZ2V0X25hbWUpOw0KPiA+ID4NCj4gPiA+ICAvKioNCj4gPiA+
ICAgKiBkbWFfaGVhcF9hZGQgLSBhZGRzIGEgaGVhcCB0byBkbWFidWYgaGVhcHMNCj4gPiA+IEBA
IC0zMDMsNiArMzA1LDcgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3Ry
dWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gPiA+ICAgICAgIGtmcmVlKGhl
YXApOw0KPiA+ID4gICAgICAgcmV0dXJuIGVycl9yZXQ7DQo+ID4gPiAgfQ0KPiA+ID4gK0VYUE9S
VF9TWU1CT0woZG1hX2hlYXBfYWRkKTsNCj4gPiA+DQo+ID4gPiAgc3RhdGljIGNoYXIgKmRtYV9o
ZWFwX2Rldm5vZGUoY29uc3Qgc3RydWN0IGRldmljZSAqZGV2LCB1bW9kZV90ICptb2RlKQ0KPiA+
ID4gIHsNCj4gPiA+IC0tDQo+ID4gPiAyLjQzLjANCj4gPiA+DQoNCkJlc3QsDQpTdW1pdC4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
