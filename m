Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2159BEC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Nov 2024 14:04:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA8C413F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Nov 2024 13:04:52 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 77BF6413EE
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Nov 2024 13:04:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=iF+f2JrO;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0B6BA475;
	Wed,  6 Nov 2024 14:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730898275;
	bh=682rZ4W8M3E5mVOEB3/2mrEAAw15OgHnlpXKz526rA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iF+f2JrOf8LKiTjHV1UChMRbmf6ckq9rA1BPUFp1xg1DRGXF+rkuI5950BTGfwpL+
	 Yu4AWc7mmgpAU2nekPMMSN1CPfv8fof6p/lUxd1J/aU5O1aWQByo6hUgRFK9fVFltt
	 vI+mieU5JY7lKw6pBcmWAlmuai8Wap7Qb23EoTFI=
Date: Wed, 6 Nov 2024 15:04:37 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: CK Hu =?utf-8?B?KOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Message-ID: <20241106130437.GA16791@pendragon.ideasonboard.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
 <20241009111551.27052-11-Shu-hsiang.Yang@mediatek.com>
 <ff96b314cdd3d52a14a5e91f79ec3097d04c4380.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff96b314cdd3d52a14a5e91f79ec3097d04c4380.camel@mediatek.com>
X-Spamd-Result: default: False [-1.39 / 15.00];
	BAYES_HAM(-2.59)[98.19%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org,chromium.org,lists.linaro.org,lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	DKIM_TRACE(0.00)[ideasonboard.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 77BF6413EE
X-Spamd-Bar: -
Message-ID-Hash: FPPGFFMN7YF4ZDZ6WHJ53J5J43O6CD5W
X-Message-ID-Hash: FPPGFFMN7YF4ZDZ6WHJ53J5J43O6CD5W
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "mchehab@kernel.org" <mchehab@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Shu-hsiang Yang =?utf-8?B?KOaliuiIkue/lCk=?= <Shu-hsiang.Yang@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "yunkec@chromium.org" <yunkec@chromium.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Yaya Chang =?utf-8?B?KOW8tembhea4hSk=?= <Yaya.Chang@mediatek.com>, Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek
 .com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Teddy Chen =?utf-8?B?KOmZs+S5vuWFgyk=?= <Teddy.Chen@mediatek.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "hidenorik@chromium.org" <hidenorik@chromium.org>, Shun-Yi Wang =?utf-8?B?KOeOi+mghuWEhCk=?= <Shun-Yi.Wang@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 10/10] uapi: linux: add mediatek isp_7x camsys user api
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPPGFFMN7YF4ZDZ6WHJ53J5J43O6CD5W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMTQsIDIwMjQgYXQgMDU6NTY6NDBBTSArMDAwMCwgQ0sgSHUgKOiDoeS/iuWF
iSkgd3JvdGU6DQo+IEhpLCBTaHUtaHNpYW5nOg0KPiANCj4gT24gV2VkLCAyMDI0LTEwLTA5IGF0
IDE5OjE1ICswODAwLCBTaHUtaHNpYW5nIFlhbmcgd3JvdGU6DQo+ID4gQWRkIFVBUEkgZm9yIE1l
ZGlhVGVrIElTUCBwbGF0Zm9ybSwgcHJvdmlkaW5nIHVzZXItc3BhY2UNCj4gPiBpbnRlcmZhY2Vz
IGZvciB0aGUgbmV3IGNhbXN5cyBkcml2ZXIuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogU2h1
LWhzaWFuZyBZYW5nIDxTaHUtaHNpYW5nLllhbmdAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiAN
Cj4gW3NuaXBdDQo+IA0KPiA+ICsNCj4gPiArLyogTVRLIElTUCBjYW1zeXMgY29udHJvbHMgKi8N
Cj4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX1VTRURfRU5HSU5FX0xJTUlUCShWNEwyX0NJ
RF9VU0VSX01US19DQU1fQkFTRSArIDEpDQo+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9C
SU5fTElNSVQJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDIpDQo+ID4gKyNkZWZpbmUg
VjRMMl9DSURfTVRLX0NBTV9GUlpfTElNSVQJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSAr
IDMpDQo+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9SRVNPVVJDRV9QTEFOX1BPTElDWQko
VjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyA0KQ0KPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01U
S19DQU1fVVNFRF9FTkdJTkUJCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDUpDQo+ID4g
KyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9CSU4JCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JB
U0UgKyA2KQ0KPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fRlJaCQkJKFY0TDJfQ0lEX1VT
RVJfTVRLX0NBTV9CQVNFICsgNykNCj4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX1VTRURf
RU5HSU5FX1RSWQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyA4KQ0KPiA+ICsjZGVmaW5l
IFY0TDJfQ0lEX01US19DQU1fQklOX1RSWQkJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsg
OSkNCj4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX0ZSWl9UUlkJCShWNEwyX0NJRF9VU0VS
X01US19DQU1fQkFTRSArIDEwKQ0KPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUElYRUxf
UkFURQkJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMTEpDQo+ID4gKyNkZWZpbmUgVjRM
Ml9DSURfTVRLX0NBTV9GRUFUVVJFCQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAxMikN
Cj4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX1NZTkNfSUQJCShWNEwyX0NJRF9VU0VSX01U
S19DQU1fQkFTRSArIDEzKQ0KPiA+ICsjZGVmaW5lIFY0TDJfQ0lEX01US19DQU1fUkFXX1BBVEhf
U0VMRUNUCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE0KQ0KPiA+ICsjZGVmaW5lIFY0
TDJfQ0lEX01US19DQU1fSFNGX0VOCQkJKFY0TDJfQ0lEX1VTRVJfTVRLX0NBTV9CQVNFICsgMTUp
DQo+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9QREVfSU5GTwkJKFY0TDJfQ0lEX1VTRVJf
TVRLX0NBTV9CQVNFICsgMTYpDQo+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9NU1RSRUFN
X0VYUE9TVVJFCShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE3KQ0KPiA+ICsjZGVmaW5l
IFY0TDJfQ0lEX01US19DQU1fUkFXX1JFU09VUkNFX0NBTEMJKFY0TDJfQ0lEX1VTRVJfTVRLX0NB
TV9CQVNFICsgMTgpDQo+ID4gKyNkZWZpbmUgVjRMMl9DSURfTVRLX0NBTV9UR19GTEFTSF9DRkcJ
CShWNEwyX0NJRF9VU0VSX01US19DQU1fQkFTRSArIDE5KQ0KPiA+ICsjZGVmaW5lIFY0TDJfQ0lE
X01US19DQU1fUkFXX1JFU09VUkNFX1VQREFURQkoVjRMMl9DSURfVVNFUl9NVEtfQ0FNX0JBU0Ug
KyAyMCkNCj4gPiArI2RlZmluZSBWNEwyX0NJRF9NVEtfQ0FNX0NBTVNZU19IV19NT0RFCQkoVjRM
Ml9DSURfVVNFUl9NVEtfQ0FNX0JBU0UgKyAyMSkNCj4gPiArDQo+IA0KPiBQbGVhc2UgZ2l2ZSBp
bnRyb2R1Y3Rpb24gb2YgaG93IHRvIHVzZSB0aGVzZSB1c2VyIHNwYWNlIGludGVyZmFjZS4NCg0K
SSdtIHZlcnksIHZlcnkgKm5vdCogdGhyaWxsZWQgYnkgYWxsIHRoaXMuIEl0IGxvb2tzIGxpa2Ug
YSBiaWcgcGlsZSBvZg0KaGFja3MgcmVhbGx5LiBFdmVyeSBzaW5nbGUgcGFyYW1ldGVyIHVzZWQg
YnkgdGhvc2UgY29udHJvbHMgbmVlZHMgdG8gYmUNCmNsZWFybHkgZG9jdW1lbnRlZCwgaW5jbHVk
aW5nIGV4cGxhaW5pbmcgaG93IHRoZXkgYXJlIHVzZWQsIGluIG9yZGVyIGZvcg0KdXMgdG8gcmV2
aWV3IHRoZSBBUEkuIEkgc3VzcGVjdCB0aGF0IG1hbnkgb2YgdGhlIHBhcmFtZXRlcnMgc2hvdWxk
DQppbnN0ZWFkIGJlIGhhbmRsZWQgdGhyb3VnaCB0aGUgSVNQIHBhcmFtZXRlcnMgYnVmZmVycywg
b3IgYmUgY29udHJvbGxlZA0KZnJvbSBzdGFuZGFyZCBWNEwyIEFQSXMuDQoNCi0tIA0KUmVnYXJk
cywNCg0KTGF1cmVudCBQaW5jaGFydA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
