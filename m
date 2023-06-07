Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A25E77256BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 10:03:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D335413F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 08:03:07 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lists.linaro.org (Postfix) with ESMTP id 802023EC76
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jun 2023 08:02:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.75 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id E591624E307;
	Wed,  7 Jun 2023 16:02:35 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 7 Jun
 2023 16:02:35 +0800
Received: from [192.168.60.122] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 7 Jun
 2023 16:02:35 +0800
Message-ID: <ab89b684-8b49-2088-b0d2-ca362fd9dfb4@starfivetech.com>
Date: Wed, 7 Jun 2023 16:02:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602-uncommon-rejoicing-e73c0c475f9f@spud>
 <TY3P286MB26116576E3E502CAE53834599852A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <1991848.PYKUYFuaPT@diego> <20230606-geometry-blurb-1f0f07d4bf6a@spud>
 <ifgjvonhkzcwrklzch5efguor2x6az4m737dwte4uyow7ar5dr@z4glaxse6dou>
From: Keith Zhao <keith.zhao@starfivetech.com>
To: undisclosed-recipients:;
In-Reply-To: <ifgjvonhkzcwrklzch5efguor2x6az4m737dwte4uyow7ar5dr@z4glaxse6dou>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spamd-Result: default: False [1.80 / 15.00];
	R_UNDISC_RCPT(3.00)[];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_RECIPIENTS(2.00)[m:,s:linaro-mm-sig@lists.linaro.org];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[61.152.239.75:server fail,180.164.60.184:server fail,175.102.18.54:server fail];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	TO_DN_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[ex01.ufhost.com:rdns,ex01.ufhost.com:helo];
	NEURAL_SPAM(0.00)[0.998];
	DMARC_NA(0.00)[starfivetech.com];
	FROM_EQ_ENVFROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: *
X-Rspamd-Queue-Id: 802023EC76
X-Spamd-Bar: +
Message-ID-Hash: L3I2VASZR3IJ72V6652U247OMZOG2RPJ
X-Message-ID-Hash: L3I2VASZR3IJ72V6652U247OMZOG2RPJ
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: display: Add yamls for JH7110 display subsystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L3I2VASZR3IJ72V6652U247OMZOG2RPJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDIwMjMvNi83IDE0OjQxLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiBPbiBUdWUsIEp1
biAwNiwgMjAyMyBhdCAxMTozNzo1M1BNICswMTAwLCBDb25vciBEb29sZXkgd3JvdGU6DQo+PiBP
biBXZWQsIEp1biAwNywgMjAyMyBhdCAxMjoyMjozM0FNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3
cm90ZToNCj4+ID4gQW0gRGllbnN0YWcsIDYuIEp1bmkgMjAyMywgMjA6NDE6MTcgQ0VTVCBzY2hy
aWViIFNoZW5neXUgUXU6DQo+PiA+ID4gPiBPbiBGcmksIEp1biAwMiwgMjAyMyBhdCAwMzo0MDoz
NVBNICswODAwLCBLZWl0aCBaaGFvIHdyb3RlOg0KPj4gPiA+ID4+IEFkZCBiaW5kaW5ncyBmb3Ig
Skg3MTEwIGRpc3BsYXkgc3Vic3lzdGVtIHdoaWNoDQo+PiA+ID4gPj4gaGFzIGEgZGlzcGxheSBj
b250cm9sbGVyIHZlcmlzaWxpY29uIGRjODIwMA0KPj4gPiA+ID4+IGFuZCBhbiBIRE1JIGludGVy
ZmFjZS4NCj4+IA0KPj4gPiA+ID4+ICtkZXNjcmlwdGlvbjoNCj4+ID4gPiA+PiArICBUaGUgU3Rh
ckZpdmUgU29DIHVzZXMgdGhlIEhETUkgc2lnbmFsIHRyYW5zbWl0ZXIgYmFzZWQgb24gaW5ub3Np
bGljb24gSVANCj4+ID4gPiA+IElzIGlubm9zaWxpY29uIHRoZSBzYW1lIHRoaW5nIGFzIHZlcmlz
aWxpY29uPyBBbHNvDQo+PiA+ID4gPiBzL3RyYW5zbWl0ZXIvdHJhbnNtaXR0ZXIvLCBib3RoIGhl
cmUgYW5kIGluIHRoZSB0aXRsZS4NCnllcyxpbm5vc2lsaWNvbiBpcyB0aGUgSERNSSBJUCAgYW5k
IHZlcmlzaWxpY29uIGlzIHRoZSBEQy1jb250cm9sbGVyIElQDQoNCj4+ID4gPiANCj4+ID4gPiBJ
IHRoaW5rIHRoYXQgaXMgbm90IHRoZSBzYW1lLCBJIHJlbWVtYmVyIFJvY2tjaGlwIGhhcyB1c2Vk
IGEgSERNSSANCj4+ID4gPiB0cmFuc21pdHRlciBmcm9tDQo+PiA+ID4gDQo+PiA+ID4gSW5ub3Np
bGljb24sIGFuZCB0aGVyZSBpcyBhIGV4aXN0aW5nIGRyaXZlciBmb3IgdGhhdCBpbiBtYWlubGlu
ZS4NCj4+ID4gDQo+PiA+IFllcCwgSSB0aGluayBJbm5vc2lsaWNvbiBpcyB0aGUgY29tcGFueSB5
b3UgdHVybiB0byB3aGVuIHlvdSB3YW50IHRvIHNhdmUNCj4+ID4gYSBiaXQgb2YgbW9uZXkgOy0p
IC4gSW4gdGhlIGJpZ2dlciBTb0NzIFJvY2tjaGlwIG1vc3Qgb2YgdGhlIHRpbWUgdXNlcw0KPj4g
PiBEZXNpZ253YXJlIGhkbWkgYmxvY2tzIGFuZCBsb29raW5nIGF0IHRoZSBoaXN0b3J5IG9ubHkg
dGhlIHJrMzAzNiBldmVyDQo+PiA+IHVzZWQgYW4gSW5ub3NpbGljb24gYmxvY2suDQo+PiA+IA0K
SSBoYXZlIGRvbmUgYSBIRE1JY29tcGFyaXNvbiBvZiB0aGUgcmszMDM2IGFuZCB0aGUgamg3MTEw
LCBhbmQgdGhleSBhcmUgYm90aCBiYXNlZCBvbiBpcCBJbm5vc2lsaWNvbi4NCg0KdGhlIGhhcmR3
YXJlIG9mIHRoZW0gLg0KU29tZSBwYXJ0cyBvZiB0aGUgaGFyZHdhcmUgb2YgdGhlIHR3byBhcmUg
Y29tbW9uLCBzdWNoIGFzIHRoZSBsb2dpYyBvZiBoZG1pIEkyQyB0byBvYnRhaW4gZWRpZCwgYW5k
IHRoZSByZWdpc3RlciBkZWZpbml0aW9uIGlzIGNvbnNpc3RlbnQuDQoNCk1hbnkgcmVnaXN0ZXJz
IGFyZSBkZWZpbmVkIGRpZmZlcmVudGx5IGZyb20gdGhlIGxpbnV4IG1haW4gbGluZSBpbm5vIGRy
aXZlciwgaW5jbHVkaW5nIHJlZ2lzdGVycyB0aGF0IGNvbnRhaW4gc3BlY2lmaWMgYml0cw0KYW5k
IHNvbWUgcmVnaXN0ZXJzIGluIGxpbnV4IG1haW4gbGluZSBpbm5vIGRyaXZlciBubyBsb25nZXIg
dXNlZCBpbiBteSBuZXcgaW5vbyBoZG1pIGhhcmR3YXJlLg0KDQo+PiA+IExvb2tpbmcgYXQgdGhl
IGhpc3RvcnksIDIwMTYgcmVhbGx5IHdhcyBhIGxvbmcgdGltZSBhZ28gOi1ELg0KPj4gPiANCj4+
ID4gPiBTbyBLZWl0aCwgaWYgdGhhdCdzIHRydWUsIEkgdGhpbmsgaXQgaXMgYmV0dGVyIHRvIHNl
cGVyYXRlIHRoZSBIRE1JIA0KPj4gPiA+IHN0dWZmIGFuZCByZXVzZSBleGlzdGluZyBkcml2ZXIu
DQo+PiA+IA0KPj4gPiBJJ20gbm90IHNvIHN1cmUgYWJvdXQgdGhhdCAtIGF0IGxlYXN0IGZyb20g
YSBjdXJzb3J5IGdsYW5jZSA6LSkgLg0KPj4gPiANCj4+ID4gVGhlIHJlZ2lzdGVycyBkbyBsb29r
IHNsaWdodGx5IGRpZmZlcmVudCBhbmQgSSBkb24ndCBrbm93IGhvdyBtdWNoDQo+PiA+IHRoZSBJ
UCBjaGFuZ2VkIGJldHdlZW4gdGhlIHJrMzAzNi12ZXJzaW9uIGFuZCB0aGUgamg3MTEwIHZlcnNp
b24uDQo+PiA+IA0KPj4gPiBBdCB0aGUgdmVyeSBsZWFzdCwgSSBrbm93IG15IHJrMzAzNiBib2Fy
ZCBpc24ndCBib290aW5nIHJpZ2h0IG5vdywgc28NCj4+ID4gSSBjYW4ndCByZWFsbHkgcHJvdmlk
ZSBoZWxwIGZvciBnZW5lcmFsaXppbmcgdGhlIHJvY2tjaGlwLWRyaXZlci4NCj4+ID4gDQo+PiA+
IEF0IHRoZSB2ZXJ5IGxlYXN0IGJvdGggdGhlIGJpbmRpbmcgYW5kIGRyaXZlciBjb3VsZCBkcm9w
IHRoZSAic3RhcmZpdmUtaGRtaSINCj4+ID4gYW5kIGFjdHVhbGx5IHVzZSB0aGUgSW5ub3NpbGlj
b24gaW4gdGhlIG5hbWluZyBzb21ld2hlcmUsIHNvIHRoYXQgaXQncw0KPj4gPiBjbGVhciBmb3Ig
ZnV0dXJlIGRldmVsb3BlcnMgOi0pDQo+PiANCj4+IFNlZWluZyAiYmFzZWQgb24iIGFsd2F5cyBt
YWtlcyBtZSBhIGxpdHRsZSBiaXQgbmVydm91cyB0byBiZSBob25lc3Qgd2hlbg0KPj4gaXQgY29t
ZXMgdG8gdXNpbmcgYSBjb21wYXRpYmxlIGZyb20gdGhlIElQLiBJcyBpdCB0aGUgSVA/IFdoYXQg
dmVyc2lvbg0KPj4gaXMgaXQ/IGV0Yy4gUGVyaGFwcyAic3RhcmZpdmUsamg3MTEwLWhkbWkiICYg
ZmFsbGluZyBiYWNrIHRvIHNvbWUgc29ydA0KPj4gb2YgImlubm9zaWxpY29uLGhkbWkiIHdvdWxk
IGJlIG1vcmUgZnV0dXJlL0lQLXNpbGxpbmVzcyBwcm9vZi4NCj4+IERyaXZlciBjYW4gYWx3YXlz
IGJlIGdlbmVyaWMgJiBiaW5kIGFnYWluc3QgImlubm9zaWxpY29uLGhkbWkiIHVudGlsDQo+PiB0
aGF0IGJlY29tZXMgaW1wb3NzaWJsZS4NCj4gDQo+IEdpdmVuIHRoYXQgTmVpbCB3YXMgc2F5aW5n
IHRoYXQgdGhlcmUncyBhdCBsZWFzdCB0d28NCj4gZ2VuZXJhdGlvbnMvcmV2aXNpb25zL21vZGVs
cyBvZiBhbiBIRE1JIGNvbnRyb2xsZXIgZnJvbSBJbm5vc2lsaWNvbiwgSSdtDQo+IG5vdCBzdXJl
IHRoYXQgY29tcGF0aWJsZSBpcyBlbm91Z2ggdG8gcmVhY2ggdGhhdCBnb2FsIGFueXdheS4NCj4g
DQo+IE1heGltZQ0KDQoNCg0KSSB3aWxsIGNoYW5nZSB0aGUgIHRoZSBiaW5kaW5nICB0byBtZWV0
IGlubm9zaWxpY29uLGhkbWkgLg0KZm9yIHRoZSBkcml2ZXJzIHBhcnQgLCBJIHdpbGwgc3R1ZHkg
dGhlIHBvc3NpYmlsaXR5IG9mIFJLLUhETUkgcmV1c2UuDQoNClRoYW5rIHlvdSBmb3IgeW91ciBj
b21tZW50cw0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
