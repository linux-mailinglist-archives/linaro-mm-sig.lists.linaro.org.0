Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B4BBB3F41
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 14:57:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 433DE45D2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 12:57:40 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id 56B3845D2A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 12:57:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=vp7fGVjR;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.179 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-43f645f162aso424849b6e.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 05:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759409858; x=1760014658; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZ9DvIz4r5smSG4dSA4CIzbwRw8riJPhilOOGaBUqN0=;
        b=vp7fGVjRZIv1BJgiMpIN6w/LnP90FAoH7t4wcAYPuNa6oxRp1kBQ7YTpmqWFuzTppw
         Ftj+QOd98d+4PKn5CzovXT0RFxlKZZUS5q0ZitsZGk5gObUWgGyonbI3ueYfX1tkHMhR
         J5RwN6AKriOjAuZtwLektVlIyG+b3L4Hs0hyS7lRVYSVj+guRSA3IJeqc7a1QwMJ+kP0
         jp7kCeyFO9yUC+/YDHWBvHyCfqlNfqlgW+RckiNMfVH76g0OBt4YuO0QsLdOgkogGVgt
         dQgK255YIvdQJCbcKZRBucvSjYOPxW457B8Zmlrlt4vPZ1T0ghCPh6I+o2xccDVjD5mt
         wlag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759409858; x=1760014658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZ9DvIz4r5smSG4dSA4CIzbwRw8riJPhilOOGaBUqN0=;
        b=K5OpRgj9LtBJa6ty7ufO6otVNqALP6YMqvM3qVfeT7vav7SXDuISK+6lbouUNtCx7r
         NwPBb3T42kRk7W45eCA01HhPkVP5dWSYjetcHVsAlMDSS3rbp2Kb6ieqg2CLj54IUOe0
         fUiwvahwXqdZG6CceMS54SzoWwMGpnOQ7mUoW9ujQ3jqppyeTtSvRaKYUDXy3YOIN6hq
         XrpKpFuzbVD8s2FhnK5KGBOOlLPjTAB99wlU5f7yL7ACQIBp7yuyR9MMQUSvJYYOQYW7
         Aetc2t0WyDWjWYAZ+7BpAYzx42/wXXzc/gp5QwaZhIAI6r6iUhU9t2PJ4Z732qr9txid
         GuVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+HarbpO+S/+tk+lysWyeCbXhGDQSfuoSImZLjtf9s3UBiwrcUofsp577IO24CMYZZbMTaez7lfr+4CzNJ@lists.linaro.org
X-Gm-Message-State: AOJu0YymBbxMNTwzvkiqoDzeAfxR0mm4V2D8pq1Bzqx7GUtYks0Qawaj
	fjqUZwwfkUp5mOAAFh5o6qSVdmBVsRX8NhzNHsuJR8HyEjpdYYLoLwBwLeFZl8uPfOwOU62GvoG
	bR8a0LAWbsAv9rHPDezfN2iV+aks3N1ypeLHxA6roDoPC
X-Gm-Gg: ASbGncvSxiD13p/F6sHq5g2ce9dztnqOV8SL1TAqf5nQ8pkqiXdvt17EXdwBDJSr2YH
	lk+MYXnKgB780PwrOBNARQ8tV+H+Gnva7TpdO6yx+fb2MUmyNSZ9Fwuad8Bj870GF4/cPeiTFoY
	ewsoj2Iu7i8UrXgzOobgqd9kXSyOR+2qqLZtEeBRBGxavPL0YBMD9yINGxXXkcOsvns31QYSlS2
	jCo/iwNy5UIHtzIxr4BbMRriOuqIoTnHBvW
X-Google-Smtp-Source: AGHT+IHYX7pg60feCJITkUMOxMprgz6P5nDIrUPJazgK/QAWeqrWOagX4EH5hYzH12fx7NdLiTURGQeRt8nyhXDnw20=
X-Received: by 2002:a05:6808:2385:b0:438:23ad:5dbc with SMTP id
 5614622812f47-43fb15cb75cmr1662193b6e.20.1759409857632; Thu, 02 Oct 2025
 05:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
 <20250911135007.1275833-4-jens.wiklander@linaro.org> <20251002-sceptical-goose-of-fame-7b33d6@houat>
In-Reply-To: <20251002-sceptical-goose-of-fame-7b33d6@houat>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 2 Oct 2025 14:57:25 +0200
X-Gm-Features: AS18NWB-MzLg3sZZl_om3Nb3U3T2KFc8NTfBmABGN9BozXUUDdedKeLjWJJE67A
Message-ID: <CAHUa44H3nGgY9q68YRRp5A7Q6Ku3P_URuv+L7H8chYzLAKd8mQ@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Queue-Id: 56B3845D2A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.179:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,mail.gmail.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.179:from];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TJBE2RQMRIPQGWM2ZJU2YQXU7LCMY7CT
X-Message-ID-Hash: TJBE2RQMRIPQGWM2ZJU2YQXU7LCMY7CT
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 3/9] tee: implement protected DMA-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TJBE2RQMRIPQGWM2ZJU2YQXU7LCMY7CT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIFRodSwgT2N0IDIsIDIwMjUgYXQgOTo1NOKAr0FNIE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAcmVkaGF0LmNvbT4gd3JvdGU6DQo+DQo+IE9uIFRodSwgU2VwIDExLCAyMDI1IGF0IDAz
OjQ5OjQ0UE0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+ICtzdGF0aWMgY29uc3Qg
Y2hhciAqaGVhcF9pZF8yX25hbWUoZW51bSB0ZWVfZG1hX2hlYXBfaWQgaWQpDQo+ID4gK3sNCj4g
PiArICAgICBzd2l0Y2ggKGlkKSB7DQo+ID4gKyAgICAgY2FzZSBURUVfRE1BX0hFQVBfU0VDVVJF
X1ZJREVPX1BMQVk6DQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gInByb3RlY3RlZCxzZWN1cmUt
dmlkZW8iOw0KPiA+ICsgICAgIGNhc2UgVEVFX0RNQV9IRUFQX1RSVVNURURfVUk6DQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gInByb3RlY3RlZCx0cnVzdGVkLXVpIjsNCj4gPiArICAgICBjYXNl
IFRFRV9ETUFfSEVBUF9TRUNVUkVfVklERU9fUkVDT1JEOg0KPiA+ICsgICAgICAgICAgICAgcmV0
dXJuICJwcm90ZWN0ZWQsc2VjdXJlLXZpZGVvLXJlY29yZCI7DQo+ID4gKyAgICAgZGVmYXVsdDoN
Cj4gPiArICAgICAgICAgICAgIHJldHVybiBOVUxMOw0KPiA+ICsgICAgIH0NCj4gPiArfQ0KPg0K
PiBXZSd2ZSByZWNlbnRseSBhZ3JlZWQgb24gYSBuYW1pbmcgZ3VpZGVsaW5lIChldmVuIHRob3Vn
aCBpdCdzIG5vdCBtZXJnZWQgeWV0KQ0KPg0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjUwNzI4LWRtYS1idWYtaGVhcC1uYW1lcy1kb2MtdjQtMS1mNzNmNzFjZjBkZmRAa2VybmVsLm9y
Zw0KDQpJIHdhc24ndCBhd2FyZSBvZiB0aGF0IChvciBoYWQgZm9yZ290dGVuIGl0KSwgYnV0IGR1
cmluZyB0aGUgcmV2aXNpb25zDQpvZiB0aGlzIHBhdGNoIHNldCwgd2UgY2hhbmdlZCB0byB1c2Ug
InByb3RlY3RlZCIuDQoNCj4NCj4gU2VjdXJlIGFuZCB0cnVzdGVkIHNob3VsZCBiZSBkZWZpbmVk
IEkgZ3Vlc3MsIGJlY2F1c2Ugc2VjdXJlIGFuZA0KPiBwcm90ZWN0ZWQgYXQgbGVhc3Qgc2VlbSBy
ZWR1bmRhbnQgdG8gbWUuDQoNCkRlcGVuZGluZyBvbiB0aGUgdXNlIGNhc2UsIHRoZSBwcm90ZWN0
ZWQgYnVmZmVyIGlzIG9ubHkgYWNjZXNzaWJsZSB0bw0KYSBzcGVjaWZpYyBzZXQgb2YgZGV2aWNl
cy4gVGhpcyBpcyB0eXBpY2FsbHkgY29uZmlndXJlZCBieSB0aGUgVEVFDQpmaXJtd2FyZSBiYXNl
ZCBvbiB3aGljaCBoZWFwIHdlJ3JlIHVzaW5nLiBUbyBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZQ0K
ZGlmZmVyZW50IGhlYXBzLCBJJ3ZlIHNpbXBseSBhZGRlZCB0aGUgbmFtZSBvZiB0aGUgdXNlIGNh
c2UgYWZ0ZXIgdGhlDQpjb21tYS4gU28gdGhlIG5hbWUgb2YgdGhlIGhlYXAgZm9yIHRoZSBUcnVz
dGVkLVVJIHVzZSBjYXNlIGlzDQoicHJvdGVjdGVkLHRydXN0ZWQtdWkiLiBXaGF0IHdvdWxkIGEg
aGVhcCBjYWxsZWQgInByb3RlY3RlZCx1aSINCnJlcHJlc2VudD8gUHJvdGVjdGVkIGJ1ZmZlcnMg
Zm9yIGEgVUkgdXNlIGNhc2U/IFdoYXQga2luZCBvZiBVSSB1c2UNCmNhc2U/IElmIHRoZSBuYW1l
IG9mIHRoZSBoZWFwIGlzIHRvbyBnZW5lcmljLCBpdCBtaWdodCBjb3ZlciBtb3JlIHRoYW4NCm9u
ZSB1c2UgY2FzZSB3aXRoIGNvbmZsaWN0aW5nIHJlcXVpcmVtZW50cyBmb3Igd2hpY2ggZGV2aWNl
cyBzaG91bGQgYmUNCmFibGUgdG8gYWNjZXNzIHRoZSBwcm90ZWN0ZWQgbWVtb3J5Lg0KDQpUaGFu
a3MsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
