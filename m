Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECF5976CAC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 16:51:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0B8E4121E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Sep 2024 14:51:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 8892F3F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Sep 2024 14:51:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HrxG7s+4;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 60A815C5B77;
	Thu, 12 Sep 2024 14:51:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84085C4CEC3;
	Thu, 12 Sep 2024 14:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726152668;
	bh=YzlriyEKn+i3JtEOOQGPkP98c79C4k//CQThjLlVVc4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HrxG7s+4gt4QkbKM94COqUg/lsJfAnNxvZG4sakPtakRVd8xz6ynsRhLd72JCnXPg
	 QAzGWtP+eCsqYPIzj1wR02E4WW9qULYbKYk0+WGJ2u6/fe/JHnp/VOVtXzohpkQn4h
	 oa/Du/8mrhank/o0dL7v71V05rNZvL+1swetRDqm18bfFB2dfPuaEVuADcW2uOO7+v
	 IZiwkqPeN1hPhQRce4OF5+y3kjru3mbfQY0tleSF0kq/09kfYfowjzt+IPiGVxWtmw
	 CXYmCQ7oJGZ58rITCVxchFy4RaxlEEOwJZz2bLV6SqlkJOpJo84iIFqAoibzyjo5bA
	 MapFVCGcHYUkw==
Date: Thu, 12 Sep 2024 15:51:00 +0100
From: Lee Jones <lee@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20240912145100.GE24460@google.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172544860860.19172.7052813450885034844.b4-ty@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8892F3F49E
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,collabora.com,mediatek.com,perex.cz,suse.com,amd.com,arm.com,baylibre.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: KWYA4CKLNVV2G3WTJEHPQ5X6XBSP6UWO
X-Message-ID-Hash: KWYA4CKLNVV2G3WTJEHPQ5X6XBSP6UWO
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Mergnat <amergnat@baylibre.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Nicolas Belin <n
 belin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v7 00/16] Add audio support for the MediaTek Genio 350-evk board
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KWYA4CKLNVV2G3WTJEHPQ5X6XBSP6UWO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAwNCBTZXAgMjAyNCwgTWFyayBCcm93biB3cm90ZToNCg0KPiBPbiBNb24sIDIyIEp1
bCAyMDI0IDA4OjUzOjI5ICswMjAwLCBBbGV4YW5kcmUgTWVyZ25hdCB3cm90ZToNCj4gPiBUaGlz
IHNlcmllIGFpbSB0byBhZGQgdGhlIGZvbGxvd2luZyBhdWRpbyBzdXBwb3J0IGZvciB0aGUgR2Vu
aW8gMzUwLWV2azoNCj4gPiAtIFBsYXliYWNrDQo+ID4gICAtIDJjaCBIZWFkc2V0IEphY2sgKEVh
cnBob25lKQ0KPiA+ICAgLSAxY2ggTGluZS1vdXQgSmFjayAoU3BlYWtlcikNCj4gPiAgIC0gOGNo
IEhETUkgVHgNCj4gPiAtIENhcHR1cmUNCj4gPiAgIC0gMWNoIERNSUMgKE9uLWJvYXJkIERpZ2l0
YWwgTWljcm9waG9uZSkNCj4gPiAgIC0gMWNoIEFNSUMgKE9uLWJvYXJkIEFuYWxvZ2ljIE1pY3Jv
cGhvbmUpDQo+ID4gICAtIDFjaCBIZWFkc2V0IEphY2sgKEV4dGVybmFsIEFuYWxvZ2ljIE1pY3Jv
cGhvbmUpDQo+ID4gDQo+ID4gWy4uLl0NCj4gDQo+IEFwcGxpZWQgdG8NCj4gDQo+ICAgIGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jyb29uaWUvc291bmQu
Z2l0IGZvci1uZXh0DQo+IA0KPiBUaGFua3MhDQo+IA0KPiBbMDEvMTZdIEFTb0M6IGR0LWJpbmRp
bmdzOiBtZWRpYXRlayxtdDgzNjUtYWZlOiBBZGQgYXVkaW8gYWZlIGRvY3VtZW50DQo+ICAgICAg
ICAgY29tbWl0OiBjZWIzY2EyODc2MjQzZTNlYTAyZjc4YjNkNDg4YjFmMmQ3MzRkZTQ5DQo+IFsw
Mi8xNl0gQVNvQzogZHQtYmluZGluZ3M6IG1lZGlhdGVrLG10ODM2NS1tdDYzNTc6IEFkZCBhdWRp
byBzb3VuZCBjYXJkIGRvY3VtZW50DQo+ICAgICAgICAgY29tbWl0OiA3NmQ4MGRjZGQ1NWY3MGIy
ODkzMGVkYjk3Yjk2ZWUzNzVlMWNjZTVhDQo+IFswMy8xNl0gZHQtYmluZGluZ3M6IG1mZDogbWVk
aWF0ZWs6IEFkZCBjb2RlYyBwcm9wZXJ0eSBmb3IgTVQ2MzU3IFBNSUMNCj4gICAgICAgICBjb21t
aXQ6IDc2MWNhYjY2Nzg5OGQ4NmMwNDg2Nzk0OGYxYjdhZWMxMDkwYmU3OTYNCg0KRGlkIHlvdSBt
ZWFuIHRvIGhvb3ZlciB0aGlzIHVwPw0KDQo+IFswNC8xNl0gQVNvQzogbWVkaWF0ZWs6IG10ODM2
NTogQWRkIGNvbW1vbiBoZWFkZXINCj4gICAgICAgICBjb21taXQ6IDM4YzdjOWRkYzc0MDMzNDA2
NDYxZDY0ZTU0MWJiYzgyNjhlNzdmNzMNCj4gWzA1LzE2XSBBU29DOiBtZWRpYXRlazogbXQ4MzY1
OiBBZGQgYXVkaW8gY2xvY2sgY29udHJvbCBzdXBwb3J0DQo+ICAgICAgICAgY29tbWl0OiBlZjMw
N2I0MGI3ZjAwNDJkNTRmMDIwYmNjYjNlNzI4Y2VkMjkyMjgyDQo+IFswNi8xNl0gQVNvQzogbWVk
aWF0ZWs6IG10ODM2NTogQWRkIEkyUyBEQUkgc3VwcG9ydA0KPiAgICAgICAgIGNvbW1pdDogNDAy
YmJiMTNhMTk1Y2FhODNiMzI3OWViZWNkYWJmYjExZGRlZTA4NA0KPiBbMDcvMTZdIEFTb0M6IG1l
ZGlhdGVrOiBtdDgzNjU6IEFkZCBBRERBIERBSSBzdXBwb3J0DQo+ICAgICAgICAgY29tbWl0OiA3
YzU4Yzg4ZTUyNDE4MGU4NDM5YWNkZmM0NDg3MjMyNWU3ZjZkMzNkDQo+IFswOC8xNl0gQVNvQzog
bWVkaWF0ZWs6IG10ODM2NTogQWRkIERNSUMgREFJIHN1cHBvcnQNCj4gICAgICAgICBjb21taXQ6
IDFjNTBlYzc1Y2U2YzBjNmI1NzM2NDk5MzkzZTUyMmY3M2UxOWQwY2YNCj4gWzA5LzE2XSBBU29D
OiBtZWRpYXRlazogbXQ4MzY1OiBBZGQgUENNIERBSSBzdXBwb3J0DQo+ICAgICAgICAgY29tbWl0
OiA1MDk3YzBjODYzNGQ3MDNlM2M1OWNmYjg5ODMxYjdkYjlkYzQ2MzM5DQo+IFsxMC8xNl0gQVNv
YzogbWVkaWF0ZWs6IG10ODM2NTogQWRkIGEgc3BlY2lmaWMgc291bmRjYXJkIGZvciBFVksNCj4g
ICAgICAgICBjb21taXQ6IDFiZjZkYmQ3NWY3NjAzZGQwMjY2NjBiZWJmMzI0ZjgxMjIwMGRjMWIN
Cj4gWzExLzE2XSBBU29DOiBtZWRpYXRlazogbXQ4MzY1OiBBZGQgdGhlIEFGRSBkcml2ZXIgc3Vw
cG9ydA0KPiAgICAgICAgIGNvbW1pdDogZTE5OTFkMTAyYmMyYWJiMzIzMzFjNDYyZjhmM2U3NzA1
OWM2OTU3OA0KPiBbMTIvMTZdIEFTb0M6IGNvZGVjczogYWRkIE1UNjM1NyBzdXBwb3J0DQo+ICAg
ICAgICAgKG5vIGNvbW1pdCBpbmZvKQ0KPiBbMTMvMTZdIEFTb0M6IG1lZGlhdGVrOiBBZGQgTVQ4
MzY1IHN1cHBvcnQNCj4gICAgICAgICAobm8gY29tbWl0IGluZm8pDQo+IA0KPiBBbGwgYmVpbmcg
d2VsbCB0aGlzIG1lYW5zIHRoYXQgaXQgd2lsbCBiZSBpbnRlZ3JhdGVkIGludG8gdGhlIGxpbnV4
LW5leHQNCj4gdHJlZSAodXN1YWxseSBzb21ldGltZSBpbiB0aGUgbmV4dCAyNCBob3VycykgYW5k
IHNlbnQgdG8gTGludXMgZHVyaW5nDQo+IHRoZSBuZXh0IG1lcmdlIHdpbmRvdyAob3Igc29vbmVy
IGlmIGl0IGlzIGEgYnVnIGZpeCksIGhvd2V2ZXIgaWYNCj4gcHJvYmxlbXMgYXJlIGRpc2NvdmVy
ZWQgdGhlbiB0aGUgcGF0Y2ggbWF5IGJlIGRyb3BwZWQgb3IgcmV2ZXJ0ZWQuDQo+IA0KPiBZb3Ug
bWF5IGdldCBmdXJ0aGVyIGUtbWFpbHMgcmVzdWx0aW5nIGZyb20gYXV0b21hdGVkIG9yIG1hbnVh
bCB0ZXN0aW5nDQo+IGFuZCByZXZpZXcgb2YgdGhlIHRyZWUsIHBsZWFzZSBlbmdhZ2Ugd2l0aCBw
ZW9wbGUgcmVwb3J0aW5nIHByb2JsZW1zIGFuZA0KPiBzZW5kIGZvbGxvd3VwIHBhdGNoZXMgYWRk
cmVzc2luZyBhbnkgaXNzdWVzIHRoYXQgYXJlIHJlcG9ydGVkIGlmIG5lZWRlZC4NCj4gDQo+IElm
IGFueSB1cGRhdGVzIGFyZSByZXF1aXJlZCBvciB5b3UgYXJlIHN1Ym1pdHRpbmcgZnVydGhlciBj
aGFuZ2VzIHRoZXkNCj4gc2hvdWxkIGJlIHNlbnQgYXMgaW5jcmVtZW50YWwgdXBkYXRlcyBhZ2Fp
bnN0IGN1cnJlbnQgZ2l0LCBleGlzdGluZw0KPiBwYXRjaGVzIHdpbGwgbm90IGJlIHJlcGxhY2Vk
Lg0KPiANCj4gUGxlYXNlIGFkZCBhbnkgcmVsZXZhbnQgbGlzdHMgYW5kIG1haW50YWluZXJzIHRv
IHRoZSBDQ3Mgd2hlbiByZXBseWluZw0KPiB0byB0aGlzIG1haWwuDQo+IA0KPiBUaGFua3MsDQo+
IE1hcmsNCj4gDQoNCi0tIA0KTGVlIEpvbmVzIFvmnY7nkLzmlq9dDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
