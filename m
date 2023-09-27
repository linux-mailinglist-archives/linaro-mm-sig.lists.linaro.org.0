Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BBA7CF766
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:49:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27DA940C4A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:49:53 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by lists.linaro.org (Postfix) with ESMTPS id 43AE43F2F4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 13:46:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=LSJRVtgR;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.167.50 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-503056c8195so18516904e87.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 06:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695822378; x=1696427178; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xjMt+usahKyEXhyMN9rIKh7XECu5zDX2FLeHZvS3f6M=;
        b=LSJRVtgR2EpPtufCNryPIqTwM7hrpqo5/rfaxHLstDk6ZkN3+RLh0uejeyL3sLqy7w
         embRHbkm6kqW2ILiGUyIwiuN10SouGwtyA1wRWy4BI3jJQ7lAsHWNeEBypgX0PEALHoE
         dhUsLzGWoqaLP1qd9ytwhVu/VAp9BzRLWFmEck8uhVWLrS6NtivoYBzRAHaqhDheUdwV
         K281nECcPeZjBJUeVzBVQJpFOgPzRoFLO62eJB3sCAyzWUH4B9V18TJ7ljm+VjWKNFJz
         ESwy/Yg+HkyE0TFXF47HYAEEr8Av4A1XVC2lp0ytNn9qiNjUfDhtioAlnw5+YczCo9Yb
         WLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695822378; x=1696427178;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xjMt+usahKyEXhyMN9rIKh7XECu5zDX2FLeHZvS3f6M=;
        b=TXUbjyP3YE0EKBoWdqT6yVVK4u5rkRQ2XjNb42fC9cFQ4kA2aZc44mWhmDcuGJNVL+
         O2B3Li/PR68E9ABElBlQWkLg9hE1poeVz+d5evFOk/MTQ4XnZ4K41gCVG7lkO1xbdsQv
         T14jHOQ8wIsN9WuCbTkzQPiMjdgEH4NNZ8JZsovodPIkmuDug4fiuVVZO5rE+V+EpMlP
         vVCLi+fmnp9oFN//ZjaxrGNivpMZ2Fi+P2TFWpIju8x35lQNxssDZFl18xGrpZcvSn+j
         LaE3zsu6eFUtpsRGzAjddOe+si4vamoDiGCHBZ9TThsjS72EcPM47HYvNH7EQpgbdvvO
         S/xw==
X-Gm-Message-State: AOJu0YwAzSut7m/Ur2eI2b7OtgiJMACoSljFNpBZ3IytYW4VDeDAyD7C
	W69dklQe0wqnkdHrFzZjno55GCWP
X-Google-Smtp-Source: AGHT+IGpPGTE4fiqS7H6X5cE5gxZAu7fbfw/lkC2Rf9hkEdABrFyFW6E9N1aUp/8UrNrtYA3KSkgEg==
X-Received: by 2002:ac2:58e4:0:b0:504:3424:215c with SMTP id v4-20020ac258e4000000b005043424215cmr1658146lfo.51.1695822377525;
        Wed, 27 Sep 2023 06:46:17 -0700 (PDT)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id f21-20020a19ae15000000b00500d1f67be9sm2664810lfc.43.2023.09.27.06.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 06:46:16 -0700 (PDT)
Date: Wed, 27 Sep 2023 15:46:14 +0200
From: Joakim Bech <joakim.bech@linaro.org>
To: Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>
Message-ID: <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
 <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com>
 <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.50:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,collabora.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,mediatek.com,arm.com,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 43AE43F2F4
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y73HJ7KYPZUAP75FLPV5ONJGMPA5Y2MY
X-Message-ID-Hash: Y73HJ7KYPZUAP75FLPV5ONJGMPA5Y2MY
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:26 +0000
CC: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercie
 r@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y73HJ7KYPZUAP75FLPV5ONJGMPA5Y2MY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjUsIDIwMjMgYXQgMTI6NDk6NTBQTSArMDAwMCwgWW9uZyBXdSAo5ZC05YuH
KSB3cm90ZToNCj4gT24gVHVlLCAyMDIzLTA5LTEyIGF0IDExOjMyICswMjAwLCBBbmdlbG9HaW9h
Y2NoaW5vIERlbCBSZWdubyB3cm90ZToNCj4gPiBJbCAxMi8wOS8yMyAwODoxNywgWW9uZyBXdSAo
5ZC05YuHKSBoYSBzY3JpdHRvOg0KPiA+ID4gT24gTW9uLCAyMDIzLTA5LTExIGF0IDExOjI5ICsw
MjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubw0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+IEls
IDExLzA5LzIzIDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+ID4gPiA+ID4gVGhlIFRFRSBw
cm9iZSBsYXRlciB0aGFuIGRtYS1idWYgaGVhcCwgYW5kIFBST0JFX0RFREVSIGRvZXNuJ3QNCj4g
PiA+ID4gPiB3b3JrDQo+ID4gPiA+ID4gaGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIHBsYXRmb3Jt
IGRyaXZlciwgdGhlcmVmb3JlIGluaXRpYWxpc2UNCj4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiBU
RUUNCj4gPiA+ID4gPiBjb250ZXh0L3Nlc3Npb24gd2hpbGUgd2UgYWxsb2NhdGUgdGhlIGZpcnN0
IHNlY3VyZSBidWZmZXIuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWW9u
ZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gICAg
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIHwgNjENCj4gPiA+ID4gPiAr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDYx
IGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2Rt
YS0NCj4gPiA+ID4gPiBidWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4gPiA+ID4gPiBpbmRl
eCBiYmYxYzhkY2UyM2UuLmUzZGEzM2EzZDA4MyAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4gPiA+ID4gPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMNCj4gPiA+ID4gPiBAQCAtMTAsNiAr
MTAsMTIgQEANCj4gPiA+ID4gPiAgICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ID4gPiA+ID4g
ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiA+ID4gPiA+ICAgICNpbmNsdWRlIDxsaW51
eC9zbGFiLmg+DQo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC90ZWVfZHJ2Lmg+DQo+ID4gPiA+
ID4gKyNpbmNsdWRlIDxsaW51eC91dWlkLmg+DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsjZGVm
aW5lIFRaX1RBX01FTV9VVUlECQkiNDQ3NzU4OGEtODQ3Ni0xMWUyLWFkMTUtDQo+ID4gPiA+ID4g
ZTQxZjEzOTBkNjc2Ig0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gDQo+ID4gPiA+IElzIHRoaXMgVVVJ
RCB0aGUgc2FtZSBmb3IgYWxsIFNvQ3MgYW5kIGFsbCBUWiB2ZXJzaW9ucz8NCj4gPiA+IA0KPiA+
ID4gWWVzLiBJdCBpcyB0aGUgc2FtZSBmb3IgYWxsIFNvQ3MgYW5kIGFsbCBUWiB2ZXJzaW9ucyBj
dXJyZW50bHkuDQo+ID4gPiANCj4gPiANCj4gPiBUaGF0J3MgZ29vZCBuZXdzIQ0KPiA+IA0KPiA+
IElzIHRoaXMgVVVJRCB1c2VkIGluIGFueSB1c2Vyc3BhY2UgY29tcG9uZW50PyAoZXhhbXBsZTog
QW5kcm9pZA0KPiA+IEhBTHM/KQ0KPiANCj4gTm8uIFVzZXJzcGFjZSBuZXZlciB1c2UgaXQuIElm
IHVzZXJzcGFjZSB3b3VsZCBsaWtlIHRvIGFsbG9jYXRlIHRoaXMNCj4gc2VjdXJlIGJ1ZmZlciwg
aXQgY2FuIGFjaGlldmUgdGhyb3VnaCB0aGUgZXhpc3RpbmcgZG1hYnVmIElPQ1RMIHZpYQ0KPiAv
ZGV2L2RtYV9oZWFwL210a19zdnAgbm9kZS4NCj4gDQpJbiBnZW5lcmFsIEkgdGhpbmsgYXMgbWVu
dGlvbmVkIGVsc2V3aGVyZSBpbiBjb21tZW50cywgdGhhdCB0aGVyZSBpc24ndA0KdGhhdCBtdWNo
IGhlcmUgdGhhdCBzZWVtcyB0byBiZSB1bmlxdWUgZm9yIE1lZGlhVGVrIGluIHRoaXMgcGF0Y2gN
CnNlcmllcywgc28gSSB0aGluayBpdCB3b3J0aCB0byBzZWUgd2hldGhlciB0aGlzIHdob2xlIHBh
dGNoIHNldCBjYW4gYmUNCm1hZGUgbW9yZSBnZW5lcmljLiBIYXZpbmcgc2FpZCB0aGF0LCB0aGUg
VVVJRCBpcyBhbHdheXMgdW5pcXVlIGZvciBhDQpjZXJ0YWluIFRydXN0ZWQgQXBwbGljYXRpb24u
IFNvLCBpdCdzIG5vdCBlbnRpcmVseSB0cnVlIHNheWluZyB0aGF0IHRoZQ0KVVVJRCBpcyB0aGUg
c2FtZSBmb3IgYWxsIFNvQ3MgYW5kIGFsbCBUcnVzdFpvbmUgdmVyc2lvbnMuIEl0IG1pZ2h0IGJl
DQp0cnVlIGZvciBhIGZhbWlseSBvZiBNZWRpYVRlayBkZXZpY2VzIGFuZCB0aGUgVEVFIGluIHVz
ZSwgYnV0IG5vdA0KZ2VuZXJpY2FsbHkuDQoNClNvLCBpZiB3ZSBuZWVkIHRvIGRpZmZlcmVudGlh
dGUgYmV0d2VlbiBkaWZmZXJlbnQgVEEgaW1wbGVtZW50YXRpb25zLA0KdGhlbiB3ZSBuZWVkIGRp
ZmZlcmVudCBVVUlEcy4gSWYgaXQgd291bGQgYmUgcG9zc2libGUgdG8gbWFrZSB0aGlzIHBhdGNo
DQpzZXQgZ2VuZXJpYywgdGhlbiBpdCBzb3VuZHMgbGlrZSBhIHNpbmdsZSBVVUlEIHdvdWxkIGJl
IHN1ZmZpY2llbnQsIGJ1dA0KdGhhdCB3b3VsZCBpbXBseSB0aGF0IGFsbCBUQSdzIHN1cHBvcnRp
bmcgc3VjaCBhIGdlbmVyaWMgVVVJRCB3b3VsZCBiZQ0KaW1wbGVtZW50ZWQgdGhlIHNhbWUgZnJv
bSBhbiBBUEkgcG9pbnQgb2Ygdmlldy4gV2hpY2ggYWxzbyBtZWFucyB0aGF0DQpmb3IgZXhhbXBs
ZSBUcnVzdGVkIEFwcGxpY2F0aW9uIGZ1bmN0aW9uIElEJ3MgbmVlZHMgdG8gYmUgdGhlIHNhbWUg
ZXRjLg0KTm90IGltcG9zc2libGUgdG8gYWNoaWV2ZSwgYnV0IHN0aWxsIG5vdCBlYXN5IChkaWZm
ZXJlbnQgVEVFIGZvbGxvd3MNCmRpZmZlcmVudCBzcGVjaWZpY2F0aW9ucykgYW5kIGl0J3Mgbm90
IHR5cGljYWxseSBzb21ldGhpbmcgd2UndmUgZG9uZSBpbg0KdGhlIHBhc3QuDQoNClVuZm9ydHVu
YXRlbHkgdGhlcmUgaXMgbm8gc3RhbmRhcmRpemVkIGRhdGFiYXNlIG9mIFRBJ3MgZGVzY3JpYmlu
ZyB3aGF0DQp0aGV5IGltcGxlbWVudCBhbmQgc3VwcG9ydC4NCg0KQXMgYW4gYWx0ZXJuYXRpdmUs
IHdlIGNvdWxkIGltcGxlbWVudCBhIHF1ZXJ5IGNhbGwgaW4gdGhlIFRFRSBhbnN3ZXJpbmcsDQoi
V2hhdCBVVUlEIGRvZXMgeW91ciBUQSBoYXZlIHRoYXQgaW1wbGVtZW50cyBzZWN1cmUgdW5tYXBw
ZWQgaGVhcD8iLg0KSS5lLiwgc29tZXRoaW5nIHRoYXQgcmVtaW5kcyBvZiBhIGxvb2t1cCB0YWJs
ZS4gVGhlbiB3ZSB3b3VsZG4ndCBoYXZlIHRvDQpjYXJyeSB0aGlzIGluIFVBUEksIERUIG9yIGFu
eXdoZXJlIGVsc2UuDQoNCi0tIA0KLy8gUmVnYXJkcw0KSm9ha2ltDQoNCj4gDQo+ID4gSWYgaXQg
aXMgKGFuZCBJIHNvbWVob3cgZXhwZWN0IHRoYXQgaXQgaXMpLCB0aGVuIHRoaXMgZGVmaW5pdGlv
bg0KPiA+IHNob3VsZCBnbw0KPiA+IHRvIGEgVUFQSSBoZWFkZXIsIGFzIHN1Z2dlc3RlZCBieSBD
aHJpc3RpYW4uDQo+ID4gDQo+ID4gQ2hlZXJzIQ0KPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gVGhh
bmtzLA0KPiA+ID4gPiBBbmdlbG8NCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiA+ICsjZGVm
aW5lIE1US19URUVfUEFSQU1fTlVNCQk0DQo+ID4gPiA+ID4gICAgDQo+ID4gPiA+ID4gICAgLyoN
Cj4gPiA+ID4gPiAgICAgKiBNZWRpYVRlayBzZWN1cmUgKGNodW5rKSBtZW1vcnkgdHlwZQ0KPiA+
ID4gPiA+IEBAIC0yOCwxNyArMzQsNzIgQEAgc3RydWN0IG10a19zZWN1cmVfaGVhcF9idWZmZXIg
ew0KPiA+ID4gPiA+ICAgIHN0cnVjdCBtdGtfc2VjdXJlX2hlYXAgew0KPiA+ID4gPiA+ICAgIAlj
b25zdCBjaGFyCQkqbmFtZTsNCj4gPiA+ID4gPiAgICAJY29uc3QgZW51bSBrcmVlX21lbV90eXBl
IG1lbV90eXBlOw0KPiA+ID4gPiA+ICsJdTMyCQkJIG1lbV9zZXNzaW9uOw0KPiA+ID4gPiA+ICsJ
c3RydWN0IHRlZV9jb250ZXh0CSp0ZWVfY3R4Ow0KPiA+ID4gPiA+ICAgIH07DQo+ID4gPiA+ID4g
ICAgDQo+ID4gPiA+ID4gK3N0YXRpYyBpbnQgbXRrX29wdGVlX2N0eF9tYXRjaChzdHJ1Y3QgdGVl
X2lvY3RsX3ZlcnNpb25fZGF0YQ0KPiA+ID4gPiA+ICp2ZXIsDQo+ID4gPiA+ID4gY29uc3Qgdm9p
ZCAqZGF0YSkNCj4gPiA+ID4gPiArew0KPiA+ID4gPiA+ICsJcmV0dXJuIHZlci0+aW1wbF9pZCA9
PSBURUVfSU1QTF9JRF9PUFRFRTsNCj4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiArc3RhdGljIGludCBtdGtfa3JlZV9zZWN1cmVfc2Vzc2lvbl9pbml0KHN0cnVjdCBtdGtfc2Vj
dXJlX2hlYXANCj4gPiA+ID4gPiAqc2VjX2hlYXApDQo+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiAr
CXN0cnVjdCB0ZWVfcGFyYW0gdF9wYXJhbVtNVEtfVEVFX1BBUkFNX05VTV0gPSB7MH07DQo+ID4g
PiA+ID4gKwlzdHJ1Y3QgdGVlX2lvY3RsX29wZW5fc2Vzc2lvbl9hcmcgYXJnID0gezB9Ow0KPiA+
ID4gPiA+ICsJdXVpZF90IHRhX21lbV91dWlkOw0KPiA+ID4gPiA+ICsJaW50IHJldDsNCj4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gKwlzZWNfaGVhcC0+dGVlX2N0eCA9IHRlZV9jbGllbnRfb3Blbl9j
b250ZXh0KE5VTEwsDQo+ID4gPiA+ID4gbXRrX29wdGVlX2N0eF9tYXRjaCwNCj4gPiA+ID4gPiAr
CQkJCQkJICAgIE5VTEwsDQo+ID4gPiA+ID4gTlVMTCk7DQo+ID4gPiA+ID4gKwlpZiAoSVNfRVJS
KHNlY19oZWFwLT50ZWVfY3R4KSkgew0KPiA+ID4gPiA+ICsJCXByX2VycigiJXM6IG9wZW4gY29u
dGV4dCBmYWlsZWQsIHJldD0lbGRcbiIsDQo+ID4gPiA+ID4gc2VjX2hlYXAtDQo+ID4gPiA+ID4g
PiBuYW1lLA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICsJCSAgICAgICBQVFJfRVJSKHNlY19oZWFw
LT50ZWVfY3R4KSk7DQo+ID4gPiA+ID4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ID4gPiA+ID4gKwl9
DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJYXJnLm51bV9wYXJhbXMgPSBNVEtfVEVFX1BBUkFN
X05VTTsNCj4gPiA+ID4gPiArCWFyZy5jbG50X2xvZ2luID0gVEVFX0lPQ1RMX0xPR0lOX1BVQkxJ
QzsNCj4gPiA+ID4gPiArCXJldCA9IHV1aWRfcGFyc2UoVFpfVEFfTUVNX1VVSUQsICZ0YV9tZW1f
dXVpZCk7DQo+ID4gPiA+ID4gKwlpZiAocmV0KQ0KPiA+ID4gPiA+ICsJCWdvdG8gY2xvc2VfY29u
dGV4dDsNCj4gPiA+ID4gPiArCW1lbWNweSgmYXJnLnV1aWQsICZ0YV9tZW1fdXVpZC5iLCBzaXpl
b2YodGFfbWVtX3V1aWQpKTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwlyZXQgPSB0ZWVfY2xp
ZW50X29wZW5fc2Vzc2lvbihzZWNfaGVhcC0+dGVlX2N0eCwgJmFyZywNCj4gPiA+ID4gPiB0X3Bh
cmFtKTsNCj4gPiA+ID4gPiArCWlmIChyZXQgPCAwIHx8IGFyZy5yZXQpIHsNCj4gPiA+ID4gPiAr
CQlwcl9lcnIoIiVzOiBvcGVuIHNlc3Npb24gZmFpbGVkLCByZXQ9JWQ6JWRcbiIsDQo+ID4gPiA+
ID4gKwkJICAgICAgIHNlY19oZWFwLT5uYW1lLCByZXQsIGFyZy5yZXQpOw0KPiA+ID4gPiA+ICsJ
CXJldCA9IC1FSU5WQUw7DQo+ID4gPiA+ID4gKwkJZ290byBjbG9zZV9jb250ZXh0Ow0KPiA+ID4g
PiA+ICsJfQ0KPiA+ID4gPiA+ICsJc2VjX2hlYXAtPm1lbV9zZXNzaW9uID0gYXJnLnNlc3Npb247
DQo+ID4gPiA+ID4gKwlyZXR1cm4gMDsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK2Nsb3NlX2Nv
bnRleHQ6DQo+ID4gPiA+ID4gKwl0ZWVfY2xpZW50X2Nsb3NlX2NvbnRleHQoc2VjX2hlYXAtPnRl
ZV9jdHgpOw0KPiA+ID4gPiA+ICsJcmV0dXJuIHJldDsNCj4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+
ICsNCj4gPiA+ID4gPiAgICBzdGF0aWMgc3RydWN0IGRtYV9idWYgKg0KPiA+ID4gPiA+ICAgIG10
a19zZWNfaGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsIHNpemVfdCBzaXplLA0K
PiA+ID4gPiA+ICAgIAkJICAgICAgdW5zaWduZWQgbG9uZyBmZF9mbGFncywgdW5zaWduZWQgbG9u
Zw0KPiA+ID4gPiA+IGhlYXBfZmxhZ3MpDQo+ID4gPiA+ID4gICAgew0KPiA+ID4gPiA+ICsJc3Ry
dWN0IG10a19zZWN1cmVfaGVhcCAqc2VjX2hlYXAgPQ0KPiA+ID4gPiA+IGRtYV9oZWFwX2dldF9k
cnZkYXRhKGhlYXApOw0KPiA+ID4gPiA+ICAgIAlzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFwX2J1ZmZl
ciAqc2VjX2J1ZjsNCj4gPiA+ID4gPiAgICAJREVGSU5FX0RNQV9CVUZfRVhQT1JUX0lORk8oZXhw
X2luZm8pOw0KPiA+ID4gPiA+ICAgIAlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPiA+ID4gPiA+
ICAgIAlpbnQgcmV0Ow0KPiA+ID4gPiA+ICAgIA0KPiA+ID4gPiA+ICsJLyoNCj4gPiA+ID4gPiAr
CSAqIFRFRSBwcm9iZSBtYXkgYmUgbGF0ZS4gSW5pdGlhbGlzZSB0aGUgc2VjdXJlIHNlc3Npb24N
Cj4gPiA+ID4gPiBpbiB0aGUNCj4gPiA+ID4gPiBmaXJzdA0KPiA+ID4gPiA+ICsJICogYWxsb2Nh
dGluZyBzZWN1cmUgYnVmZmVyLg0KPiA+ID4gPiA+ICsJICovDQo+ID4gPiA+ID4gKwlpZiAoIXNl
Y19oZWFwLT5tZW1fc2Vzc2lvbikgew0KPiA+ID4gPiA+ICsJCXJldCA9IG10a19rcmVlX3NlY3Vy
ZV9zZXNzaW9uX2luaXQoc2VjX2hlYXApOw0KPiA+ID4gPiA+ICsJCWlmIChyZXQpDQo+ID4gPiA+
ID4gKwkJCXJldHVybiBFUlJfUFRSKHJldCk7DQo+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ICAgIAlzZWNfYnVmID0ga3phbGxvYyhzaXplb2YoKnNlY19idWYpLCBHRlBfS0VS
TkVMKTsNCj4gPiA+ID4gPiAgICAJaWYgKCFzZWNfYnVmKQ0KPiA+ID4gPiA+ICAgIAkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiANCj4gPiANCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
