Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B4AAE6BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 18:32:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 707AF3F686
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 16:32:45 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lists.linaro.org (Postfix) with ESMTPS id 6C86C3F686
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 16:32:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=qUonVfZO;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.48 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72fffa03ac6so5243183a34.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 May 2025 09:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746635551; x=1747240351; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+qlQHRwkgL3c3/7UMifRdOJIYuZVejakUvQaBKdYYc=;
        b=qUonVfZOmjoko6YdThMnM/EHv9PsMwqIjNk/DZCjHHI+b3deWa9ZXeEysQlp3DOJ2n
         x7X2rvUWzxN1WssZCS5ZNJ/xA+RSBeKr+RwuGn37AQMypXRu/r+LG1pN1ZmGutE99p5p
         uBdqSHujtVDThBCu1Vcl+2IRJr5B+mWBxX5w6Bu9bVo82dJrb01KqIa2872uvYOE+0po
         pWMvRgaIDX5owBoZLrlVufTRMQLaNkzxA/zWBZlfIK+eTfOIy7cvcpzV8HR4+oodZPEJ
         xK4Jpp88H5EFtp+K1a4tGwEL0Axg6yelCe53nIFtaYAg2IeNxycmpw1Gy/rOS2/VG3MR
         Rd1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746635551; x=1747240351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l+qlQHRwkgL3c3/7UMifRdOJIYuZVejakUvQaBKdYYc=;
        b=XBDb++PIS/Ecen2ZV5g0/2cuN8N/PQmnO6eZYPxEznrT9mjIrX8hjQOVZYWWLPNC9P
         7BDjCsQP+TKVRsC4FEzjNg0tSyEIDKtLPXARenqFVlj/s6qZM8bxwwO3OQAWKBydpCqb
         72oVKVmnQ5K6q9OMF28lf/0UKxWOvK31OUZx/CPL596gKxpcEdV7sMVQh3R0WC84MC02
         FVAga9hNjbpWeqJ37nCpLhYiXmzxqxUhpAWLRHba87dssRrEL1G6bzmqUYJLcyOUY1vH
         UkwoDTqMcoGnIgeq9AeB77EVFo7kuv1VyNtOfNe3MJxhi0zQbmIgd9OTYZ41ITWkF62P
         kINg==
X-Forwarded-Encrypted: i=1; AJvYcCVsl0DH50pooLbsaEjHEyuBp1A6pwpW6vmHlJd7g97YuezjvkmLo5Md0XuGfP8zurx8gH6KB11Wq8Spssrx@lists.linaro.org
X-Gm-Message-State: AOJu0YwxEF7YM2bYj0DH4O+w3XnPtm9SFRjnYm1Vn7cSNxh5Us6P1Ofy
	pEPwxHPsQjll60Vh95YRfNBSqKgYzsYuQyP0NrxxIheIST2ngPQLivNdQ3wAGFyOqMeud3nTiRq
	WK0ClOQIItCLB5WR7FYDKNJF/P12l0Hk3rZO5Jq3EqUQEVhZpSQ1IKg==
X-Gm-Gg: ASbGnctV7C/vQXR+8xinBhBGs8EwQYH33N6dZstVQkNGfUmEla+TjsUmIyShJx2J4Hf
	0CX1lP8ymej3BwoYWpBfzJ5QxtJlQpPfN8dfHL6pRDqFrgtC4S67e0m8GPh4ORxNm8Qj6UK8pVJ
	gEOtEAPRMTEE/VOp8ofbRTg1k=
X-Google-Smtp-Source: AGHT+IFydqe8XP7ZbsEI4FJ7nHMo2qb0FBj+wx8QFnVlqVGZ0YgAt35WAhs9j3CQ76LLi08wMmQjhHHbpx9s0MvBOTg=
X-Received: by 2002:a05:6820:180a:b0:603:f191:a93c with SMTP id
 006d021491bc7-60828d3a917mr2866969eaf.6.1746635539868; Wed, 07 May 2025
 09:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-12-jens.wiklander@linaro.org> <4b2f7c31-c61b-45d8-b32e-16bb91c4289b@arm.com>
In-Reply-To: <4b2f7c31-c61b-45d8-b32e-16bb91c4289b@arm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 7 May 2025 18:32:08 +0200
X-Gm-Features: ATxdqUElU24AIG1nJsrzoZKKB0gEXwhwftpouBsM_UdwgzzPM34h3I_iZz1EmXw
Message-ID: <CAHUa44HEPF3w=b2O-4DcRUBgF4rJUUze8zy48_g_FCQ5Y34U6A@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C86C3F686
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.48:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[arm.com:email,linaro.org:email,linaro.org:dkim];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.210.48:from];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: VGLWUVM4FY4G52W7XOLR3GUE742HURXG
X-Message-ID-Hash: VGLWUVM4FY4G52W7XOLR3GUE742HURXG
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 11/14] tee: add tee_shm_alloc_cma_phys_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VGLWUVM4FY4G52W7XOLR3GUE742HURXG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgNToxMeKAr1BNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOg0KPg0KPiBPbiAwMi8wNS8yMDI1IDEwOjU5IGFtLCBK
ZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBBZGQgdGVlX3NobV9hbGxvY19jbWFfcGh5c19tZW0o
KSB0byBhbGxvY2F0ZSBhIHBoeXNpY2FsIG1lbW9yeSB1c2luZw0KPiA+IGZyb20gdGhlIGRlZmF1
bHQgQ01BIHBvb2wuIFRoZSBtZW1vcnkgaXMgcmVwcmVzZW50ZWQgYnkgYSB0ZWVfc2htIG9iamVj
dA0KPiA+IHVzaW5nIHRoZSBuZXcgZmxhZyBURUVfU0hNX0NNQV9CVUYgdG8gaWRlbnRpZnkgaXQg
YXMgcGh5c2ljYWwgbWVtb3J5DQo+ID4gZnJvbSBDTUEuDQo+DQo+IElmIGFuZCB3aGVuIGl0J3Mg
cG9zc2libGUgdG8gZHluYW1pY2FsbHkgZGVsZWdhdGUgYW55IG9sZCBrZXJuZWwgbWVtb3J5DQo+
IHRvIHRoZSBURUUsIGl0J3MgZmFyIGZyb20gY2xlYXIgd2h5IHRoYXQgc2hvdWxkIGludm9sdmUg
cG9raW5nIGFyb3VuZCBpbg0KPiBDTUEgaW50ZXJuYWxzLi4uDQo+DQo+ID4gU2lnbmVkLW9mZi1i
eTogSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gLS0tDQo+
ID4gICBkcml2ZXJzL3RlZS90ZWVfc2htLmMgICAgfCA1NSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tDQo+ID4gICBpbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmggfCAgNCAr
KysNCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RlZS90ZWVfc2htLmMgYi9kcml2ZXJz
L3RlZS90ZWVfc2htLmMNCj4gPiBpbmRleCBlMWVkNTJlZTBhMTYuLmZhYWEwYTg3YmIxOCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3RlZS90ZWVfc2htLmMNCj4gPiArKysgYi9kcml2ZXJzL3Rl
ZS90ZWVfc2htLmMNCj4gPiBAQCAtMyw4ICszLDExIEBADQo+ID4gICAgKiBDb3B5cmlnaHQgKGMp
IDIwMTUtMjAxNywgMjAxOS0yMDIxIExpbmFybyBMaW1pdGVkDQo+ID4gICAgKi8NCj4gPiAgICNp
bmNsdWRlIDxsaW51eC9hbm9uX2lub2Rlcy5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvY21hLmg+
DQo+ID4gICAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgv
ZG1hLWJ1Zi5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcC1vcHMuaD4NCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L2hpZ2htZW0uaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9pZHIuaD4NCj4g
PiAgICNpbmNsdWRlIDxsaW51eC9pby5oPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L21tLmg+DQo+
ID4gQEAgLTEzLDcgKzE2LDYgQEANCj4gPiAgICNpbmNsdWRlIDxsaW51eC90ZWVfY29yZS5oPg0K
PiA+ICAgI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC91
aW8uaD4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L2hpZ2htZW0uaD4NCj4gPiAgICNpbmNsdWRlICJ0
ZWVfcHJpdmF0ZS5oIg0KPiA+DQo+ID4gICBzdGF0aWMgdm9pZCBzaG1fcHV0X2tlcm5lbF9wYWdl
cyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCBzaXplX3QgcGFnZV9jb3VudCkNCj4gPiBAQCAtNDksNyAr
NTEsMTQgQEAgc3RhdGljIHZvaWQgdGVlX3NobV9yZWxlYXNlKHN0cnVjdCB0ZWVfZGV2aWNlICp0
ZWVkZXYsIHN0cnVjdCB0ZWVfc2htICpzaG0pDQo+ID4gICAgICAgc3RydWN0IHRlZV9zaG0gKnBh
cmVudF9zaG0gPSBOVUxMOw0KPiA+ICAgICAgIHZvaWQgKnAgPSBzaG07DQo+ID4NCj4gPiAtICAg
ICBpZiAoc2htLT5mbGFncyAmIFRFRV9TSE1fRE1BX0JVRikgew0KPiA+ICsgICAgIGlmIChzaG0t
PmZsYWdzICYgVEVFX1NITV9DTUFfQlVGKSB7DQo+ID4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19D
TUEpDQo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgcGFnZSAqcGFnZSA9IHBoeXNfdG9fcGFnZShz
aG0tPnBhZGRyKTsNCj4gPiArICAgICAgICAgICAgIHN0cnVjdCBjbWEgKmNtYSA9IGRldl9nZXRf
Y21hX2FyZWEoJnNobS0+Y3R4LT50ZWVkZXYtPmRldik7DQo+DQo+IElmIHlvdSB3YW50IGRtYV9j
b250aWd1b3VzX2RlZmF1bHRfYXJlYSBhcyB0aGUgY29tbWl0IG1lc3NhZ2UgaW1wbGllcywNCj4g
dXNlIGRtYV9jb250aWd1b3VzX2RlZmF1bHRfYXJlYS4gQXBwZWFyaW5nIHRvIHN1cHBvcnQgcGVy
LWRldmljZSBDTUENCj4gcG9vbHMgYnV0IHJlbHlpbmcgb24gdGhlIGRldmljZSBub3QgaGF2aW5n
IG9uZSBpcyBwcmV0dHkgeXVja3kuDQo+DQo+IEJ1dCBhZ2Fpbiwgd2h5PyBJZiB5b3Ugd2FudCBw
YWdlLWJhY2tlZCBETUEtYWJsZSBtZW1vcnksIHdpdGggYWxsIHRoZQ0KPiBvdGhlciBhc3N1bXB0
aW9ucyBiZWluZyBtYWRlIGhlcmUsIHlvdSBtYXkgYXMgd2VsbCBqdXN0IHJlbHkgb24NCj4gZG1h
X2FsbG9jX3BhZ2VzKERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpIGRvaW5nIHdoYXQgeW91IHdhbnQs
IHdoaWxlIGFsc28NCj4gYmVpbmcgcG90ZW50aWFsbHkgbW9yZSBmbGV4aWJsZSBmb3IgIUNNQSBh
bmQgbm9uLWludmFzaXZlLiBPciBhdCB0aGUNCj4gdmVyeSBsZWFzdCwgY291bGQgdGhlIFRFRSBk
ZWxlZ2F0aW9uIG5vdCBiZSBjb21wb3NlZCBvbiB0b3Agb2YgdGhlDQo+IGV4aXN0aW5nIENNQSBo
ZWFwIGFsbG9jYXRvcj8NCg0KVGhhbmtzIGZvciBzdWdnZXN0aW5nIGRtYV9hbGxvY19wYWdlcygp
LiBJJ2xsIHVzZSB0aGF0IGluIHRoZSBuZXh0DQp2ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXQuDQoN
CkNoZWVycywNCkplbnMNCg0KPg0KPiBUaGFua3MsDQo+IFJvYmluLg0KPg0KPiA+ICsNCj4gPiAr
ICAgICAgICAgICAgIGNtYV9yZWxlYXNlKGNtYSwgcGFnZSwgc2htLT5zaXplIC8gUEFHRV9TSVpF
KTsNCj4gPiArI2VuZGlmDQo+ID4gKyAgICAgfSBlbHNlIGlmIChzaG0tPmZsYWdzICYgVEVFX1NI
TV9ETUFfQlVGKSB7DQo+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgdGVlX3NobV9kbWFidWZfcmVm
ICpyZWY7DQo+ID4NCj4gPiAgICAgICAgICAgICAgIHJlZiA9IGNvbnRhaW5lcl9vZihzaG0sIHN0
cnVjdCB0ZWVfc2htX2RtYWJ1Zl9yZWYsIHNobSk7DQo+ID4gQEAgLTMwNiw2ICszMTUsNDggQEAg
c3RydWN0IHRlZV9zaG0gKnRlZV9zaG1fYWxsb2NfcHJpdl9idWYoc3RydWN0IHRlZV9jb250ZXh0
ICpjdHgsIHNpemVfdCBzaXplKQ0KPiA+ICAgfQ0KPiA+ICAgRVhQT1JUX1NZTUJPTF9HUEwodGVl
X3NobV9hbGxvY19wcml2X2J1Zik7DQo+ID4NCj4gPiArc3RydWN0IHRlZV9zaG0gKnRlZV9zaG1f
YWxsb2NfY21hX3BoeXNfbWVtKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LA0KPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHBhZ2VfY291bnQsIHNpemVf
dCBhbGlnbikNCj4gPiArew0KPiA+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfQ01BKQ0KPiA+ICsg
ICAgIHN0cnVjdCB0ZWVfZGV2aWNlICp0ZWVkZXYgPSBjdHgtPnRlZWRldjsNCj4gPiArICAgICBz
dHJ1Y3QgY21hICpjbWEgPSBkZXZfZ2V0X2NtYV9hcmVhKCZ0ZWVkZXYtPmRldik7DQo+ID4gKyAg
ICAgc3RydWN0IHRlZV9zaG0gKnNobTsNCj4gPiArICAgICBzdHJ1Y3QgcGFnZSAqcGFnZTsNCj4g
PiArDQo+ID4gKyAgICAgaWYgKCF0ZWVfZGV2aWNlX2dldCh0ZWVkZXYpKQ0KPiA+ICsgICAgICAg
ICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gKw0KPiA+ICsgICAgIHBhZ2UgPSBj
bWFfYWxsb2MoY21hLCBwYWdlX2NvdW50LCBhbGlnbiwgdHJ1ZS8qbm9fd2FybiovKTsNCj4gPiAr
ICAgICBpZiAoIXBhZ2UpDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9wdXRfdGVlZGV2Ow0K
PiA+ICsNCj4gPiArICAgICBzaG0gPSBremFsbG9jKHNpemVvZigqc2htKSwgR0ZQX0tFUk5FTCk7
DQo+ID4gKyAgICAgaWYgKCFzaG0pDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9jbWFfY3Jl
bGVhc2U7DQo+ID4gKw0KPiA+ICsgICAgIHJlZmNvdW50X3NldCgmc2htLT5yZWZjb3VudCwgMSk7
DQo+ID4gKyAgICAgc2htLT5jdHggPSBjdHg7DQo+ID4gKyAgICAgc2htLT5wYWRkciA9IHBhZ2Vf
dG9fcGh5cyhwYWdlKTsNCj4gPiArICAgICBzaG0tPnNpemUgPSBwYWdlX2NvdW50ICogUEFHRV9T
SVpFOw0KPiA+ICsgICAgIHNobS0+ZmxhZ3MgPSBURUVfU0hNX0NNQV9CVUY7DQo+ID4gKw0KPiA+
ICsgICAgIHRlZWRldl9jdHhfZ2V0KGN0eCk7DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiBzaG07
DQo+ID4gKw0KPiA+ICtlcnJfY21hX2NyZWxlYXNlOg0KPiA+ICsgICAgIGNtYV9yZWxlYXNlKGNt
YSwgcGFnZSwgcGFnZV9jb3VudCk7DQo+ID4gK2Vycl9wdXRfdGVlZGV2Og0KPiA+ICsgICAgIHRl
ZV9kZXZpY2VfcHV0KHRlZWRldik7DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOw0KPiA+ICsjZWxzZQ0KPiA+ICsgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0K
PiA+ICsjZW5kaWYNCj4gPiArfQ0KPiA+ICtFWFBPUlRfU1lNQk9MX0dQTCh0ZWVfc2htX2FsbG9j
X2NtYV9waHlzX21lbSk7DQo+ID4gKw0KPiA+ICAgaW50IHRlZV9keW5fc2htX2FsbG9jX2hlbHBl
cihzdHJ1Y3QgdGVlX3NobSAqc2htLCBzaXplX3Qgc2l6ZSwgc2l6ZV90IGFsaWduLA0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGludCAoKnNobV9yZWdpc3Rlcikoc3RydWN0IHRlZV9j
b250ZXh0ICpjdHgsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgdGVlX3NobSAqc2htLA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xp
bnV4L3RlZV9jb3JlLmggYi9pbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmgNCj4gPiBpbmRleCAwMmMw
N2Y2NjEzNDkuLjNhNGUxYjAwZmNjNyAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Rl
ZV9jb3JlLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L3RlZV9jb3JlLmgNCj4gPiBAQCAtMjks
NiArMjksNyBAQA0KPiA+ICAgI2RlZmluZSBURUVfU0hNX1BPT0wgICAgICAgICAgICAgICAgQklU
KDIpICAvKiBNZW1vcnkgYWxsb2NhdGVkIGZyb20gcG9vbCAqLw0KPiA+ICAgI2RlZmluZSBURUVf
U0hNX1BSSVYgICAgICAgICAgICAgICAgQklUKDMpICAvKiBNZW1vcnkgcHJpdmF0ZSB0byBURUUg
ZHJpdmVyICovDQo+ID4gICAjZGVmaW5lIFRFRV9TSE1fRE1BX0JVRiAgICAgICAgICAgICBCSVQo
NCkgIC8qIE1lbW9yeSB3aXRoIGRtYS1idWYgaGFuZGxlICovDQo+ID4gKyNkZWZpbmUgVEVFX1NI
TV9DTUFfQlVGICAgICAgICAgICAgICBCSVQoNSkgIC8qIENNQSBhbGxvY2F0ZWQgbWVtb3J5ICov
DQo+ID4NCj4gPiAgICNkZWZpbmUgVEVFX0RFVklDRV9GTEFHX1JFR0lTVEVSRUQgIDB4MQ0KPiA+
ICAgI2RlZmluZSBURUVfTUFYX0RFVl9OQU1FX0xFTiAgICAgICAgICAgICAgICAzMg0KPiA+IEBA
IC0zMTAsNiArMzExLDkgQEAgdm9pZCAqdGVlX2dldF9kcnZkYXRhKHN0cnVjdCB0ZWVfZGV2aWNl
ICp0ZWVkZXYpOw0KPiA+ICAgICovDQo+ID4gICBzdHJ1Y3QgdGVlX3NobSAqdGVlX3NobV9hbGxv
Y19wcml2X2J1ZihzdHJ1Y3QgdGVlX2NvbnRleHQgKmN0eCwgc2l6ZV90IHNpemUpOw0KPiA+DQo+
ID4gK3N0cnVjdCB0ZWVfc2htICp0ZWVfc2htX2FsbG9jX2NtYV9waHlzX21lbShzdHJ1Y3QgdGVl
X2NvbnRleHQgKmN0eCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNpemVfdCBwYWdlX2NvdW50LCBzaXplX3QgYWxpZ24pOw0KPiA+ICsNCj4gPiAgIGludCB0
ZWVfZHluX3NobV9hbGxvY19oZWxwZXIoc3RydWN0IHRlZV9zaG0gKnNobSwgc2l6ZV90IHNpemUs
IHNpemVfdCBhbGlnbiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgKCpzaG1f
cmVnaXN0ZXIpKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LA0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHRlZV9zaG0gKnNobSwNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
