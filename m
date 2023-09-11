Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5B79B151
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 01:51:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF2033E917
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 23:51:37 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lists.linaro.org (Postfix) with ESMTPS id 3ADAD3EFD3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 23:51:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=x9akmo52;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.173 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-59b9b47e35dso10343217b3.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 16:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694476293; x=1695081093; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9FHti0UeaT45a62FC88dUwVtXoyU66QnGu8MY083Gc=;
        b=x9akmo522VAuR+U6ptTigz5drvdVDRsC3Tt41CPmGXpkcq06rS/u9HI5Za6UxcokhZ
         X5hihhOXSWmg8uIDB9dU92L1Cc4RPkpPUToE0E7izawtgZ3YjArMbPD1R0cDNPUs4ztt
         LiA6e6RG7INTaq+aBAudt+RxdiUTQ7+QzlQid2kKaXthLourMA0oxiOnHYJ+Bu8iDBJ/
         EEWj5uUCEys+2DD9UEFzfuh086FMkNJkemL60LrcFGwObFm/OyXYAbQmquZkj+HqSPrX
         QABs+qunkPjsivk5BS4A34jQWcqwq3pFtktlI0n6gjXqO+6ORAzKRd5/siw4y+JPPWyC
         9FKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694476293; x=1695081093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e9FHti0UeaT45a62FC88dUwVtXoyU66QnGu8MY083Gc=;
        b=R3SNi8/ktBYpn3vS1dt9lRG4whZUwFJoiTwae9lTtGK8te/abFsXRBOEjTlkrP12aG
         jhf0gDxbmFxTgTl+2OQBWGyoJW1Fi3ahX1Y2wDgLLwEXClxFHMZylbZAe9JX2YuS801S
         cvib14kKT7DYVPqR2oppjIBctP9Ci+Q7F5pqutyv+4qb9ryCpSGxqtrGL0PecsC3DOxB
         XSZ0XhsyAKlD4n7brPGOi4mt9Mo+tb/5aWp+y+o8ORrYkkoyoMx0Tkgx9ZTCbNE4HuWp
         Hlsyb1K/z+4NHCLK96jhKvyBywI5l3K1Bw2Gcq8JMjGwLMcLvtQxl2GGtlKmg2iR2ms/
         BCtg==
X-Gm-Message-State: AOJu0YwIxtRQ7EiFaLNtU6844qjX6NwjYpGrQOFFJQoedGG5k5lej9Q6
	cfa4hfaRkfDHM67PlDQ5LlENz+SpZF6bO98ieP6uvg==
X-Google-Smtp-Source: AGHT+IGFOM/4w9EDJt7MB2VEaaVKgVLAWXiT0CbJ/s1mQvZfpoxvSUlNkizqXQqtn0mkteVDRyeHoSWnwX1ZfV5oYr4=
X-Received: by 2002:a25:ce03:0:b0:d09:f934:f2fe with SMTP id
 x3-20020a25ce03000000b00d09f934f2femr9212180ybe.18.1694476292641; Mon, 11 Sep
 2023 16:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-2-yong.wu@mediatek.com>
 <46532644-a38b-98d5-13a1-8b51b9276a1d@amd.com>
In-Reply-To: <46532644-a38b-98d5-13a1-8b51b9276a1d@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 11 Sep 2023 16:51:20 -0700
Message-ID: <CABdmKX0-x53hjkKeSw1oDu2yFTKEXc1z_TFg0EMyWF2aBNbk2w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 3ADAD3EFD3
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.173:from];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-yw1-f173.google.com:helo,mail-yw1-f173.google.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IR5QJIQ35II3BBYGLJOWJWGQPZHH6VXM
X-Message-ID-Hash: IR5QJIQ35II3BBYGLJOWJWGQPZHH6VXM
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: heaps: Deduplicate docs and adopt common format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IR5QJIQ35II3BBYGLJOWJWGQPZHH6VXM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMTEsIDIwMjMgYXQgMjozNuKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBtIDExLjA5LjIzIHVtIDA0OjMwIHNj
aHJpZWIgWW9uZyBXdToNCj4gPiBGcm9tOiAiVC5KLiBNZXJjaWVyIiA8dGptZXJjaWVyQGdvb2ds
ZS5jb20+DQo+ID4NCj4gPiBUaGUgZG9jcyBmb3IgZG1hX2hlYXBfZ2V0X25hbWUgd2VyZSBpbmNv
cnJlY3QsIGFuZCBzaW5jZSB0aGV5IHdlcmUNCj4gPiBkdXBsaWNhdGVkIGluIHRoZSBpbXBsZW1l
bnRhdGlvbiBmaWxlIHRoZXkgd2VyZSB3cm9uZyB0aGVyZSB0b28uDQo+ID4NCj4gPiBUaGUgZG9j
cyBmb3JtYXR0aW5nIHdhcyBpbmNvbnNpc3RlbnQgc28gSSB0cmllZCB0byBtYWtlIGl0IG1vcmUN
Cj4gPiBjb25zaXN0ZW50IGFjcm9zcyBmdW5jdGlvbnMgc2luY2UgSSdtIGFscmVhZHkgaW4gaGVy
ZSBkb2luZyBjbGVhbnVwLg0KPiA+DQo+ID4gUmVtb3ZlIG11bHRpcGxlIHVudXNlZCBpbmNsdWRl
cy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2ds
ZS5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+
DQo+ID4gW1lvbmc6IEp1c3QgYWRkIGEgY29tbWVudCBmb3IgInByaXYiIHRvIG11dGUgYnVpbGQg
d2FybmluZ10NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgMjkg
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgIGluY2x1ZGUvbGludXgvZG1hLWhl
YXAuaCAgIHwgMTEgKysrKystLS0tLS0NCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKSwgMjggZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+IGluZGV4
IDg0YWU3MDhmYWZlNy4uNTEwMzBmNmM5ZDZlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtaGVhcC5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4g
PiBAQCAtNywxNyArNywxNSBAQA0KPiA+ICAgICovDQo+ID4NCj4gPiAgICNpbmNsdWRlIDxsaW51
eC9jZGV2Lmg+DQo+ID4gLSNpbmNsdWRlIDxsaW51eC9kZWJ1Z2ZzLmg+DQo+ID4gICAjaW5jbHVk
ZSA8bGludXgvZGV2aWNlLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPg0KPiA+
ICsjaW5jbHVkZSA8bGludXgvZG1hLWhlYXAuaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9lcnIu
aD4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3hhcnJheS5oPg0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4
L2xpc3QuaD4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPiAgICNpbmNsdWRlIDxs
aW51eC9ub3NwZWMuaD4NCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4NCj4gPiAgICNp
bmNsdWRlIDxsaW51eC9zeXNjYWxscy5oPg0KPiA+IC0jaW5jbHVkZSA8bGludXgvZG1hLWhlYXAu
aD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4
L3hhcnJheS5oPg0KPiA+ICAgI2luY2x1ZGUgPHVhcGkvbGludXgvZG1hLWhlYXAuaD4NCj4gPg0K
PiA+ICAgI2RlZmluZSBERVZOQU1FICJkbWFfaGVhcCINCj4gPiBAQCAtMjgsOSArMjYsMTAgQEAN
Cj4gPiAgICAqIHN0cnVjdCBkbWFfaGVhcCAtIHJlcHJlc2VudHMgYSBkbWFidWYgaGVhcCBpbiB0
aGUgc3lzdGVtDQo+ID4gICAgKiBAbmFtZTogICAgICAgICAgIHVzZWQgZm9yIGRlYnVnZ2luZy9k
ZXZpY2Utbm9kZSBuYW1lDQo+ID4gICAgKiBAb3BzOiAgICAgICAgICAgIG9wcyBzdHJ1Y3QgZm9y
IHRoaXMgaGVhcA0KPiA+IC0gKiBAaGVhcF9kZXZ0ICAgICAgICAgICAgICAgIGhlYXAgZGV2aWNl
IG5vZGUNCj4gPiAtICogQGxpc3QgICAgICAgICAgICAgbGlzdCBoZWFkIGNvbm5lY3RpbmcgdG8g
bGlzdCBvZiBoZWFwcw0KPiA+IC0gKiBAaGVhcF9jZGV2ICAgICAgICAgICAgICAgIGhlYXAgY2hh
ciBkZXZpY2UNCj4gPiArICogQHByaXY6ICAgICAgICAgICAgcHJpdmF0ZSBkYXRhIGZvciB0aGlz
IGhlYXANCj4gPiArICogQGhlYXBfZGV2dDogICAgICAgICAgICAgICBoZWFwIGRldmljZSBub2Rl
DQo+ID4gKyAqIEBsaXN0OiAgICAgICAgICAgIGxpc3QgaGVhZCBjb25uZWN0aW5nIHRvIGxpc3Qg
b2YgaGVhcHMNCj4gPiArICogQGhlYXBfY2RldjogICAgICAgICAgICAgICBoZWFwIGNoYXIgZGV2
aWNlDQo+ID4gICAgKg0KPiA+ICAgICogUmVwcmVzZW50cyBhIGhlYXAgb2YgbWVtb3J5IGZyb20g
d2hpY2ggYnVmZmVycyBjYW4gYmUgbWFkZS4NCj4gPiAgICAqLw0KPiA+IEBAIC0xOTIsMjUgKzE5
MSwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfaGVhcF9mb3Bz
ID0gew0KPiA+ICAgI2VuZGlmDQo+ID4gICB9Ow0KPiA+DQo+ID4gLS8qKg0KPiA+IC0gKiBkbWFf
aGVhcF9nZXRfZHJ2ZGF0YSgpIC0gZ2V0IHBlci1zdWJkcml2ZXIgZGF0YSBmb3IgdGhlIGhlYXAN
Cj4gPiAtICogQGhlYXA6IERNQS1IZWFwIHRvIHJldHJpZXZlIHByaXZhdGUgZGF0YSBmb3INCj4g
PiAtICoNCj4gPiAtICogUmV0dXJuczoNCj4gPiAtICogVGhlIHBlci1zdWJkcml2ZXIgZGF0YSBm
b3IgdGhlIGhlYXAuDQo+ID4gLSAqLw0KPg0KPiBLZXJuZWwgZG9jdW1lbnRhdGlvbiBpcyB1c3Vh
bGx5IGtlcHQgb24gdGhlIGltcGxlbWVudGF0aW9uIGFuZCBub3QgdGhlDQo+IGRlZmluaXRpb24u
DQo+DQo+IFNvIEkgc3Ryb25nbHkgc3VnZ2VzdCB0byByZW1vdmUgdGhlIGRvY3VtZW50YXRpb24g
ZnJvbSB0aGUgaGVhZGVyDQo+IGluc3RlYWQgYW5kIGlmIHRoZXJlIGlzIGFueSBhZGRpdGlvbmFs
IGluZm9ybWF0aW9uIGluIHRoZXJlIGFkZCBpdCBoZXJlLg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJp
c3RpYW4uDQo+DQpPayB0aGFua3MgZm9yIGxvb2tpbmcuIEknbGwgbW92ZSBhbGwgdGhlIGZ1bmN0
aW9uIGRvY3Mgb3ZlciB0byB0aGUNCmltcGxlbWVudGF0aW9uLg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
