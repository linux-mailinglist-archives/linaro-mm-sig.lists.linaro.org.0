Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE989D0DA0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2024 10:59:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 632933ECD3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2024 09:59:14 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id B9DAD3ECD3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2024 09:59:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=pe+JC0uw;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 31B645B3;
	Mon, 18 Nov 2024 10:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1731923923;
	bh=qN1yEu+NGkQCj48gFcQZwFz/XJ1FgWBwwPxbDANCw9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pe+JC0uwHPx+KOIPFxnimZbp3cuJ5ps5rS7lyqpoJtge1Iqdqikxwb+BSL28geDV+
	 IaKD8BXbVEoGzjYZ+p2+/8KNA4EziQkPFZuU+fx8vLVpU8J+6LLtZlRGQ2w444o2vV
	 hH0A5MAAgtUWa4DitvxCT3NmVJhbzlfOJwCxgFzI=
Date: Mon, 18 Nov 2024 11:58:50 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: CK Hu =?utf-8?B?KOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Message-ID: <20241118095850.GA30268@pendragon.ideasonboard.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
 <20241009111551.27052-11-Shu-hsiang.Yang@mediatek.com>
 <ff96b314cdd3d52a14a5e91f79ec3097d04c4380.camel@mediatek.com>
 <20241106130437.GA16791@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241106130437.GA16791@pendragon.ideasonboard.com>
X-Rspamd-Queue-Id: B9DAD3ECD3
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.74 / 15.00];
	BAYES_HAM(-2.94)[99.76%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[ideasonboard.com];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org,chromium.org,lists.linaro.org,lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[perceval.ideasonboard.com:rdns,perceval.ideasonboard.com:helo,ideasonboard.com:dkim,pendragon.ideasonboard.com:mid];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LNFDJ2BW5SLOK4M53KFI4GYN7BHQVL3S
X-Message-ID-Hash: LNFDJ2BW5SLOK4M53KFI4GYN7BHQVL3S
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "mchehab@kernel.org" <mchehab@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Shu-hsiang Yang =?utf-8?B?KOaliuiIkue/lCk=?= <Shu-hsiang.Yang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "yunkec@chromium.org" <yunkec@chromium.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Yaya Chang =?utf-8?B?KOW8tembhea4hSk=?= <Yaya.Chang@mediatek.com>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek
 .com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Teddy Chen =?utf-8?B?KOmZs+S5vuWFgyk=?= <Teddy.Chen@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "hidenorik@chromium.org" <hidenorik@chromium.org>, Shun-Yi Wang =?utf-8?B?KOeOi+mghuWEhCk=?= <Shun-Yi.Wang@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 10/10] uapi: linux: add mediatek isp_7x camsys user api
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LNFDJ2BW5SLOK4M53KFI4GYN7BHQVL3S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMDYsIDIwMjQgYXQgMDM6MDQ6MzdQTSArMDIwMCwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToNCj4gT24gTW9uLCBPY3QgMTQsIDIwMjQgYXQgMDU6NTY6NDBBTSArMDAwMCwgQ0sg
SHUgKOiDoeS/iuWFiSkgd3JvdGU6DQo+ID4gSGksIFNodS1oc2lhbmc6DQo+ID4gDQo+ID4gT24g
V2VkLCAyMDI0LTEwLTA5IGF0IDE5OjE1ICswODAwLCBTaHUtaHNpYW5nIFlhbmcgd3JvdGU6DQo+
ID4gPiBBZGQgVUFQSSBmb3IgTWVkaWFUZWsgSVNQIHBsYXRmb3JtLCBwcm92aWRpbmcgdXNlci1z
cGFjZQ0KPiA+ID4gaW50ZXJmYWNlcyBmb3IgdGhlIG5ldyBjYW1zeXMgZHJpdmVyLg0KPiA+ID4g
DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaHUtaHNpYW5nIFlhbmcgPFNodS1oc2lhbmcuWWFuZ0Bt
ZWRpYXRlay5jb20+DQo+ID4gPiAtLS0NCj4gPiANCj4gPiBbc25pcF0NCj4gPiANCj4gPiA+ICsN
Cj4gPiA+ICsvKiBNVEsgSVNQIGNhbXN5cyBjb250cm9scyAqLw0KPiA+ID4gKyNkZWZpbmUgVjRM
Ml9DSURfTVRLX0NBTV9VU0VEX0VOR0lORV9MSU1JVAkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JB
U0UgKyAxKQ0KPiA+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9CSU5fTElNSVQJCShWNEwy
X0NJRF9VU0VSX01US19DQU1fQkFTRSArIDIpDQo+ID4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtf
Q0FNX0ZSWl9MSU1JVAkJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMykNCj4gPiA+ICsj
ZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUkVTT1VSQ0VfUExBTl9QT0xJQ1kJKFY0TDJfQ0lEX1VT
RVJfTVRLX0NBTV9CQVNFICsgNCkNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fVVNF
RF9FTkdJTkUJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDUpDQo+ID4gPiArI2RlZmlu
ZSBWNEwyX0NJRF9NVEtfQ0FNX0JJTgkJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDYp
DQo+ID4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX0ZSWgkJCShWNEwyX0NJRF9VU0VSX01U
S19DQU1fQkFTRSArIDcpDQo+ID4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX1VTRURfRU5H
SU5FX1RSWQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyA4KQ0KPiA+ID4gKyNkZWZpbmUg
VjRMMl9DSURfTVRLX0NBTV9CSU5fVFJZCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyA5
KQ0KPiA+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9GUlpfVFJZCQkoVjRMMl9DSURfVVNF
Ul9NVEtfQ0FNX0JBU0UgKyAxMCkNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUElY
RUxfUkFURQkJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMTEpDQo+ID4gPiArI2RlZmlu
ZSBWNEwyX0NJRF9NVEtfQ0FNX0ZFQVRVUkUJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSAr
IDEyKQ0KPiA+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9TWU5DX0lECQkoVjRMMl9DSURf
VVNFUl9NVEtfQ0FNX0JBU0UgKyAxMykNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1f
UkFXX1BBVEhfU0VMRUNUCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE0KQ0KPiA+ID4g
KyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9IU0ZfRU4JCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FN
X0JBU0UgKyAxNSkNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUERFX0lORk8JCShW
NEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE2KQ0KPiA+ID4gKyNkZWZpbmUgVjRMMl9DSURf
TVRLX0NBTV9NU1RSRUFNX0VYUE9TVVJFCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE3
KQ0KPiA+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9SQVdfUkVTT1VSQ0VfQ0FMQwkoVjRM
Ml9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAxOCkNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01U
S19DQU1fVEdfRkxBU0hfQ0ZHCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAxOSkNCj4g
PiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUkFXX1JFU09VUkNFX1VQREFURQkoVjRMMl9D
SURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAyMCkNCj4gPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19D
QU1fQ0FNU1lTX0hXX01PREUJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDIxKQ0KPiA+
ID4gKw0KPiA+IA0KPiA+IFBsZWFzZSBnaXZlIGludHJvZHVjdGlvbiBvZiBob3cgdG8gdXNlIHRo
ZXNlIHVzZXIgc3BhY2UgaW50ZXJmYWNlLg0KPiANCj4gSSdtIHZlcnksIHZlcnkgKm5vdCogdGhy
aWxsZWQgYnkgYWxsIHRoaXMuIEl0IGxvb2tzIGxpa2UgYSBiaWcgcGlsZSBvZg0KPiBoYWNrcyBy
ZWFsbHkuIEV2ZXJ5IHNpbmdsZSBwYXJhbWV0ZXIgdXNlZCBieSB0aG9zZSBjb250cm9scyBuZWVk
cyB0byBiZQ0KPiBjbGVhcmx5IGRvY3VtZW50ZWQsIGluY2x1ZGluZyBleHBsYWluaW5nIGhvdyB0
aGV5IGFyZSB1c2VkLCBpbiBvcmRlciBmb3INCj4gdXMgdG8gcmV2aWV3IHRoZSBBUEkuIEkgc3Vz
cGVjdCB0aGF0IG1hbnkgb2YgdGhlIHBhcmFtZXRlcnMgc2hvdWxkDQo+IGluc3RlYWQgYmUgaGFu
ZGxlZCB0aHJvdWdoIHRoZSBJU1AgcGFyYW1ldGVycyBidWZmZXJzLCBvciBiZSBjb250cm9sbGVk
DQo+IGZyb20gc3RhbmRhcmQgVjRMMiBBUElzLg0KDQpXaGlsZSBvbiB0aGUgdG9waWMgb2YgZG9j
dW1lbnRhdGlvbiwgd2UgYWxzbyBuZWVkIGEgaGlnaC1sZXZlbA0KYXJjaGl0ZWN0dXJlIGRvY3Vt
ZW50LiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIDMwMDAwIGxpbmVzIG9mIGNvZGUsIGl0J3MNCnZl
cnkgaGFyZCBmb3IgcmV2aWV3ZXJzIHRvIHVuZGVyc3RhbmQgdGhlIGFyY2hpdGVjdHVyZSBvZiB0
aGUgZHJpdmVyDQpqdXN0IGJ5IGxvb2tpbmcgYXQgdGhlIGNvZGUuIEF0IHRoZSB2ZXJ5IGxlYXN0
LCBhIGhpZ2gtbGV2ZWwgZGVzY3JpcHRpb24NCm9mIHRoZSBoYXJkd2FyZSAoYXQgbGVhc3QgZnJv
bSB0aGUgdmlldyBwb2ludCBvZiB0aGUgaW50ZXJmYWNlIHRoZQ0KZmlybXdhcmUgZXhwb3Nlcykg
aXMgbmVlZGVkLg0KDQotLSANClJlZ2FyZHMsDQoNCkxhdXJlbnQgUGluY2hhcnQNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
