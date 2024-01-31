Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A94B844ABE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 23:07:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15B82400DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jan 2024 22:07:35 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id F12053EBDC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 22:07:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=0vAtjvrY;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40f0218476aso4595e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jan 2024 14:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706738847; x=1707343647; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VxGRQtTivmWoKuFadnWNImbg21dR/diu+Neco1gJfcY=;
        b=0vAtjvrYOaKQEJiIJ5UNxhDJeKp4coBlPHNuqbPD1bzCd0kNtsqJCev2uNLR++xFUR
         5Y8cnq7u/8gO84cdiVxeywaR4nRHWt7CrGCwCAowCiqcbuAJYIxrjtuYZZAHz+Qru+jq
         mjD0kgDHAYVxQZsSS2DvDhP8lkurQJkOfF7sdXAzIC7BXFUWnnZ4mxf0zwEjtgQ4KaSo
         byEIJ8C1cVEycIOvB4Olf5TERVDciL+lVCJkS/uzcsG/8eqIzkPZoq2pW2DMVHwJ6+PW
         m3sB6Mor0rT87kb/ydVIRYE5krl/VdiQZsOXiXibqDWGw70i5GDKYJ/A75KnEwPfx1c2
         2SUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706738847; x=1707343647;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VxGRQtTivmWoKuFadnWNImbg21dR/diu+Neco1gJfcY=;
        b=cLSW6ocZt73lTu4QvWUW4buGwmFzaTS22v9bJx9nV6inEhHCW53OytZZWqXOZhk6Vw
         lfKpUWirJ12oY75BPYrv56xdZYsJHJkEX6OAkZWFDih6XXQ+wjW36iLT4CDH2udjnUAH
         vSKnJLT60LHlYSFu8HY5w/4WXnKHAqDYWOf+DQO96IKIbamXzKYxXsJizKm+QGaoDXJ3
         xU34aXHQGWTmRyHxzDFJRJEYGt4jJwDY9KbclUgkPrxyHyq+LoGmoni5YD4uGnzbxQx/
         +8lkkZKRvuZ9xhoKYY4A8fxrTzguBTcE+4j6dBNYLFYCo0jcKVxKFI8eMvpHGUEbFyZ1
         nOYQ==
X-Gm-Message-State: AOJu0YzCo3082IqdgZF8PRNXXWXsF+hzr08pm7wPV8zewB7gW47siA9H
	ulI9r3DueM9apl56didNu36upTjtk4pPclMnAHIfLmM7dmNJxVqeBokLgygjZHJvrXihw2U4epw
	TkieMoizdKdRMt0uJcxmwJSrNJMt8RPu1hqA=
X-Google-Smtp-Source: AGHT+IE/2Dxf4agbwoKTbMQd8Mnstjn4gRLtOYMhgr/arfVgtxcTfa+Kk1PDbnEzzrNLU0B/ZV7z7fa+Npsy3Ek/Uvk=
X-Received: by 2002:a05:600c:5026:b0:40e:e7ce:da68 with SMTP id
 n38-20020a05600c502600b0040ee7ceda68mr66122wmr.0.1706738846818; Wed, 31 Jan
 2024 14:07:26 -0800 (PST)
MIME-Version: 1.0
References: <20240112092014.23999-1-yong.wu@mediatek.com> <20240112092014.23999-4-yong.wu@mediatek.com>
 <CANDhNCrxpeqEhJD0xJzu3vm8a4jMXD2v+_dbDNvaKhLsLB5-4g@mail.gmail.com>
 <CA+ddPcNdniUTpE_pJb-fL7+MHNSUZTkQojL48iqvW9JPr-Tc-g@mail.gmail.com>
 <CANDhNCqieBaH-Wi=vy3NSKTpwHcWef6qMOFi-7sgdGiDW7JtwA@mail.gmail.com>
 <CA+ddPcP9bgApNw_Nu7bxcV-oK_s3Bq1i5qun+vNSuRUO9tPEkA@mail.gmail.com>
 <CANDhNCrGxhHJLA2ct-iqemLAsQRt3C8m5=xAD3_dDdKH6Njrdg@mail.gmail.com> <20240131141523.yh74hsddtuooqfgi@pop-os.localdomain>
In-Reply-To: <20240131141523.yh74hsddtuooqfgi@pop-os.localdomain>
From: John Stultz <jstultz@google.com>
Date: Wed, 31 Jan 2024 14:07:13 -0800
Message-ID: <CANDhNCqKPmo-RUd6RRRS2=ZJHqyy40G9HE=6_cAyop1CN2xOgw@mail.gmail.com>
To: Joakim Bech <joakim.bech@linaro.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F12053EBDC
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
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,mediatek.com,kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: ONWCIRJPACG7NDGYZV5VTIPW3VQH3N67
X-Message-ID-Hash: ONWCIRJPACG7NDGYZV5VTIPW3VQH3N67
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jeffrey Kardatzke <jkardatzke@google.com>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/7] dma-buf: heaps: restricted_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONWCIRJPACG7NDGYZV5VTIPW3VQH3N67/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMzEsIDIwMjQgYXQgNjoxNeKAr0FNIEpvYWtpbSBCZWNoIDxqb2FraW0uYmVj
aEBsaW5hcm8ub3JnPiB3cm90ZToNCj4gT24gRnJpLCBKYW4gMTIsIDIwMjQgYXQgMDU6MjM6MDdQ
TSAtMDgwMCwgSm9obiBTdHVsdHogd3JvdGU6DQo+ID4gU28gd2UgbmVlZCBzb21lIGNsYXJpdHkg
aW4gd2hhdCAicmVzdHJpY3RlZCIgcmVhbGx5IG1lYW5zLiAgRm9yDQo+ID4gaW5zdGFuY2UsIGl0
IGJlaW5nIG5vdCBjcHUgbWFwcGFibGUgdnMgb3RoZXIgcG90ZW50aWFsIHZhcmlhdGlvbnMgbGlr
ZQ0KPiA+IGJlaW5nIGNwdSBtYXBwYWJsZSwgYnV0IG5vdCBjcHUgYWNjZXNzaWJsZS4gIE9yIG5v
dCBjcHUgbWFwcGFibGUsIGJ1dA0KPiA+IG9ubHkgbWFwcGFibGUgYmV0d2VlbiBhIHNldCBvZiAz
IGRldmljZXMgKFdoaWNoIDMgZGV2aWNlcz8hIEhvdyBjYW4gd2UNCj4gPiB0ZWxsPykuDQo+ID4N
Cj4gQ2FuIHdlIGZsaXAgdGhpbmdzIGFyb3VuZD8gSS5lLiwgaW5zdGVhZCBvZiBzYXlpbmcgd2hp
Y2ggZGV2aWNlcyBhcmUNCj4gYWxsb3dlZCB0byB1c2UgdGhlIHJlc3RyaWN0ZWQgYnVmZmVyLCBj
YW4gd2UgaW5zdGVhZCBzYXkgd2hlcmUgaXQncyBub3QNCj4gYWxsb3dlZCB0byBiZSB1c2VkPyBN
eSB2aWV3IGhhcyBiZWVuIHRoYXQgYnkgZGVmYXVsdCB0aGUgY29udGVudHMgb2YgdGhlDQo+IHR5
cGVzIG9mIGJ1ZmZlcnMgd2hlcmUgdGFsa2luZyBhYm91dCBoZXJlIGlzIG9ubHkgYWNjZXNzaWJs
ZSB0byB0aGluZ3MNCj4gcnVubmluZyBvbiB0aGUgc2VjdXJlIHNpZGUsIGkuZSwgdHlwaWNhbGx5
IFMtRUwzLCBTLUVMMSBhbmQgYSBzcGVjaWZpYw0KPiBUcnVzdGVkIEFwcGxpY2F0aW9uIHJ1bm5p
bmcgaW4gUy1FTDAuIEkgZ3Vlc3MgdGhhdCBzZXJ2ZXMgYXMgc29tZSBraW5kDQo+IG9mIGJhc2Vs
aW5lLg0KDQo/IFRoaXMgc2VlbXMgbGlrZSB5b3UncmUgc3VnZ2VzdGluZyBlbnVtZXJhdGluZyBi
YWRuZXNzPyBJJ20gbm90IHN1cmUNCkkgdW5kZXJzdGFuZCB0aGUgYmVuZWZpdCBvZiB0aGF0Lg0K
DQo+IEZyb20gdGhlcmUsIHRoaW5ncyB0dXJucyB0byBhIG1vcmUgZHluYW1pYyBuYXR1cmUsIHdo
ZXJlIGZpcmV3YWxscyBldGMsDQo+IGNhbiBiZSBjb25maWd1cmVkIHRvIGdpdmUgYWNjZXNzIHRv
IHZhcmlvdXMgSVBzLCBibG9ja3MgYW5kIHJ1bnRpbWVzLg0KPg0KPiBJIHVuZGVyc3RhbmQgdGhh
dCBpdCdzIG5pY2UgdG8gYmUgYWJsZSB0byBrbm93IGFsbCB0aGlzIGZyb20gdGhlIExpbnV4DQo+
IGtlcm5lbCBwb2ludCBvZiB2aWV3LCBidXQgZG9lcyBpdCBoYXZlIHRvIGJlIGF3YXJlIG9mIHRo
aXM/IFdoYXQncyB0aGUNCj4gbWFqb3IgZHJhd2JhY2sgaWYgTGludXggZG9lc24ndCBrbm93IGFi
b3V0IGl0Pw0KDQpJbmRlZWQsIGl0IGRvZXNuJ3QgbmVjZXNzYXJpbHkuIFRoZSBpZGVhIHdpdGgg
RE1BQlVGIGhlYXBzIGlzIGl0DQpwcm92aWRlcyBhIG5hbWUgdG8gYWJzdHJhY3Qvd3JhcCBhIHR5
cGUgb2YgY29uc3RyYWludC4gU28geW91IGNhbiB0aGVuDQphbGxvY2F0ZSBidWZmZXJzIHRoYXQg
c2F0aXNmeSB0aGF0IGNvbnN0cmFpbnQuDQoNCkFkbWl0dGVkbHkgdGhlIGRvd25zaWRlIHdpdGgg
RE1BQlVGIGhlYXBzIGlzIHRoYXQgaXQgaGFzIGEgYml0IG9mIGENCmdhcCBpbiB0aGUgYWJzdHJh
Y3Rpb24gaW4gdGhhdCB3ZSBkb24ndCBoYXZlIGEgbWFwcGluZyBvZiBkZXZpY2UNCmNvbnN0cmFp
bnRzLCBzbyBpbiBBbmRyb2lkIGdyYWxsb2MgcHJvdmlkZXMgYSBkZXZpY2Ugc3BlY2lmaWMNCnVz
YWdlL3BpcGVsaW5lIC0+IGhlYXAgbWFwcGluZy4NCihOb3RlOiBUaGlzIEkgZG9uJ3QgdGhpbmsg
aXMgdmVyeSBwcm9ibGVtYXRpYyAtIEkgb2Z0ZW4gdXNlIHRoZQ0KZXhhbXBsZSBvZiBmc3RhYiBh
cyBkZXZpY2Utc3BlY2lmaWMgY29uZmlnIGV2ZXJ5b25lIGlzIGNvbWZvcnRhYmxlDQp3aXRoIC0g
YnV0IEkga25vdyBmb2xrcyB3b3VsZCBsaWtlIHRvIGhhdmUgc29tZXRoaW5nIG1vcmUgZ2VuZXJp
YykNCg0KSSBiZWxpZXZlIENocmlzdGlhbiBoYXMgcHJldmlvdXNseSBwcm9wb3NlZCB0byBoYXZl
IHRoZSBkZXZpY2VzDQpwcm92aWRlIHNvbWV0aGluZyBsaWtlIHN5bWxpbmtzIGZyb20gdGhlaXIg
c3lzZnMgIG5vZGVzIHRvIHRoZSBoZWFwcw0KdGhlIGRldmljZSBzdXBwb3J0cywgd2hpY2ggaXMg
YW4gaW50ZXJlc3RpbmcgaWRlYSB0byBtb3N0bHkgY2xvc2UgdGhhdA0KaXNzdWUuIEFwcGxpY2F0
aW9ucyBjb3VsZCB0aGVuIHNjYW4gdGhlIGRldmljZXMgaW4gYSBwaXBlbGluZSBhbmQgZmluZA0K
dGhlIHR5cGUgdGhleSBhbGwgc3VwcG9ydCwgYW5kIHRoZSBzcGVjaWZpYyBuYW1lcyB3b3VsZG4n
dCBtYXR0ZXIuDQoNCkhvd2V2ZXIsIEknZCBleHBlY3QgdGhlIHNhbWUgaGFyZHdhcmUgcGlwZWxp
bmUgbWlnaHQgc3VwcG9ydCBib3RoDQpyZXN0cmljdGVkIGFuZCB1bnJlc3RyaWN0ZWQgcGxheWJh
Y2ssIHNvIHRoZXJlIHdvdWxkIG5lZWQgdG8gYmUgc29tZQ0Kd2F5IHRvIGRpZmZlcmVudGlhdGUg
Zm9yIHRoZSB1c2UgY2FzZSwgc28gSSdtIG5vdCBzdXJlIHlvdSBjYW4gZ2V0DQphd2F5IGZyb20g
c29tZSBoZWFwIG5hbWUgdG8gZnVuY3Rpb25hbGl0eSBtYXBwaW5nLg0KDQpNeSBtYWluIGNvbmNl
cm4gd2l0aCB0aGlzIHBhdGNoIHNlcmllcyBpcyB0aGF0IGl0IHNlZW1zIHRvIHdhbnQgdG8NCmJ1
bmRsZSBhbGwgdGhlIGRpZmZlcmVudCB0eXBlcyBvZiAicmVzdHJpY3RlZCIgYnVmZmVycyB0aGF0
IG1pZ2h0IGJlDQpwb3NzaWJsZSB1bmRlciBhIHNpbmdsZSAicmVzdHJpY3RlZCIgaGVhcCBuYW1l
Lg0KDQpTaW5jZSB3ZSBsaWtlbHkgaGF2ZSBkZXZpY2VzIHdpdGggZGlmZmVyZW50IHNlY3VyaXR5
IGRvbWFpbnMsIHRodXMNCmRpZmZlcmVudCB0eXBlcyBvZiByZXN0cmljdGlvbnMuIFNvIHdlIG1h
eSBuZWVkIHRvIGJlIGFibGUgdG8NCmRpZmZlcmVudGlhdGUgYmV0d2VlbiAic2VjdXJlIHZpZGVv
IHBsYXliYWNrIiB1c2VzIGFuZCAicHJvdGVjdGVkDQpkZXZpY2UgZmlybXdhcmUiIHVzZXMgb24g
dGhlIHNhbWUgbWFjaGluZS4gVGh1cywgSSdtIG5vdCBzdXJlIGl0J3MgYQ0KZ29vZCBpZGVhIHRv
IGJ1bmRsZSBhbGwgb2YgdGhlc2UgdW5kZXIgdGhlIHNhbWUgaGVhcCBuYW1lLg0KDQp0aGFua3MN
Ci1qb2huDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
