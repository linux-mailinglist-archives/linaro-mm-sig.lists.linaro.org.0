Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A67CF788
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:54:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7407440C23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:54:01 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 73DB83F94D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Sep 2023 06:54:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=eBmLienb;
	spf=pass (lists.linaro.org: domain of benjamin.gaignard@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [IPV6:2a01:e0a:120:3210:df6a:b81:b9d2:d824] (unknown [IPv6:2a01:e0a:120:3210:df6a:b81:b9d2:d824])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E2E19660732B;
	Fri, 29 Sep 2023 07:54:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695970459;
	bh=O8YZ77epx2sINEGgheJrVOCXF6XG6Sc+CjdzPYmY2hE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eBmLienboXPfmiRedjLIQt1ffMXAggrXq+zZx1IJsOIyP3RC9PV62T0cCiABkKNko
	 MwF+angSnuoWHcduO3xZPFnT/Q+kSzNhAqGHVBzbsnkM2B1uqBRzJSFJNsHNunp7MO
	 e0NpAjOsmim/1BJiibClxluNbe62L4K2AaoD+cqcAe+JrWL6C3YzlJ92MEgAjgnt37
	 v4dgbzsuKgKqKc41/n8Xk+5KjMsiuX2qCoE946nu20K49GYz2TNOyrbLfxP8GqN3QS
	 vxnBmOkNkPk1VR2YazeL6TXlWNaXCTlYyNJPG8+s6Tk0O/0WvYM96OZp4iy1dQw/7d
	 RhSAmseeRAg3g==
Message-ID: <32e515e1-b7a2-de3c-723b-ade3ec760b4d@collabora.com>
Date: Fri, 29 Sep 2023 08:54:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jeffrey Kardatzke <jkardatzke@google.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-6-yong.wu@mediatek.com>
 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
 <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
 <d798b15b-6f35-96db-e3f7-5c0bcc5d46a2@collabora.com>
 <a4ecc2792f3a4d3159e34415be984ff7d5f5e263.camel@mediatek.com>
 <20230927134614.kp27moxdw72jiu4y@pop-os.localdomain>
 <3aaafe47-3733-a4d5-038d-a7e439309282@collabora.com>
 <CA+ddPcP4=p37cV5Tbn5zTUbiL4ou+Yqb=5rS+O_ff8ZUw64D3Q@mail.gmail.com>
 <80695726-1a98-12d4-ad7d-d731f2f3caeb@collabora.com>
 <CA+ddPcPES=4FcQRkvVnW=C9mL6hCxVfCcoLDJSjb58UiDmS_Mg@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CA+ddPcPES=4FcQRkvVnW=C9mL6hCxVfCcoLDJSjb58UiDmS_Mg@mail.gmail.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,gmail.com,amd.com,collabora.com,kernel.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,arm.com,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 73DB83F94D
X-MailFrom: benjamin.gaignard@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UCI33JHGDC6O6IUPANBPJAVNH4LXOH5C
X-Message-ID-Hash: UCI33JHGDC6O6IUPANBPJAVNH4LXOH5C
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:48:14 +0000
CC: Joakim Bech <joakim.bech@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm
 .com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCI33JHGDC6O6IUPANBPJAVNH4LXOH5C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpMZSAyOC8wOS8yMDIzIMOgIDE5OjQ4LCBKZWZmcmV5IEthcmRhdHprZSBhIMOpY3JpdMKgOg0K
PiBPbiBUaHUsIFNlcCAyOCwgMjAyMyBhdCAxOjMw4oCvQU0gQmVuamFtaW4gR2FpZ25hcmQNCj4g
PGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPj4NCj4+IExlIDI3LzA5
LzIwMjMgw6AgMjA6NTYsIEplZmZyZXkgS2FyZGF0emtlIGEgw6ljcml0IDoNCj4+PiBPbiBXZWQs
IFNlcCAyNywgMjAyMyBhdCA4OjE44oCvQU0gQmVuamFtaW4gR2FpZ25hcmQNCj4+PiA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+Pj4+IExlIDI3LzA5LzIwMjMgw6Ag
MTU6NDYsIEpvYWtpbSBCZWNoIGEgw6ljcml0IDoNCj4+Pj4+IE9uIE1vbiwgU2VwIDI1LCAyMDIz
IGF0IDEyOjQ5OjUwUE0gKzAwMDAsIFlvbmcgV3UgKOWQtOWLhykgd3JvdGU6DQo+Pj4+Pj4gT24g
VHVlLCAyMDIzLTA5LTEyIGF0IDExOjMyICswMjAwLCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdu
byB3cm90ZToNCj4+Pj4+Pj4gSWwgMTIvMDkvMjMgMDg6MTcsIFlvbmcgV3UgKOWQtOWLhykgaGEg
c2NyaXR0bzoNCj4+Pj4+Pj4+IE9uIE1vbiwgMjAyMy0wOS0xMSBhdCAxMToyOSArMDIwMCwgQW5n
ZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8NCj4+Pj4+Pj4+IHdyb3RlOg0KPj4+Pj4+Pj4+IElsIDEx
LzA5LzIzIDA0OjMwLCBZb25nIFd1IGhhIHNjcml0dG86DQo+Pj4+Pj4+Pj4+IFRoZSBURUUgcHJv
YmUgbGF0ZXIgdGhhbiBkbWEtYnVmIGhlYXAsIGFuZCBQUk9CRV9ERURFUiBkb2Vzbid0DQo+Pj4+
Pj4+Pj4+IHdvcmsNCj4+Pj4+Pj4+Pj4gaGVyZSBzaW5jZSB0aGlzIGlzIG5vdCBhIHBsYXRmb3Jt
IGRyaXZlciwgdGhlcmVmb3JlIGluaXRpYWxpc2UNCj4+Pj4+Pj4+Pj4gdGhlDQo+Pj4+Pj4+Pj4+
IFRFRQ0KPj4+Pj4+Pj4+PiBjb250ZXh0L3Nlc3Npb24gd2hpbGUgd2UgYWxsb2NhdGUgdGhlIGZp
cnN0IHNlY3VyZSBidWZmZXIuDQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPj4+Pj4+Pj4+PiAtLS0NCj4+Pj4+Pj4+
Pj4gICAgICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jIHwgNjENCj4+
Pj4+Pj4+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+Pj4+Pj4+PiAgICAgICAxIGZp
bGUgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKQ0KPj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+Pj4+Pj4+
Pj4+IGIvZHJpdmVycy9kbWEtDQo+Pj4+Pj4+Pj4+IGJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAu
Yw0KPj4+Pj4+Pj4+PiBpbmRleCBiYmYxYzhkY2UyM2UuLmUzZGEzM2EzZDA4MyAxMDA2NDQNCj4+
Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL210a19zZWN1cmVfaGVhcC5jDQo+
Pj4+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9tdGtfc2VjdXJlX2hlYXAuYw0K
Pj4+Pj4+Pj4+PiBAQCAtMTAsNiArMTAsMTIgQEANCj4+Pj4+Pj4+Pj4gICAgICAgI2luY2x1ZGUg
PGxpbnV4L2Vyci5oPg0KPj4+Pj4+Pj4+PiAgICAgICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
DQo+Pj4+Pj4+Pj4+ICAgICAgICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+Pj4+Pj4+Pj4+ICsj
aW5jbHVkZSA8bGludXgvdGVlX2Rydi5oPg0KPj4+Pj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3V1
aWQuaD4NCj4+Pj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4+PiArI2RlZmluZSBUWl9UQV9NRU1fVVVJRCAg
ICAgICAgICAiNDQ3NzU4OGEtODQ3Ni0xMWUyLWFkMTUtDQo+Pj4+Pj4+Pj4+IGU0MWYxMzkwZDY3
NiINCj4+Pj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4+IElzIHRoaXMgVVVJRCB0aGUgc2FtZSBmb3IgYWxs
IFNvQ3MgYW5kIGFsbCBUWiB2ZXJzaW9ucz8NCj4+Pj4+Pj4+IFllcy4gSXQgaXMgdGhlIHNhbWUg
Zm9yIGFsbCBTb0NzIGFuZCBhbGwgVFogdmVyc2lvbnMgY3VycmVudGx5Lg0KPj4+Pj4+Pj4NCj4+
Pj4+Pj4gVGhhdCdzIGdvb2QgbmV3cyENCj4+Pj4+Pj4NCj4+Pj4+Pj4gSXMgdGhpcyBVVUlEIHVz
ZWQgaW4gYW55IHVzZXJzcGFjZSBjb21wb25lbnQ/IChleGFtcGxlOiBBbmRyb2lkDQo+Pj4+Pj4+
IEhBTHM/KQ0KPj4+Pj4+IE5vLiBVc2Vyc3BhY2UgbmV2ZXIgdXNlIGl0LiBJZiB1c2Vyc3BhY2Ug
d291bGQgbGlrZSB0byBhbGxvY2F0ZSB0aGlzDQo+Pj4+Pj4gc2VjdXJlIGJ1ZmZlciwgaXQgY2Fu
IGFjaGlldmUgdGhyb3VnaCB0aGUgZXhpc3RpbmcgZG1hYnVmIElPQ1RMIHZpYQ0KPj4+Pj4+IC9k
ZXYvZG1hX2hlYXAvbXRrX3N2cCBub2RlLg0KPj4+Pj4+DQo+Pj4+PiBJbiBnZW5lcmFsIEkgdGhp
bmsgYXMgbWVudGlvbmVkIGVsc2V3aGVyZSBpbiBjb21tZW50cywgdGhhdCB0aGVyZSBpc24ndA0K
Pj4+Pj4gdGhhdCBtdWNoIGhlcmUgdGhhdCBzZWVtcyB0byBiZSB1bmlxdWUgZm9yIE1lZGlhVGVr
IGluIHRoaXMgcGF0Y2gNCj4+Pj4+IHNlcmllcywgc28gSSB0aGluayBpdCB3b3J0aCB0byBzZWUg
d2hldGhlciB0aGlzIHdob2xlIHBhdGNoIHNldCBjYW4gYmUNCj4+Pj4+IG1hZGUgbW9yZSBnZW5l
cmljLiBIYXZpbmcgc2FpZCB0aGF0LCB0aGUgVVVJRCBpcyBhbHdheXMgdW5pcXVlIGZvciBhDQo+
Pj4+PiBjZXJ0YWluIFRydXN0ZWQgQXBwbGljYXRpb24uIFNvLCBpdCdzIG5vdCBlbnRpcmVseSB0
cnVlIHNheWluZyB0aGF0IHRoZQ0KPj4+Pj4gVVVJRCBpcyB0aGUgc2FtZSBmb3IgYWxsIFNvQ3Mg
YW5kIGFsbCBUcnVzdFpvbmUgdmVyc2lvbnMuIEl0IG1pZ2h0IGJlDQo+Pj4+PiB0cnVlIGZvciBh
IGZhbWlseSBvZiBNZWRpYVRlayBkZXZpY2VzIGFuZCB0aGUgVEVFIGluIHVzZSwgYnV0IG5vdA0K
Pj4+Pj4gZ2VuZXJpY2FsbHkuDQo+Pj4+Pg0KPj4+Pj4gU28sIGlmIHdlIG5lZWQgdG8gZGlmZmVy
ZW50aWF0ZSBiZXR3ZWVuIGRpZmZlcmVudCBUQSBpbXBsZW1lbnRhdGlvbnMsDQo+Pj4+PiB0aGVu
IHdlIG5lZWQgZGlmZmVyZW50IFVVSURzLiBJZiBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBtYWtl
IHRoaXMgcGF0Y2gNCj4+Pj4+IHNldCBnZW5lcmljLCB0aGVuIGl0IHNvdW5kcyBsaWtlIGEgc2lu
Z2xlIFVVSUQgd291bGQgYmUgc3VmZmljaWVudCwgYnV0DQo+Pj4+PiB0aGF0IHdvdWxkIGltcGx5
IHRoYXQgYWxsIFRBJ3Mgc3VwcG9ydGluZyBzdWNoIGEgZ2VuZXJpYyBVVUlEIHdvdWxkIGJlDQo+
Pj4+PiBpbXBsZW1lbnRlZCB0aGUgc2FtZSBmcm9tIGFuIEFQSSBwb2ludCBvZiB2aWV3LiBXaGlj
aCBhbHNvIG1lYW5zIHRoYXQNCj4+Pj4+IGZvciBleGFtcGxlIFRydXN0ZWQgQXBwbGljYXRpb24g
ZnVuY3Rpb24gSUQncyBuZWVkcyB0byBiZSB0aGUgc2FtZSBldGMuDQo+Pj4+PiBOb3QgaW1wb3Nz
aWJsZSB0byBhY2hpZXZlLCBidXQgc3RpbGwgbm90IGVhc3kgKGRpZmZlcmVudCBURUUgZm9sbG93
cw0KPj4+Pj4gZGlmZmVyZW50IHNwZWNpZmljYXRpb25zKSBhbmQgaXQncyBub3QgdHlwaWNhbGx5
IHNvbWV0aGluZyB3ZSd2ZSBkb25lIGluDQo+Pj4+PiB0aGUgcGFzdC4NCj4+Pj4+DQo+Pj4+PiBV
bmZvcnR1bmF0ZWx5IHRoZXJlIGlzIG5vIHN0YW5kYXJkaXplZCBkYXRhYmFzZSBvZiBUQSdzIGRl
c2NyaWJpbmcgd2hhdA0KPj4+Pj4gdGhleSBpbXBsZW1lbnQgYW5kIHN1cHBvcnQuDQo+Pj4+Pg0K
Pj4+Pj4gQXMgYW4gYWx0ZXJuYXRpdmUsIHdlIGNvdWxkIGltcGxlbWVudCBhIHF1ZXJ5IGNhbGwg
aW4gdGhlIFRFRSBhbnN3ZXJpbmcsDQo+Pj4+PiAiV2hhdCBVVUlEIGRvZXMgeW91ciBUQSBoYXZl
IHRoYXQgaW1wbGVtZW50cyBzZWN1cmUgdW5tYXBwZWQgaGVhcD8iLg0KPj4+Pj4gSS5lLiwgc29t
ZXRoaW5nIHRoYXQgcmVtaW5kcyBvZiBhIGxvb2t1cCB0YWJsZS4gVGhlbiB3ZSB3b3VsZG4ndCBo
YXZlIHRvDQo+Pj4+PiBjYXJyeSB0aGlzIGluIFVBUEksIERUIG9yIGFueXdoZXJlIGVsc2UuDQo+
Pj4+IEpvYWtpbSBkb2VzIGEgVEEgY291bGQgb2ZmZXIgYSBnZW5lcmljIEFQSSBhbmQgaGlkZSB0
aGUgaGFyZHdhcmUgc3BlY2lmaWMNCj4+Pj4gZGV0YWlscyAobGlrZSBrZXJuZWwgdUFQSSBkb2Vz
IGZvciBkcml2ZXJzKSA/DQo+Pj4gSXQgd291bGQgaGF2ZSB0byBnbyB0aHJvdWdoIGFub3RoZXIg
bGF5ZXIgKGxpa2UgdGhlIHRlZSBkcml2ZXIpIHRvIGJlDQo+Pj4gYSBnZW5lcmljIEFQSS4gVGhl
IG1haW4gaXNzdWUgd2l0aCBUQXMgaXMgdGhhdCB0aGV5IGhhdmUgVVVJRHMgeW91DQo+Pj4gbmVl
ZCB0byBjb25uZWN0IHRvIGFuZCBzcGVjaWZpYyBjb2RlcyBmb3IgZWFjaCBmdW5jdGlvbjsgc28g
d2Ugc2hvdWxkDQo+Pj4gYWJzdHJhY3QgYXQgYSBsYXllciBhYm92ZSB3aGVyZSB0aG9zZSBleGlz
dCBpbiB0aGUgZG1hLWhlYXAgY29kZS4NCj4+Pj4gQXNpZGUgdGhhdCBxdWVzdGlvbiBJIHdvbmRl
ciB3aGF0IGFyZSB0aGUgbmVlZHMgdG8gcGVyZm9ybSBhICdzZWN1cmUnIHBsYXliYWNrLg0KPj4+
PiBJIGhhdmUgaW4gbWluZCAyIHJlcXVpcmVtZW50czoNCj4+Pj4gLSBzZWN1cmUgbWVtb3J5IHJl
Z2lvbnMsIHdoaWNoIG1lYW5zIGNvbmZpZ3VyZSB0aGUgaGFyZHdhcmUgdG8gZW5zdXJlIHRoYXQg
b25seQ0KPj4+PiBkZWRpY2F0ZWQgaGFyZHdhcmUgYmxvY2tzIGFuZCByZWFkIG9yIHdyaXRlIGlu
dG8gaXQuDQo+Pj4+IC0gc2V0IGhhcmR3YXJlIGJsb2NrcyBpbiBzZWN1cmUgbW9kZXMgc28gdGhl
eSBhY2Nlc3MgdG8gc2VjdXJlIG1lbW9yeS4NCj4+Pj4gRG8geW91IHNlZSBzb21ldGhpbmcgZWxz
ZSA/DQo+Pj4gVGhpcyBpcyBtb3JlIG9yIGxlc3Mgd2hhdCBpcyByZXF1aXJlZCwgYnV0IHRoaXMg
aXMgb3V0IG9mIHNjb3BlIGZvcg0KPj4+IHRoZSBMaW51eCBrZXJuZWwgc2luY2UgaXQgY2FuJ3Qg
YmUgdHJ1c3RlZCB0byBkbyB0aGVzZSB0aGluZ3MuLi50aGlzDQo+Pj4gaXMgYWxsIGRvbmUgaW4g
ZmlybXdhcmUgb3IgdGhlIFRFRSBpdHNlbGYuDQo+PiBZZXMga2VybmVsIGNhbid0IGJlIHRydXN0
ZWQgdG8gZG8gdGhlc2UgdGhpbmdzIGJ1dCBrbm93IHdoYXQgd2UgbmVlZCBjb3VsZCBoZWxwDQo+
PiB0byBkZWZpbmUgYSBBUEkgZm9yIGEgZ2VuZXJpYyBUQS4NCj4+DQo+PiBKdXN0IHRvIGJyYWlu
c3Rvcm0gb24gbWFpbGluZyBsaXN0Og0KPj4gV2hhdCBhYm91dCBhIFRBIEFQSSBsaWtlDQo+PiBU
QV9zZWN1cmVfbWVtb3J5X3JlZ2lvbigpIGFuZCBUQV91bnNlY3VyZV9tZW1vcnlfcmVnaW9uKCkg
d2l0aCBwYXJhbWV0ZXJzIGxpa2U6DQo+PiAtIGRldmljZSBpZGVudGlmaWVyIChhbiBJRCBvciBj
b21wYXRpYmxlIHN0cmluZyBtYXliZSkNCj4+IC0gbWVtb3J5IHJlZ2lvbiAocGh5c2ljYWwgYWRk
cmVzcywgc2l6ZSwgb2Zmc2V0KQ0KPj4gLSByZXF1ZXN0ZWQgYWNjZXNzIHJpZ2h0cyAocmVhZCwg
d3JpdGUpDQo+Pg0KPj4gYW5kIG9uIGtlcm5lbCBzaWRlIGEgSU9NTVUgZHJpdmVyIGJlY2F1c2Ug
aXQgYmFzaWNhbGx5IGhhdmUgYWxsIHRoaXMgaW5mb3JtYXRpb24gYWxyZWFkeQ0KPj4gKGRldmlj
ZSBhdHRhY2htZW50LCBrZXJuZWwgbWFwL3VubWFwKS4NCj4+DQo+PiBJbiBteSBtaW5kIGl0IHNv
dW5kIGxpa2UgYSBzb2x1dGlvbiB0byBsaW1pdCB0aGUgaW1wYWN0IChuZXcgY29udHJvbHMsIG5l
dyBtZW1vcnkgdHlwZSkNCj4+IGluc2lkZSB2NGwyLiBQcm9iYWJseSB3ZSB3b24ndCBuZWVkIG5l
dyBoZWFwIGVpdGhlci4NCj4+IEFsbCBoYXJkd2FyZSBkZWRpY2F0ZWQgaW1wbGVtZW50YXRpb25z
IGNvdWxkIGxpdmUgaW5zaWRlIHRoZSBUQSB3aGljaCBjYW4gb2ZmZXIgYSBnZW5lcmljDQo+PiBB
UEkuDQo+IFRoZSBtYWluIHByb2JsZW0gd2l0aCB0aGF0IHR5cGUgb2YgZGVzaWduIGlzIHRoZSBs
aW1pdGF0aW9ucyBvZg0KPiBUcnVzdFpvbmUgbWVtb3J5IHByb3RlY3Rpb24uIFVzdWFsbHkgdGhl
cmUgaXMgYSBsaW1pdCB0byB0aGUgbnVtYmVyIG9mDQo+IHJlZ2lvbnMgeW91IGNhbiBkZWZpbmUg
Zm9yIG1lbW9yeSBwcm90ZWN0aW9uIChhbmQgdGhlcmUgaXMgb24NCj4gTWVkaWF0ZWspLiBTbyB5
b3UgY2FuJ3QgcGFzcyBhbiBhcmJpdHJhcnkgbWVtb3J5IHJlZ2lvbiBhbmQgbWFyayBpdA0KPiBw
cm90ZWN0ZWQvdW5wcm90ZWN0ZWQgYXQgYSBnaXZlbiB0aW1lLiBZb3UgbmVlZCB0byBlc3RhYmxp
c2ggdGhlc2UNCj4gcmVnaW9ucyBpbiB0aGUgZmlybXdhcmUgaW5zdGVhZCBhbmQgdGhlbiBjb25m
aWd1cmUgdGhvc2UgcmVnaW9ucyBmb3INCj4gcHJvdGVjdGlvbiBpbiB0aGUgZmlybXdhcmUgb3Ig
dGhlIFRFRS4NCg0KVGhlIFRFRSBpb21tdSBjb3VsZCBiZSBhd2FyZSBvZiB0aGVzZSBsaW1pdGF0
aW9ucyBhbmQgbWVyZ2UgdGhlIHJlZ2lvbnMgd2hlbiBwb3NzaWJsZQ0KcGx1cyB3ZSBjYW4gZGVm
aW5lIGEgQ01BIHJlZ2lvbiBmb3IgZWFjaCBkZXZpY2UgdG8gbGltaXQgdGhlIHNlY3VyZWQgbWVt
b3J5IGZyYWdtZW50YXRpb24uDQoNCj4NCj4+Pj4gUmVnYXJkcywNCj4+Pj4gQmVuamFtaW4NCj4+
Pj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
