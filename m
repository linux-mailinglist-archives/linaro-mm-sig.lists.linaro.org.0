Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 107F77CF77F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:52:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 229CC40C20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:52:37 +0000 (UTC)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by lists.linaro.org (Postfix) with ESMTPS id 7EC923F1C4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 18:54:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HwpXNLMT;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.166.169 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-351367c1c24so23475ab.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Sep 2023 11:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695840855; x=1696445655; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgknUwnq9gIV+tvRlScN3zfltL029CTlXmtn1qWfZ48=;
        b=HwpXNLMT0nZUQIj5IpaRSF0jIwcaBmE7kRxrKfFM4+vcL57kqbFZCsDdOPs0wKNgpQ
         JglXWGOdWJpAs++OAw0n/OqWLc0uHpFJBPeT0wxnh4LGc6234KbqAjt2P3XTjbPzqRTi
         sz/WKevgRnEOzGqt2+afXlMBpdgUUXZ940BpoJ3MIzT9xB3txmdf9oeRmRpDR8nBjCiD
         ++dFhmrQmb+2h4BMGC30RjJgxA9VLSR1cBaZx6RIzaSkvcLoVvvYvazJ7PufOmDwzp9t
         qbP+mPPsp9pt1OSbxF6z9MbHBrJWXjfHmJhhgfKYswft6puYesBjV2U+Uu1kKZ1yo8d4
         hySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695840855; x=1696445655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pgknUwnq9gIV+tvRlScN3zfltL029CTlXmtn1qWfZ48=;
        b=M0MapsyoSoVWc9L3TPWyLF35h6b1RSr3YS6Ndfl3GWLfFTzMp4DJFEGI1lb85OX6EJ
         qKMcPtiguvYwTe6kHGxjNG+9LEMkbxxJZrwJ6p4YOFu/u4ITjgDg53HN7aNFdpK1Au+J
         zK/KYoI9PlnSXgr7IsUtOFa4XnH0yvBvGAuB8KJz62oApH6PKEj9Y0eLn0BETCZOQ/a7
         59qXp7gRI2ZNRD1nTCXULCXQMUnV4WgaeOI9xVSREseTBpxslBQ/4Hp+KLsLdX/KNdMO
         fZ9QxfRSgGDHCMyfTbBH9hUzLXmsUlBLlFTc+SxnzkAiHRC2XqnRdWPv77vIFTzTBYYD
         oRJw==
X-Gm-Message-State: AOJu0YxD/MJddBqADtyX7LjYk+/LmOg1wNv83erWUIiD4y+r+4jcHuzG
	ulMReEygCGahgUVZH5laKe8c4c2oD4vUke9VzfRW
X-Google-Smtp-Source: AGHT+IGFTNOeIjY0z4z1jsppqGQ/+DkN5LKNzVhtRpc1fe/Zjm0L6bfMROX9KjJp8peSFpnQgwJTEYqVV/8DUuyxQQM=
X-Received: by 2002:a92:c242:0:b0:34d:ff4c:5e3a with SMTP id
 k2-20020a92c242000000b0034dff4c5e3amr748810ilo.10.1695840854718; Wed, 27 Sep
 2023 11:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com> <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com> <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
In-Reply-To: <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 27 Sep 2023 11:54:03 -0700
Message-ID: <CA+ddPcNDOsd4+1a3W5ufA-FaCc801bKkA-OapNKOC8snXrntAw@mail.gmail.com>
To: Joakim Bech <joakim.bech@linaro.org>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.169:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	URIBL_BLOCKED(0.00)[linaro.org:email,mail-il1-f169.google.com:helo,mail-il1-f169.google.com:rdns,mediatek.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7EC923F1C4
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OA45CIW355OS7PYOB7AJRBN3A5DBS6HB
X-Message-ID-Hash: OA45CIW355OS7PYOB7AJRBN3A5DBS6HB
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:47:24 +0000
CC: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.co
 m" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OA45CIW355OS7PYOB7AJRBN3A5DBS6HB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgMjcsIDIwMjMgYXQgNjo0NuKAr0FNIEpvYWtpbSBCZWNoIDxqb2FraW0uYmVj
aEBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCBTZXAgMjUsIDIwMjMgYXQgMTI6NDk6
NTBQTSArMDAwMCwgWW9uZyBXdSAo5ZC05YuHKSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjMtMDkt
MTIgYXQgMTE6MzIgKzAyMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOg0KPiA+
ID4gSWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykgaGEgc2NyaXR0bzoNCj4gPiA+
ID4gT24gTW9uLCAyMDIzLTA5LTExIGF0IDExOjI5ICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERl
bCBSZWdubw0KPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiBJbCAxMS8wOS8yMyAwNDozMCwgWW9u
ZyBXdSBoYSBzY3JpdHRvOg0KPiA+ID4gPiA+ID4gVGhlIFRFRSBwcm9iZSBsYXRlciB0aGFuIGRt
YS1idWYgaGVhcCwgYW5kIFBST0JFX0RFREVSIGRvZXNuJ3QNCj4gPiA+ID4gPiA+IHdvcmsNCj4g
PiA+ID4gPiA+IGhlcmUgc2luY2UgdGhpcyBpcyBub3QgYSBwbGF0Zm9ybSBkcml2ZXIsIHRoZXJl
Zm9yZSBpbml0aWFsaXNlDQo+ID4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiA+IFRFRQ0KPiA+ID4g
PiA+ID4gY29udGV4dC9zZXNzaW9uIHdoaWxlIHdlIGFsbG9jYXRlIHRoZSBmaXJzdCBzZWN1cmUg
YnVmZmVyLg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFlvbmcgV3Ug
PHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiAgICBk
cml2ZXJzL2RtYS1idWYvaGVhcHMvbXRrX3NlY3VyZV9oZWFwLmMgfCA2MQ0KPiA+ID4gPiA+ID4g
KysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQs
IDYxIGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+ID4gPiA+ID4gPiBiL2Ry
aXZlcnMvZG1hLQ0KPiA+ID4gPiA+ID4gYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+ID4g
PiA+ID4gPiBpbmRleCBiYmYxYzhkY2UyM2UuLmUzZGEzM2EzZDA4MyAxMDA2NDQNCj4gPiA+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0KPiA+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+ID4g
PiA+ID4gPiBAQCAtMTAsNiArMTAsMTIgQEANCj4gPiA+ID4gPiA+ICAgICNpbmNsdWRlIDxsaW51
eC9lcnIuaD4NCj4gPiA+ID4gPiA+ICAgICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCj4gPiA+
ID4gPiA+ICAgICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ID4gPiA+ID4gPiArI2luY2x1ZGUg
PGxpbnV4L3RlZV9kcnYuaD4NCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvdXVpZC5oPg0K
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyNkZWZpbmUgVFpfVEFfTUVNX1VVSUQgICAgICAg
ICAgICAgICAiNDQ3NzU4OGEtODQ3Ni0xMWUyLWFkMTUtDQo+ID4gPiA+ID4gPiBlNDFmMTM5MGQ2
NzYiDQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJcyB0aGlzIFVVSUQgdGhl
IHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lvbnM/DQo+ID4gPiA+DQo+ID4gPiA+
IFllcy4gSXQgaXMgdGhlIHNhbWUgZm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lvbnMgY3Vy
cmVudGx5Lg0KPiA+ID4gPg0KPiA+ID4NCj4gPiA+IFRoYXQncyBnb29kIG5ld3MhDQo+ID4gPg0K
PiA+ID4gSXMgdGhpcyBVVUlEIHVzZWQgaW4gYW55IHVzZXJzcGFjZSBjb21wb25lbnQ/IChleGFt
cGxlOiBBbmRyb2lkDQo+ID4gPiBIQUxzPykNCj4gPg0KPiA+IE5vLiBVc2Vyc3BhY2UgbmV2ZXIg
dXNlIGl0LiBJZiB1c2Vyc3BhY2Ugd291bGQgbGlrZSB0byBhbGxvY2F0ZSB0aGlzDQo+ID4gc2Vj
dXJlIGJ1ZmZlciwgaXQgY2FuIGFjaGlldmUgdGhyb3VnaCB0aGUgZXhpc3RpbmcgZG1hYnVmIElP
Q1RMIHZpYQ0KPiA+IC9kZXYvZG1hX2hlYXAvbXRrX3N2cCBub2RlLg0KPiA+DQo+IEluIGdlbmVy
YWwgSSB0aGluayBhcyBtZW50aW9uZWQgZWxzZXdoZXJlIGluIGNvbW1lbnRzLCB0aGF0IHRoZXJl
IGlzbid0DQo+IHRoYXQgbXVjaCBoZXJlIHRoYXQgc2VlbXMgdG8gYmUgdW5pcXVlIGZvciBNZWRp
YVRlayBpbiB0aGlzIHBhdGNoDQo+IHNlcmllcywgc28gSSB0aGluayBpdCB3b3J0aCB0byBzZWUg
d2hldGhlciB0aGlzIHdob2xlIHBhdGNoIHNldCBjYW4gYmUNCj4gbWFkZSBtb3JlIGdlbmVyaWMu
IEhhdmluZyBzYWlkIHRoYXQsIHRoZSBVVUlEIGlzIGFsd2F5cyB1bmlxdWUgZm9yIGENCj4gY2Vy
dGFpbiBUcnVzdGVkIEFwcGxpY2F0aW9uLiBTbywgaXQncyBub3QgZW50aXJlbHkgdHJ1ZSBzYXlp
bmcgdGhhdCB0aGUNCj4gVVVJRCBpcyB0aGUgc2FtZSBmb3IgYWxsIFNvQ3MgYW5kIGFsbCBUcnVz
dFpvbmUgdmVyc2lvbnMuIEl0IG1pZ2h0IGJlDQo+IHRydWUgZm9yIGEgZmFtaWx5IG9mIE1lZGlh
VGVrIGRldmljZXMgYW5kIHRoZSBURUUgaW4gdXNlLCBidXQgbm90DQo+IGdlbmVyaWNhbGx5Lg0K
Pg0KPiBTbywgaWYgd2UgbmVlZCB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gZGlmZmVyZW50IFRB
IGltcGxlbWVudGF0aW9ucywNCj4gdGhlbiB3ZSBuZWVkIGRpZmZlcmVudCBVVUlEcy4gSWYgaXQg
d291bGQgYmUgcG9zc2libGUgdG8gbWFrZSB0aGlzIHBhdGNoDQo+IHNldCBnZW5lcmljLCB0aGVu
IGl0IHNvdW5kcyBsaWtlIGEgc2luZ2xlIFVVSUQgd291bGQgYmUgc3VmZmljaWVudCwgYnV0DQo+
IHRoYXQgd291bGQgaW1wbHkgdGhhdCBhbGwgVEEncyBzdXBwb3J0aW5nIHN1Y2ggYSBnZW5lcmlj
IFVVSUQgd291bGQgYmUNCj4gaW1wbGVtZW50ZWQgdGhlIHNhbWUgZnJvbSBhbiBBUEkgcG9pbnQg
b2Ygdmlldy4gV2hpY2ggYWxzbyBtZWFucyB0aGF0DQo+IGZvciBleGFtcGxlIFRydXN0ZWQgQXBw
bGljYXRpb24gZnVuY3Rpb24gSUQncyBuZWVkcyB0byBiZSB0aGUgc2FtZSBldGMuDQo+IE5vdCBp
bXBvc3NpYmxlIHRvIGFjaGlldmUsIGJ1dCBzdGlsbCBub3QgZWFzeSAoZGlmZmVyZW50IFRFRSBm
b2xsb3dzDQo+IGRpZmZlcmVudCBzcGVjaWZpY2F0aW9ucykgYW5kIGl0J3Mgbm90IHR5cGljYWxs
eSBzb21ldGhpbmcgd2UndmUgZG9uZSBpbg0KPiB0aGUgcGFzdC4NCj4NCj4gVW5mb3J0dW5hdGVs
eSB0aGVyZSBpcyBubyBzdGFuZGFyZGl6ZWQgZGF0YWJhc2Ugb2YgVEEncyBkZXNjcmliaW5nIHdo
YXQNCj4gdGhleSBpbXBsZW1lbnQgYW5kIHN1cHBvcnQuDQo+DQo+IEFzIGFuIGFsdGVybmF0aXZl
LCB3ZSBjb3VsZCBpbXBsZW1lbnQgYSBxdWVyeSBjYWxsIGluIHRoZSBURUUgYW5zd2VyaW5nLA0K
PiAiV2hhdCBVVUlEIGRvZXMgeW91ciBUQSBoYXZlIHRoYXQgaW1wbGVtZW50cyBzZWN1cmUgdW5t
YXBwZWQgaGVhcD8iLg0KPiBJLmUuLCBzb21ldGhpbmcgdGhhdCByZW1pbmRzIG9mIGEgbG9va3Vw
IHRhYmxlLiBUaGVuIHdlIHdvdWxkbid0IGhhdmUgdG8NCj4gY2FycnkgdGhpcyBpbiBVQVBJLCBE
VCBvciBhbnl3aGVyZSBlbHNlLg0KPg0KDQpJIHRoaW5rIHRoYXQncyBhIGdvb2QgaWRlYS4gSWYg
d2UgYWRkIGtlcm5lbCBBUElzIHRvIHRoZSB0ZWUgZm9yDQpvcGVuaW5nIGEgc2Vzc2lvbiBmb3Ig
c2VjdXJlIG1lbW9yeSBhbGxvY2F0aW9uIGFuZCBmb3IgcGVyZm9ybWluZyB0aGUNCmFsbG9jYXRp
b24sIHRoZW4gdGhlIFVVSUQsIFRBIGNvbW1hbmRzIGFuZCBUQSBwYXJhbWV0ZXJzIGNhbiBhbGwg
YmUNCmRlY2lkZWQgdXBvbiBpbiB0aGUgVEVFIHNwZWNpZmljIGRyaXZlciBhbmQgdGhlIGNvZGUg
aW4gZG1hLWhlYXANCmJlY29tZXMgZ2VuZXJpYy4NCg0KPiAtLQ0KPiAvLyBSZWdhcmRzDQo+IEpv
YWtpbQ0KPg0KPiA+DQo+ID4gPiBJZiBpdCBpcyAoYW5kIEkgc29tZWhvdyBleHBlY3QgdGhhdCBp
dCBpcyksIHRoZW4gdGhpcyBkZWZpbml0aW9uDQo+ID4gPiBzaG91bGQgZ28NCj4gPiA+IHRvIGEg
VUFQSSBoZWFkZXIsIGFzIHN1Z2dlc3RlZCBieSBDaHJpc3RpYW4uDQo+ID4gPg0KPiA+ID4gQ2hl
ZXJzIQ0KPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRoYW5rcywNCj4gPiA+ID4gPiBBbmdl
bG8NCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiArI2RlZmluZSBNVEtfVEVFX1BB
UkFNX05VTSAgICAgICAgICAgIDQNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiAgICAvKg0KPiA+
ID4gPiA+ID4gICAgICogTWVkaWFUZWsgc2VjdXJlIChjaHVuaykgbWVtb3J5IHR5cGUNCj4gPiA+
ID4gPiA+IEBAIC0yOCwxNyArMzQsNzIgQEAgc3RydWN0IG10a19zZWN1cmVfaGVhcF9idWZmZXIg
ew0KPiA+ID4gPiA+ID4gICAgc3RydWN0IG10a19zZWN1cmVfaGVhcCB7DQo+ID4gPiA+ID4gPiAg
ICAgICBjb25zdCBjaGFyICAgICAgICAgICAgICAqbmFtZTsNCj4gPiA+ID4gPiA+ICAgICAgIGNv
bnN0IGVudW0ga3JlZV9tZW1fdHlwZSBtZW1fdHlwZTsNCj4gPiA+ID4gPiA+ICsgICAgIHUzMiAg
ICAgICAgICAgICAgICAgICAgICBtZW1fc2Vzc2lvbjsNCj4gPiA+ID4gPiA+ICsgICAgIHN0cnVj
dCB0ZWVfY29udGV4dCAgICAgICp0ZWVfY3R4Ow0KPiA+ID4gPiA+ID4gICAgfTsNCj4gPiA+ID4g
PiA+DQo+ID4gPiA+ID4gPiArc3RhdGljIGludCBtdGtfb3B0ZWVfY3R4X21hdGNoKHN0cnVjdCB0
ZWVfaW9jdGxfdmVyc2lvbl9kYXRhDQo+ID4gPiA+ID4gPiAqdmVyLA0KPiA+ID4gPiA+ID4gY29u
c3Qgdm9pZCAqZGF0YSkNCj4gPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiArICAgICByZXR1cm4g
dmVyLT5pbXBsX2lkID09IFRFRV9JTVBMX0lEX09QVEVFOw0KPiA+ID4gPiA+ID4gK30NCj4gPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtzdGF0aWMgaW50IG10a19rcmVlX3NlY3VyZV9zZXNzaW9u
X2luaXQoc3RydWN0IG10a19zZWN1cmVfaGVhcA0KPiA+ID4gPiA+ID4gKnNlY19oZWFwKQ0KPiA+
ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0ZWVfcGFyYW0gdF9wYXJhbVtN
VEtfVEVFX1BBUkFNX05VTV0gPSB7MH07DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX2lv
Y3RsX29wZW5fc2Vzc2lvbl9hcmcgYXJnID0gezB9Ow0KPiA+ID4gPiA+ID4gKyAgICAgdXVpZF90
IHRhX21lbV91dWlkOw0KPiA+ID4gPiA+ID4gKyAgICAgaW50IHJldDsNCj4gPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiA+ICsgICAgIHNlY19oZWFwLT50ZWVfY3R4ID0gdGVlX2NsaWVudF9vcGVuX2Nv
bnRleHQoTlVMTCwNCj4gPiA+ID4gPiA+IG10a19vcHRlZV9jdHhfbWF0Y2gsDQo+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEws
DQo+ID4gPiA+ID4gPiBOVUxMKTsNCj4gPiA+ID4gPiA+ICsgICAgIGlmIChJU19FUlIoc2VjX2hl
YXAtPnRlZV9jdHgpKSB7DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHByX2VycigiJXM6IG9w
ZW4gY29udGV4dCBmYWlsZWQsIHJldD0lbGRcbiIsDQo+ID4gPiA+ID4gPiBzZWNfaGVhcC0NCj4g
PiA+ID4gPiA+ID4gbmFtZSwNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICBQVFJfRVJSKHNlY19oZWFwLT50ZWVfY3R4KSk7DQo+ID4gPiA+ID4gPiArICAgICAg
ICAgICAgIHJldHVybiAtRU5PREVWOw0KPiA+ID4gPiA+ID4gKyAgICAgfQ0KPiA+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ID4gKyAgICAgYXJnLm51bV9wYXJhbXMgPSBNVEtfVEVFX1BBUkFNX05VTTsN
Cj4gPiA+ID4gPiA+ICsgICAgIGFyZy5jbG50X2xvZ2luID0gVEVFX0lPQ1RMX0xPR0lOX1BVQkxJ
QzsNCj4gPiA+ID4gPiA+ICsgICAgIHJldCA9IHV1aWRfcGFyc2UoVFpfVEFfTUVNX1VVSUQsICZ0
YV9tZW1fdXVpZCk7DQo+ID4gPiA+ID4gPiArICAgICBpZiAocmV0KQ0KPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICBnb3RvIGNsb3NlX2NvbnRleHQ7DQo+ID4gPiA+ID4gPiArICAgICBtZW1jcHko
JmFyZy51dWlkLCAmdGFfbWVtX3V1aWQuYiwgc2l6ZW9mKHRhX21lbV91dWlkKSk7DQo+ID4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gPiArICAgICByZXQgPSB0ZWVfY2xpZW50X29wZW5fc2Vzc2lvbihz
ZWNfaGVhcC0+dGVlX2N0eCwgJmFyZywNCj4gPiA+ID4gPiA+IHRfcGFyYW0pOw0KPiA+ID4gPiA+
ID4gKyAgICAgaWYgKHJldCA8IDAgfHwgYXJnLnJldCkgew0KPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICBwcl9lcnIoIiVzOiBvcGVuIHNlc3Npb24gZmFpbGVkLCByZXQ9JWQ6JWRcbiIsDQo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBzZWNfaGVhcC0+bmFtZSwgcmV0LCBhcmcucmV0
KTsNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcmV0ID0gLUVJTlZBTDsNCj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgZ290byBjbG9zZV9jb250ZXh0Ow0KPiA+ID4gPiA+ID4gKyAgICAgfQ0K
PiA+ID4gPiA+ID4gKyAgICAgc2VjX2hlYXAtPm1lbV9zZXNzaW9uID0gYXJnLnNlc3Npb247DQo+
ID4gPiA+ID4gPiArICAgICByZXR1cm4gMDsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtj
bG9zZV9jb250ZXh0Og0KPiA+ID4gPiA+ID4gKyAgICAgdGVlX2NsaWVudF9jbG9zZV9jb250ZXh0
KHNlY19oZWFwLT50ZWVfY3R4KTsNCj4gPiA+ID4gPiA+ICsgICAgIHJldHVybiByZXQ7DQo+ID4g
PiA+ID4gPiArfQ0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gICAgc3RhdGljIHN0cnVjdCBk
bWFfYnVmICoNCj4gPiA+ID4gPiA+ICAgIG10a19zZWNfaGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1h
X2hlYXAgKmhlYXAsIHNpemVfdCBzaXplLA0KPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAg
ICB1bnNpZ25lZCBsb25nIGZkX2ZsYWdzLCB1bnNpZ25lZCBsb25nDQo+ID4gPiA+ID4gPiBoZWFw
X2ZsYWdzKQ0KPiA+ID4gPiA+ID4gICAgew0KPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IG10a19z
ZWN1cmVfaGVhcCAqc2VjX2hlYXAgPQ0KPiA+ID4gPiA+ID4gZG1hX2hlYXBfZ2V0X2RydmRhdGEo
aGVhcCk7DQo+ID4gPiA+ID4gPiAgICAgICBzdHJ1Y3QgbXRrX3NlY3VyZV9oZWFwX2J1ZmZlciAq
c2VjX2J1ZjsNCj4gPiA+ID4gPiA+ICAgICAgIERFRklORV9ETUFfQlVGX0VYUE9SVF9JTkZPKGV4
cF9pbmZvKTsNCj4gPiA+ID4gPiA+ICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ID4g
PiA+ID4gPiAgICAgICBpbnQgcmV0Ow0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ICsgICAgIC8q
DQo+ID4gPiA+ID4gPiArICAgICAgKiBURUUgcHJvYmUgbWF5IGJlIGxhdGUuIEluaXRpYWxpc2Ug
dGhlIHNlY3VyZSBzZXNzaW9uDQo+ID4gPiA+ID4gPiBpbiB0aGUNCj4gPiA+ID4gPiA+IGZpcnN0
DQo+ID4gPiA+ID4gPiArICAgICAgKiBhbGxvY2F0aW5nIHNlY3VyZSBidWZmZXIuDQo+ID4gPiA+
ID4gPiArICAgICAgKi8NCj4gPiA+ID4gPiA+ICsgICAgIGlmICghc2VjX2hlYXAtPm1lbV9zZXNz
aW9uKSB7DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJldCA9IG10a19rcmVlX3NlY3VyZV9z
ZXNzaW9uX2luaXQoc2VjX2hlYXApOw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBpZiAocmV0
KQ0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7
DQo+ID4gPiA+ID4gPiArICAgICB9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiAgICAgICBz
ZWNfYnVmID0ga3phbGxvYyhzaXplb2YoKnNlY19idWYpLCBHRlBfS0VSTkVMKTsNCj4gPiA+ID4g
PiA+ICAgICAgIGlmICghc2VjX2J1ZikNCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4NCj4gPiA+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
