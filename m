Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BEB7CF781
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:52:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8025C40C42
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:52:56 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by lists.linaro.org (Postfix) with ESMTPS id 08FAC3F1C4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 18:56:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=d5209jZ8;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.166.179 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3514ece5ed4so25645ab.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 11:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695840991; x=1696445791; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MurAOYPXjHwdvk7TTp2tGZ93V7FzPadwfJU/w4cmONw=;
        b=d5209jZ8AUHvBtNt1iJMTXW0OFYUY5jR7/nfouhc8WUC7jNtHGEbH5KaezzyHQCCiL
         Uvmsg7QH2/F7vQueO71FUJCGEtbcu48M9Fu8cABtRRiOV5f7fyvvIYRzC9i/AtWzVbBr
         Ka6gAaVEoIAZckPLUMg1HnVX4cw9ZNKVOnwDEkhCqutrAnKznr9PfKi7X2qgNa36LQSS
         4kLXPQaf0viH2rz12Z41pq4NZpk3LobSXDO5UD39i+IdktsKKbX2VYl1svREkze3Yu7X
         EDUGaG2HIcptyyjBwmZMkoQJ98Xl4DZSXaoIosQcJqjnjrMNsavMXz+LI7Xhcf84wXMU
         WrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695840991; x=1696445791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MurAOYPXjHwdvk7TTp2tGZ93V7FzPadwfJU/w4cmONw=;
        b=uWlIbxAWw+RXXLI9j6OuI0oE498Y2kMo8+OCGMbCcIlQ2EiCMfry53bXEqAa4jJxNy
         0exNWbfTXee+MhnJQ7AU6PONkOPnm0Alcp99deicW/GYa8UIrYlEEBgu89kS3aIbcPXV
         60ZfIKrkEBg8k41g+4mkExNM27QnTG8xgYkj02I0jYDdWdq9xZSY+BaPoRkgZ6Wsx9U6
         7CtEQx6G4msCgU3REpc5V4knRK/cMk+Mz1Pv1ha3GVJ9swdS9CB9VoSqEL7XwIiQbxH4
         INjIhBaMOkja8GYFFY4n0zrFkHVM77I5o70lLaMaw/1EPcAJ/5FUkc8RCUxBobP1p5iA
         PHQg==
X-Gm-Message-State: AOJu0YxW79D8dcm1k0GTcwMVOleo4y1AiTbJXsC0PrvEQC82MXDte1cb
	p1v1AagIlGAfJqrmsbYvU6KgqLbPG8ZMW7y/68JH
X-Google-Smtp-Source: AGHT+IHpy0ebrOGWKBvJhgjGq+yQihXMl6pVYmNyHBVx+lU9W2/wuviNywEw1Opgza+nHML4UERjWiWazlDFeUjnHnI=
X-Received: by 2002:a05:6e02:1988:b0:34f:71b0:e72b with SMTP id
 g8-20020a056e02198800b0034f71b0e72bmr693354ilf.27.1695840991320; Wed, 27 Sep
 2023 11:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com> <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com> <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain> <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
In-Reply-To: <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 27 Sep 2023 11:56:20 -0700
Message-ID: <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.179:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	URIBL_BLOCKED(0.00)[mediatek.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 08FAC3F1C4
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FQ6Y7BBJBCAN5UEKTLQ5GBRGEU37TWPC
X-Message-ID-Hash: FQ6Y7BBJBCAN5UEKTLQ5GBRGEU37TWPC
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:47:25 +0000
CC: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm
 .com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FQ6Y7BBJBCAN5UEKTLQ5GBRGEU37TWPC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMjcsIDIwMjMgYXQgODoxOOKAr0FNIEJlbmphbWluIEdhaWduYXJkDQo8YmVu
amFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+DQo+IExlIDI3LzA5LzIw
MjMgw6AgMTU6NDYsIEpvYWtpbSBCZWNoIGEgw6ljcml0IDoNCj4gPiBPbiBNb24sIFNlcCAyNSwg
MjAyMyBhdCAxMjo0OTo1MFBNICswMDAwLCBZb25nIFd1ICjlkLTli4cpIHdyb3RlOg0KPiA+PiBP
biBUdWUsIDIwMjMtMDktMTIgYXQgMTE6MzIgKzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIHdyb3RlOg0KPiA+Pj4gSWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykgaGEg
c2NyaXR0bzoNCj4gPj4+PiBPbiBNb24sIDIwMjMtMDktMTEgYXQgMTE6MjkgKzAyMDAsIEFuZ2Vs
b0dpb2FjY2hpbm8gRGVsIFJlZ25vDQo+ID4+Pj4gd3JvdGU6DQo+ID4+Pj4+IElsIDExLzA5LzIz
IDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+ID4+Pj4+PiBUaGUgVEVFIHByb2JlIGxhdGVy
IHRoYW4gZG1hLWJ1ZiBoZWFwLCBhbmQgUFJPQkVfREVERVIgZG9lc24ndA0KPiA+Pj4+Pj4gd29y
aw0KPiA+Pj4+Pj4gaGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIHBsYXRmb3JtIGRyaXZlciwgdGhl
cmVmb3JlIGluaXRpYWxpc2UNCj4gPj4+Pj4+IHRoZQ0KPiA+Pj4+Pj4gVEVFDQo+ID4+Pj4+PiBj
b250ZXh0L3Nlc3Npb24gd2hpbGUgd2UgYWxsb2NhdGUgdGhlIGZpcnN0IHNlY3VyZSBidWZmZXIu
DQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRp
YXRlay5jb20+DQo+ID4+Pj4+PiAtLS0NCj4gPj4+Pj4+ICAgICBkcml2ZXJzL2RtYS1idWYvaGVh
cHMvbXRrX3NlY3VyZV9oZWFwLmMgfCA2MQ0KPiA+Pj4+Pj4gKysrKysrKysrKysrKysrKysrKysr
KysrKw0KPiA+Pj4+Pj4gICAgIDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspDQo+ID4+
Pj4+Pg0KPiA+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2Vj
dXJlX2hlYXAuYw0KPiA+Pj4+Pj4gYi9kcml2ZXJzL2RtYS0NCj4gPj4+Pj4+IGJ1Zi9oZWFwcy9t
dGtfc2VjdXJlX2hlYXAuYw0KPiA+Pj4+Pj4gaW5kZXggYmJmMWM4ZGNlMjNlLi5lM2RhMzNhM2Qw
ODMgMTAwNjQ0DQo+ID4+Pj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3Vy
ZV9oZWFwLmMNCj4gPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJl
X2hlYXAuYw0KPiA+Pj4+Pj4gQEAgLTEwLDYgKzEwLDEyIEBADQo+ID4+Pj4+PiAgICAgI2luY2x1
ZGUgPGxpbnV4L2Vyci5oPg0KPiA+Pj4+Pj4gICAgICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4N
Cj4gPj4+Pj4+ICAgICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiA+Pj4+Pj4gKyNpbmNsdWRl
IDxsaW51eC90ZWVfZHJ2Lmg+DQo+ID4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3V1aWQuaD4NCj4g
Pj4+Pj4+ICsNCj4gPj4+Pj4+ICsjZGVmaW5lIFRaX1RBX01FTV9VVUlEICAgICAgICAgICI0NDc3
NTg4YS04NDc2LTExZTItYWQxNS0NCj4gPj4+Pj4+IGU0MWYxMzkwZDY3NiINCj4gPj4+Pj4+ICsN
Cj4gPj4+Pj4gSXMgdGhpcyBVVUlEIHRoZSBzYW1lIGZvciBhbGwgU29DcyBhbmQgYWxsIFRaIHZl
cnNpb25zPw0KPiA+Pj4+IFllcy4gSXQgaXMgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwg
VFogdmVyc2lvbnMgY3VycmVudGx5Lg0KPiA+Pj4+DQo+ID4+PiBUaGF0J3MgZ29vZCBuZXdzIQ0K
PiA+Pj4NCj4gPj4+IElzIHRoaXMgVVVJRCB1c2VkIGluIGFueSB1c2Vyc3BhY2UgY29tcG9uZW50
PyAoZXhhbXBsZTogQW5kcm9pZA0KPiA+Pj4gSEFMcz8pDQo+ID4+IE5vLiBVc2Vyc3BhY2UgbmV2
ZXIgdXNlIGl0LiBJZiB1c2Vyc3BhY2Ugd291bGQgbGlrZSB0byBhbGxvY2F0ZSB0aGlzDQo+ID4+
IHNlY3VyZSBidWZmZXIsIGl0IGNhbiBhY2hpZXZlIHRocm91Z2ggdGhlIGV4aXN0aW5nIGRtYWJ1
ZiBJT0NUTCB2aWENCj4gPj4gL2Rldi9kbWFfaGVhcC9tdGtfc3ZwIG5vZGUuDQo+ID4+DQo+ID4g
SW4gZ2VuZXJhbCBJIHRoaW5rIGFzIG1lbnRpb25lZCBlbHNld2hlcmUgaW4gY29tbWVudHMsIHRo
YXQgdGhlcmUgaXNuJ3QNCj4gPiB0aGF0IG11Y2ggaGVyZSB0aGF0IHNlZW1zIHRvIGJlIHVuaXF1
ZSBmb3IgTWVkaWFUZWsgaW4gdGhpcyBwYXRjaA0KPiA+IHNlcmllcywgc28gSSB0aGluayBpdCB3
b3J0aCB0byBzZWUgd2hldGhlciB0aGlzIHdob2xlIHBhdGNoIHNldCBjYW4gYmUNCj4gPiBtYWRl
IG1vcmUgZ2VuZXJpYy4gSGF2aW5nIHNhaWQgdGhhdCwgdGhlIFVVSUQgaXMgYWx3YXlzIHVuaXF1
ZSBmb3IgYQ0KPiA+IGNlcnRhaW4gVHJ1c3RlZCBBcHBsaWNhdGlvbi4gU28sIGl0J3Mgbm90IGVu
dGlyZWx5IHRydWUgc2F5aW5nIHRoYXQgdGhlDQo+ID4gVVVJRCBpcyB0aGUgc2FtZSBmb3IgYWxs
IFNvQ3MgYW5kIGFsbCBUcnVzdFpvbmUgdmVyc2lvbnMuIEl0IG1pZ2h0IGJlDQo+ID4gdHJ1ZSBm
b3IgYSBmYW1pbHkgb2YgTWVkaWFUZWsgZGV2aWNlcyBhbmQgdGhlIFRFRSBpbiB1c2UsIGJ1dCBu
b3QNCj4gPiBnZW5lcmljYWxseS4NCj4gPg0KPiA+IFNvLCBpZiB3ZSBuZWVkIHRvIGRpZmZlcmVu
dGlhdGUgYmV0d2VlbiBkaWZmZXJlbnQgVEEgaW1wbGVtZW50YXRpb25zLA0KPiA+IHRoZW4gd2Ug
bmVlZCBkaWZmZXJlbnQgVVVJRHMuIElmIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIG1ha2UgdGhp
cyBwYXRjaA0KPiA+IHNldCBnZW5lcmljLCB0aGVuIGl0IHNvdW5kcyBsaWtlIGEgc2luZ2xlIFVV
SUQgd291bGQgYmUgc3VmZmljaWVudCwgYnV0DQo+ID4gdGhhdCB3b3VsZCBpbXBseSB0aGF0IGFs
bCBUQSdzIHN1cHBvcnRpbmcgc3VjaCBhIGdlbmVyaWMgVVVJRCB3b3VsZCBiZQ0KPiA+IGltcGxl
bWVudGVkIHRoZSBzYW1lIGZyb20gYW4gQVBJIHBvaW50IG9mIHZpZXcuIFdoaWNoIGFsc28gbWVh
bnMgdGhhdA0KPiA+IGZvciBleGFtcGxlIFRydXN0ZWQgQXBwbGljYXRpb24gZnVuY3Rpb24gSUQn
cyBuZWVkcyB0byBiZSB0aGUgc2FtZSBldGMuDQo+ID4gTm90IGltcG9zc2libGUgdG8gYWNoaWV2
ZSwgYnV0IHN0aWxsIG5vdCBlYXN5IChkaWZmZXJlbnQgVEVFIGZvbGxvd3MNCj4gPiBkaWZmZXJl
bnQgc3BlY2lmaWNhdGlvbnMpIGFuZCBpdCdzIG5vdCB0eXBpY2FsbHkgc29tZXRoaW5nIHdlJ3Zl
IGRvbmUgaW4NCj4gPiB0aGUgcGFzdC4NCj4gPg0KPiA+IFVuZm9ydHVuYXRlbHkgdGhlcmUgaXMg
bm8gc3RhbmRhcmRpemVkIGRhdGFiYXNlIG9mIFRBJ3MgZGVzY3JpYmluZyB3aGF0DQo+ID4gdGhl
eSBpbXBsZW1lbnQgYW5kIHN1cHBvcnQuDQo+ID4NCj4gPiBBcyBhbiBhbHRlcm5hdGl2ZSwgd2Ug
Y291bGQgaW1wbGVtZW50IGEgcXVlcnkgY2FsbCBpbiB0aGUgVEVFIGFuc3dlcmluZywNCj4gPiAi
V2hhdCBVVUlEIGRvZXMgeW91ciBUQSBoYXZlIHRoYXQgaW1wbGVtZW50cyBzZWN1cmUgdW5tYXBw
ZWQgaGVhcD8iLg0KPiA+IEkuZS4sIHNvbWV0aGluZyB0aGF0IHJlbWluZHMgb2YgYSBsb29rdXAg
dGFibGUuIFRoZW4gd2Ugd291bGRuJ3QgaGF2ZSB0bw0KPiA+IGNhcnJ5IHRoaXMgaW4gVUFQSSwg
RFQgb3IgYW55d2hlcmUgZWxzZS4NCj4NCj4gSm9ha2ltIGRvZXMgYSBUQSBjb3VsZCBvZmZlciBh
IGdlbmVyaWMgQVBJIGFuZCBoaWRlIHRoZSBoYXJkd2FyZSBzcGVjaWZpYw0KPiBkZXRhaWxzIChs
aWtlIGtlcm5lbCB1QVBJIGRvZXMgZm9yIGRyaXZlcnMpID8NCkl0IHdvdWxkIGhhdmUgdG8gZ28g
dGhyb3VnaCBhbm90aGVyIGxheWVyIChsaWtlIHRoZSB0ZWUgZHJpdmVyKSB0byBiZQ0KYSBnZW5l
cmljIEFQSS4gVGhlIG1haW4gaXNzdWUgd2l0aCBUQXMgaXMgdGhhdCB0aGV5IGhhdmUgVVVJRHMg
eW91DQpuZWVkIHRvIGNvbm5lY3QgdG8gYW5kIHNwZWNpZmljIGNvZGVzIGZvciBlYWNoIGZ1bmN0
aW9uOyBzbyB3ZSBzaG91bGQNCmFic3RyYWN0IGF0IGEgbGF5ZXIgYWJvdmUgd2hlcmUgdGhvc2Ug
ZXhpc3QgaW4gdGhlIGRtYS1oZWFwIGNvZGUuDQo+DQo+IEFzaWRlIHRoYXQgcXVlc3Rpb24gSSB3
b25kZXIgd2hhdCBhcmUgdGhlIG5lZWRzIHRvIHBlcmZvcm0gYSAnc2VjdXJlJyBwbGF5YmFjay4N
Cj4gSSBoYXZlIGluIG1pbmQgMiByZXF1aXJlbWVudHM6DQo+IC0gc2VjdXJlIG1lbW9yeSByZWdp
b25zLCB3aGljaCBtZWFucyBjb25maWd1cmUgdGhlIGhhcmR3YXJlIHRvIGVuc3VyZSB0aGF0IG9u
bHkNCj4gZGVkaWNhdGVkIGhhcmR3YXJlIGJsb2NrcyBhbmQgcmVhZCBvciB3cml0ZSBpbnRvIGl0
Lg0KPiAtIHNldCBoYXJkd2FyZSBibG9ja3MgaW4gc2VjdXJlIG1vZGVzIHNvIHRoZXkgYWNjZXNz
IHRvIHNlY3VyZSBtZW1vcnkuDQo+IERvIHlvdSBzZWUgc29tZXRoaW5nIGVsc2UgPw0KVGhpcyBp
cyBtb3JlIG9yIGxlc3Mgd2hhdCBpcyByZXF1aXJlZCwgYnV0IHRoaXMgaXMgb3V0IG9mIHNjb3Bl
IGZvcg0KdGhlIExpbnV4IGtlcm5lbCBzaW5jZSBpdCBjYW4ndCBiZSB0cnVzdGVkIHRvIGRvIHRo
ZXNlIHRoaW5ncy4uLnRoaXMNCmlzIGFsbCBkb25lIGluIGZpcm13YXJlIG9yIHRoZSBURUUgaXRz
ZWxmLg0KPg0KPiBSZWdhcmRzLA0KPiBCZW5qYW1pbg0KPg0KPiA+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
