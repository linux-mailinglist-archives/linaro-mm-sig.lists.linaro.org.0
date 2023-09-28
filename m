Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1A97CF787
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:53:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB2E940C4D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:53:37 +0000 (UTC)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by lists.linaro.org (Postfix) with ESMTPS id 15E1140C2A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Sep 2023 17:48:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=cNcjLGic;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.166.181 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3514ece5ed4so12515ab.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Sep 2023 10:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695923307; x=1696528107; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+lc7tMjE9TqzKqjNwesj3iwB/DY3hf+maktURRWmeOo=;
        b=cNcjLGicsEPolJrR8EhXjbBuYexDb8oCzaUGIDD/7uVU9gt9w0p0NqzPqXpnIeNhuo
         q5GU8oXpzSR5fkwI6FtSreVinXspgonckRFmRO+u13R7rtAlpWm87naGUV1mjeXybVhr
         f1pdASK5+AuVl59R3UuyvnVxfkVD4H7+BO5hapKaO2icVgBE6sld6lz4bPXdJVSdlRrV
         P4E2dzDIeb5UmRekP2KgS44mhP8h54UUEzYvH6oUJDb4pN3HJobkjCzYs5+1RCMDDaRN
         AMDJtCQ43mZ6pYtyun6PuXjWBtbk7l+18RG2Vb1LThmIVI9uxyagx8FoPKF8Br8SDsT0
         w4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695923307; x=1696528107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+lc7tMjE9TqzKqjNwesj3iwB/DY3hf+maktURRWmeOo=;
        b=GNpzIPMjhMasJYkdEuBWz6aRmN0rbIQhkGJIkSj1AED3TnAL20PKmJYI2fnW1RZCsg
         j+L/qx8YJJtbbkokgMy1AZL0O1sjaaZaOX123NMe7ohuyrYAlA7AxlmrUGUC3goaAbbC
         lNaN//R9fMAniYe5WSDi/D5kSB1tj9p3CR9oI1sgqtFUA+6b+fr9idkuPPVbt/dFiA30
         Hs9w70IAinf+cms7dVMfMpX5t+MYx/oMVHdYGAlUN+jSjiqPtpQJrn5niSbzeMVjBS/V
         XvmAJOkcrX3dKUIncQwyQuioedxwrgWcbihbTQSyeWkUj9sbD7itJUrHG3rkP3/eVHEp
         HI/A==
X-Gm-Message-State: AOJu0YyP8KwmjKoj/DALzsjXjvo7iRH4J938xXZt2bLPPAbPredif1El
	Bwc7mAXWmEbcdInflkW3Rc4Hn8Yj1Akpw8BJMOXQ
X-Google-Smtp-Source: AGHT+IEKTkNfxDliwI/2EJS9nYa/IghQB0LorE6+1+ZjJfiK83nWSSutkNVwiV47LmZ4lKR2ji8rXU0JRU5ZMy5AJDw=
X-Received: by 2002:a05:6e02:1486:b0:34f:5587:4353 with SMTP id
 n6-20020a056e02148600b0034f55874353mr1062211ilk.25.1695923307247; Thu, 28 Sep
 2023 10:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com> <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com> <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain> <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
 <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com> <80695726-1a98-12d4-ad7d-d731f2f3caeb@collabora.com>
In-Reply-To: <80695726-1a98-12d4-ad7d-d731f2f3caeb@collabora.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Thu, 28 Sep 2023 10:48:15 -0700
Message-ID: <CA+ddPcPES=4FcQRkvVnW=C9mL6hCxVfCcoLDJSjb58UiDmS_Mg@mail.gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.181:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 15E1140C2A
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QNKFQV2WULMVBKJERXTSTHRJLUJ2DOK7
X-Message-ID-Hash: QNKFQV2WULMVBKJERXTSTHRJLUJ2DOK7
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:47:26 +0000
CC: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm
 .com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QNKFQV2WULMVBKJERXTSTHRJLUJ2DOK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgMTozMOKAr0FNIEJlbmphbWluIEdhaWduYXJkDQo8YmVu
amFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+DQo+IExlIDI3LzA5LzIw
MjMgw6AgMjA6NTYsIEplZmZyZXkgS2FyZGF0emtlIGEgw6ljcml0IDoNCj4gPiBPbiBXZWQsIFNl
cCAyNywgMjAyMyBhdCA4OjE44oCvQU0gQmVuamFtaW4gR2FpZ25hcmQNCj4gPiA8YmVuamFtaW4u
Z2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+ID4+DQo+ID4+IExlIDI3LzA5LzIwMjMg
w6AgMTU6NDYsIEpvYWtpbSBCZWNoIGEgw6ljcml0IDoNCj4gPj4+IE9uIE1vbiwgU2VwIDI1LCAy
MDIzIGF0IDEyOjQ5OjUwUE0gKzAwMDAsIFlvbmcgV3UgKOWQtOWLhykgd3JvdGU6DQo+ID4+Pj4g
T24gVHVlLCAyMDIzLTA5LTEyIGF0IDExOjMyICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyB3cm90ZToNCj4gPj4+Pj4gSWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykg
aGEgc2NyaXR0bzoNCj4gPj4+Pj4+IE9uIE1vbiwgMjAyMy0wOS0xMSBhdCAxMToyOSArMDIwMCwg
QW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8NCj4gPj4+Pj4+IHdyb3RlOg0KPiA+Pj4+Pj4+IEls
IDExLzA5LzIzIDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+ID4+Pj4+Pj4+IFRoZSBURUUg
cHJvYmUgbGF0ZXIgdGhhbiBkbWEtYnVmIGhlYXAsIGFuZCBQUk9CRV9ERURFUiBkb2Vzbid0DQo+
ID4+Pj4+Pj4+IHdvcmsNCj4gPj4+Pj4+Pj4gaGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIHBsYXRm
b3JtIGRyaXZlciwgdGhlcmVmb3JlIGluaXRpYWxpc2UNCj4gPj4+Pj4+Pj4gdGhlDQo+ID4+Pj4+
Pj4+IFRFRQ0KPiA+Pj4+Pj4+PiBjb250ZXh0L3Nlc3Npb24gd2hpbGUgd2UgYWxsb2NhdGUgdGhl
IGZpcnN0IHNlY3VyZSBidWZmZXIuDQo+ID4+Pj4+Pj4+DQo+ID4+Pj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPiA+Pj4+Pj4+PiAtLS0NCj4gPj4+
Pj4+Pj4gICAgICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMgfCA2MQ0K
PiA+Pj4+Pj4+PiArKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4+Pj4+Pj4+ICAgICAgMSBm
aWxlIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKykNCj4gPj4+Pj4+Pj4NCj4gPj4+Pj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPiA+Pj4+
Pj4+PiBiL2RyaXZlcnMvZG1hLQ0KPiA+Pj4+Pj4+PiBidWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFw
LmMNCj4gPj4+Pj4+Pj4gaW5kZXggYmJmMWM4ZGNlMjNlLi5lM2RhMzNhM2QwODMgMTAwNjQ0DQo+
ID4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0K
PiA+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMN
Cj4gPj4+Pj4+Pj4gQEAgLTEwLDYgKzEwLDEyIEBADQo+ID4+Pj4+Pj4+ICAgICAgI2luY2x1ZGUg
PGxpbnV4L2Vyci5oPg0KPiA+Pj4+Pj4+PiAgICAgICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4N
Cj4gPj4+Pj4+Pj4gICAgICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiA+Pj4+Pj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L3RlZV9kcnYuaD4NCj4gPj4+Pj4+Pj4gKyNpbmNsdWRlIDxsaW51eC91dWlk
Lmg+DQo+ID4+Pj4+Pj4+ICsNCj4gPj4+Pj4+Pj4gKyNkZWZpbmUgVFpfVEFfTUVNX1VVSUQgICAg
ICAgICAgIjQ0Nzc1ODhhLTg0NzYtMTFlMi1hZDE1LQ0KPiA+Pj4+Pj4+PiBlNDFmMTM5MGQ2NzYi
DQo+ID4+Pj4+Pj4+ICsNCj4gPj4+Pj4+PiBJcyB0aGlzIFVVSUQgdGhlIHNhbWUgZm9yIGFsbCBT
b0NzIGFuZCBhbGwgVFogdmVyc2lvbnM/DQo+ID4+Pj4+PiBZZXMuIEl0IGlzIHRoZSBzYW1lIGZv
ciBhbGwgU29DcyBhbmQgYWxsIFRaIHZlcnNpb25zIGN1cnJlbnRseS4NCj4gPj4+Pj4+DQo+ID4+
Pj4+IFRoYXQncyBnb29kIG5ld3MhDQo+ID4+Pj4+DQo+ID4+Pj4+IElzIHRoaXMgVVVJRCB1c2Vk
IGluIGFueSB1c2Vyc3BhY2UgY29tcG9uZW50PyAoZXhhbXBsZTogQW5kcm9pZA0KPiA+Pj4+PiBI
QUxzPykNCj4gPj4+PiBOby4gVXNlcnNwYWNlIG5ldmVyIHVzZSBpdC4gSWYgdXNlcnNwYWNlIHdv
dWxkIGxpa2UgdG8gYWxsb2NhdGUgdGhpcw0KPiA+Pj4+IHNlY3VyZSBidWZmZXIsIGl0IGNhbiBh
Y2hpZXZlIHRocm91Z2ggdGhlIGV4aXN0aW5nIGRtYWJ1ZiBJT0NUTCB2aWENCj4gPj4+PiAvZGV2
L2RtYV9oZWFwL210a19zdnAgbm9kZS4NCj4gPj4+Pg0KPiA+Pj4gSW4gZ2VuZXJhbCBJIHRoaW5r
IGFzIG1lbnRpb25lZCBlbHNld2hlcmUgaW4gY29tbWVudHMsIHRoYXQgdGhlcmUgaXNuJ3QNCj4g
Pj4+IHRoYXQgbXVjaCBoZXJlIHRoYXQgc2VlbXMgdG8gYmUgdW5pcXVlIGZvciBNZWRpYVRlayBp
biB0aGlzIHBhdGNoDQo+ID4+PiBzZXJpZXMsIHNvIEkgdGhpbmsgaXQgd29ydGggdG8gc2VlIHdo
ZXRoZXIgdGhpcyB3aG9sZSBwYXRjaCBzZXQgY2FuIGJlDQo+ID4+PiBtYWRlIG1vcmUgZ2VuZXJp
Yy4gSGF2aW5nIHNhaWQgdGhhdCwgdGhlIFVVSUQgaXMgYWx3YXlzIHVuaXF1ZSBmb3IgYQ0KPiA+
Pj4gY2VydGFpbiBUcnVzdGVkIEFwcGxpY2F0aW9uLiBTbywgaXQncyBub3QgZW50aXJlbHkgdHJ1
ZSBzYXlpbmcgdGhhdCB0aGUNCj4gPj4+IFVVSUQgaXMgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFu
ZCBhbGwgVHJ1c3Rab25lIHZlcnNpb25zLiBJdCBtaWdodCBiZQ0KPiA+Pj4gdHJ1ZSBmb3IgYSBm
YW1pbHkgb2YgTWVkaWFUZWsgZGV2aWNlcyBhbmQgdGhlIFRFRSBpbiB1c2UsIGJ1dCBub3QNCj4g
Pj4+IGdlbmVyaWNhbGx5Lg0KPiA+Pj4NCj4gPj4+IFNvLCBpZiB3ZSBuZWVkIHRvIGRpZmZlcmVu
dGlhdGUgYmV0d2VlbiBkaWZmZXJlbnQgVEEgaW1wbGVtZW50YXRpb25zLA0KPiA+Pj4gdGhlbiB3
ZSBuZWVkIGRpZmZlcmVudCBVVUlEcy4gSWYgaXQgd291bGQgYmUgcG9zc2libGUgdG8gbWFrZSB0
aGlzIHBhdGNoDQo+ID4+PiBzZXQgZ2VuZXJpYywgdGhlbiBpdCBzb3VuZHMgbGlrZSBhIHNpbmds
ZSBVVUlEIHdvdWxkIGJlIHN1ZmZpY2llbnQsIGJ1dA0KPiA+Pj4gdGhhdCB3b3VsZCBpbXBseSB0
aGF0IGFsbCBUQSdzIHN1cHBvcnRpbmcgc3VjaCBhIGdlbmVyaWMgVVVJRCB3b3VsZCBiZQ0KPiA+
Pj4gaW1wbGVtZW50ZWQgdGhlIHNhbWUgZnJvbSBhbiBBUEkgcG9pbnQgb2Ygdmlldy4gV2hpY2gg
YWxzbyBtZWFucyB0aGF0DQo+ID4+PiBmb3IgZXhhbXBsZSBUcnVzdGVkIEFwcGxpY2F0aW9uIGZ1
bmN0aW9uIElEJ3MgbmVlZHMgdG8gYmUgdGhlIHNhbWUgZXRjLg0KPiA+Pj4gTm90IGltcG9zc2li
bGUgdG8gYWNoaWV2ZSwgYnV0IHN0aWxsIG5vdCBlYXN5IChkaWZmZXJlbnQgVEVFIGZvbGxvd3MN
Cj4gPj4+IGRpZmZlcmVudCBzcGVjaWZpY2F0aW9ucykgYW5kIGl0J3Mgbm90IHR5cGljYWxseSBz
b21ldGhpbmcgd2UndmUgZG9uZSBpbg0KPiA+Pj4gdGhlIHBhc3QuDQo+ID4+Pg0KPiA+Pj4gVW5m
b3J0dW5hdGVseSB0aGVyZSBpcyBubyBzdGFuZGFyZGl6ZWQgZGF0YWJhc2Ugb2YgVEEncyBkZXNj
cmliaW5nIHdoYXQNCj4gPj4+IHRoZXkgaW1wbGVtZW50IGFuZCBzdXBwb3J0Lg0KPiA+Pj4NCj4g
Pj4+IEFzIGFuIGFsdGVybmF0aXZlLCB3ZSBjb3VsZCBpbXBsZW1lbnQgYSBxdWVyeSBjYWxsIGlu
IHRoZSBURUUgYW5zd2VyaW5nLA0KPiA+Pj4gIldoYXQgVVVJRCBkb2VzIHlvdXIgVEEgaGF2ZSB0
aGF0IGltcGxlbWVudHMgc2VjdXJlIHVubWFwcGVkIGhlYXA/Ii4NCj4gPj4+IEkuZS4sIHNvbWV0
aGluZyB0aGF0IHJlbWluZHMgb2YgYSBsb29rdXAgdGFibGUuIFRoZW4gd2Ugd291bGRuJ3QgaGF2
ZSB0bw0KPiA+Pj4gY2FycnkgdGhpcyBpbiBVQVBJLCBEVCBvciBhbnl3aGVyZSBlbHNlLg0KPiA+
PiBKb2FraW0gZG9lcyBhIFRBIGNvdWxkIG9mZmVyIGEgZ2VuZXJpYyBBUEkgYW5kIGhpZGUgdGhl
IGhhcmR3YXJlIHNwZWNpZmljDQo+ID4+IGRldGFpbHMgKGxpa2Uga2VybmVsIHVBUEkgZG9lcyBm
b3IgZHJpdmVycykgPw0KPiA+IEl0IHdvdWxkIGhhdmUgdG8gZ28gdGhyb3VnaCBhbm90aGVyIGxh
eWVyIChsaWtlIHRoZSB0ZWUgZHJpdmVyKSB0byBiZQ0KPiA+IGEgZ2VuZXJpYyBBUEkuIFRoZSBt
YWluIGlzc3VlIHdpdGggVEFzIGlzIHRoYXQgdGhleSBoYXZlIFVVSURzIHlvdQ0KPiA+IG5lZWQg
dG8gY29ubmVjdCB0byBhbmQgc3BlY2lmaWMgY29kZXMgZm9yIGVhY2ggZnVuY3Rpb247IHNvIHdl
IHNob3VsZA0KPiA+IGFic3RyYWN0IGF0IGEgbGF5ZXIgYWJvdmUgd2hlcmUgdGhvc2UgZXhpc3Qg
aW4gdGhlIGRtYS1oZWFwIGNvZGUuDQo+ID4+IEFzaWRlIHRoYXQgcXVlc3Rpb24gSSB3b25kZXIg
d2hhdCBhcmUgdGhlIG5lZWRzIHRvIHBlcmZvcm0gYSAnc2VjdXJlJyBwbGF5YmFjay4NCj4gPj4g
SSBoYXZlIGluIG1pbmQgMiByZXF1aXJlbWVudHM6DQo+ID4+IC0gc2VjdXJlIG1lbW9yeSByZWdp
b25zLCB3aGljaCBtZWFucyBjb25maWd1cmUgdGhlIGhhcmR3YXJlIHRvIGVuc3VyZSB0aGF0IG9u
bHkNCj4gPj4gZGVkaWNhdGVkIGhhcmR3YXJlIGJsb2NrcyBhbmQgcmVhZCBvciB3cml0ZSBpbnRv
IGl0Lg0KPiA+PiAtIHNldCBoYXJkd2FyZSBibG9ja3MgaW4gc2VjdXJlIG1vZGVzIHNvIHRoZXkg
YWNjZXNzIHRvIHNlY3VyZSBtZW1vcnkuDQo+ID4+IERvIHlvdSBzZWUgc29tZXRoaW5nIGVsc2Ug
Pw0KPiA+IFRoaXMgaXMgbW9yZSBvciBsZXNzIHdoYXQgaXMgcmVxdWlyZWQsIGJ1dCB0aGlzIGlz
IG91dCBvZiBzY29wZSBmb3INCj4gPiB0aGUgTGludXgga2VybmVsIHNpbmNlIGl0IGNhbid0IGJl
IHRydXN0ZWQgdG8gZG8gdGhlc2UgdGhpbmdzLi4udGhpcw0KPiA+IGlzIGFsbCBkb25lIGluIGZp
cm13YXJlIG9yIHRoZSBURUUgaXRzZWxmLg0KPg0KPiBZZXMga2VybmVsIGNhbid0IGJlIHRydXN0
ZWQgdG8gZG8gdGhlc2UgdGhpbmdzIGJ1dCBrbm93IHdoYXQgd2UgbmVlZCBjb3VsZCBoZWxwDQo+
IHRvIGRlZmluZSBhIEFQSSBmb3IgYSBnZW5lcmljIFRBLg0KPg0KPiBKdXN0IHRvIGJyYWluc3Rv
cm0gb24gbWFpbGluZyBsaXN0Og0KPiBXaGF0IGFib3V0IGEgVEEgQVBJIGxpa2UNCj4gVEFfc2Vj
dXJlX21lbW9yeV9yZWdpb24oKSBhbmQgVEFfdW5zZWN1cmVfbWVtb3J5X3JlZ2lvbigpIHdpdGgg
cGFyYW1ldGVycyBsaWtlOg0KPiAtIGRldmljZSBpZGVudGlmaWVyIChhbiBJRCBvciBjb21wYXRp
YmxlIHN0cmluZyBtYXliZSkNCj4gLSBtZW1vcnkgcmVnaW9uIChwaHlzaWNhbCBhZGRyZXNzLCBz
aXplLCBvZmZzZXQpDQo+IC0gcmVxdWVzdGVkIGFjY2VzcyByaWdodHMgKHJlYWQsIHdyaXRlKQ0K
Pg0KPiBhbmQgb24ga2VybmVsIHNpZGUgYSBJT01NVSBkcml2ZXIgYmVjYXVzZSBpdCBiYXNpY2Fs
bHkgaGF2ZSBhbGwgdGhpcyBpbmZvcm1hdGlvbiBhbHJlYWR5DQo+IChkZXZpY2UgYXR0YWNobWVu
dCwga2VybmVsIG1hcC91bm1hcCkuDQo+DQo+IEluIG15IG1pbmQgaXQgc291bmQgbGlrZSBhIHNv
bHV0aW9uIHRvIGxpbWl0IHRoZSBpbXBhY3QgKG5ldyBjb250cm9scywgbmV3IG1lbW9yeSB0eXBl
KQ0KPiBpbnNpZGUgdjRsMi4gUHJvYmFibHkgd2Ugd29uJ3QgbmVlZCBuZXcgaGVhcCBlaXRoZXIu
DQo+IEFsbCBoYXJkd2FyZSBkZWRpY2F0ZWQgaW1wbGVtZW50YXRpb25zIGNvdWxkIGxpdmUgaW5z
aWRlIHRoZSBUQSB3aGljaCBjYW4gb2ZmZXIgYSBnZW5lcmljDQo+IEFQSS4NCg0KVGhlIG1haW4g
cHJvYmxlbSB3aXRoIHRoYXQgdHlwZSBvZiBkZXNpZ24gaXMgdGhlIGxpbWl0YXRpb25zIG9mDQpU
cnVzdFpvbmUgbWVtb3J5IHByb3RlY3Rpb24uIFVzdWFsbHkgdGhlcmUgaXMgYSBsaW1pdCB0byB0
aGUgbnVtYmVyIG9mDQpyZWdpb25zIHlvdSBjYW4gZGVmaW5lIGZvciBtZW1vcnkgcHJvdGVjdGlv
biAoYW5kIHRoZXJlIGlzIG9uDQpNZWRpYXRlaykuIFNvIHlvdSBjYW4ndCBwYXNzIGFuIGFyYml0
cmFyeSBtZW1vcnkgcmVnaW9uIGFuZCBtYXJrIGl0DQpwcm90ZWN0ZWQvdW5wcm90ZWN0ZWQgYXQg
YSBnaXZlbiB0aW1lLiBZb3UgbmVlZCB0byBlc3RhYmxpc2ggdGhlc2UNCnJlZ2lvbnMgaW4gdGhl
IGZpcm13YXJlIGluc3RlYWQgYW5kIHRoZW4gY29uZmlndXJlIHRob3NlIHJlZ2lvbnMgZm9yDQpw
cm90ZWN0aW9uIGluIHRoZSBmaXJtd2FyZSBvciB0aGUgVEVFLg0KDQo+DQo+ID4+IFJlZ2FyZHMs
DQo+ID4+IEJlbmphbWluDQo+ID4+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
