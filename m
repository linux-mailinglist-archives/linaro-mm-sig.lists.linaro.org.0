Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D243379CDA6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 12:14:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A73343F02B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 10:14:12 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 9738A3E94E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 10:14:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54015C15;
	Tue, 12 Sep 2023 03:14:44 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F3373F738;
	Tue, 12 Sep 2023 03:14:04 -0700 (PDT)
Message-ID: <95f9dd3b-1f33-4af5-8757-a97e8b9bb216@arm.com>
Date: Tue, 12 Sep 2023 11:13:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "robh@kernel.org" <robh@kernel.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
 <20230911154448.GA1279317-robh@kernel.org>
 <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
 <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org>
X-Rspamd-Queue-Id: 9738A3E94E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,mediatek.com,arm.com,kernel.org,collabora.com,lists.freedesktop.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[foss.arm.com:helo,foss.arm.com:rdns,devicetree.org:url]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7GR4JUY3KRNQB27WXQF75LK7TGVHMM44
X-Message-ID-Hash: 7GR4JUY3KRNQB27WXQF75LK7TGVHMM44
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg
 @gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7GR4JUY3KRNQB27WXQF75LK7TGVHMM44/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDkvMjAyMyA5OjI4IGFtLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPiBPbiAx
Mi8wOS8yMDIzIDA4OjE2LCBZb25nIFd1ICjlkLTli4cpIHdyb3RlOg0KPj4gSGkgUm9iLA0KPj4N
Cj4+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcuDQo+Pg0KPj4gT24gTW9uLCAyMDIzLTA5LTExIGF0
IDEwOjQ0IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4+PiAgIAkNCj4+PiBFeHRlcm5hbCBl
bWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bnRp
bA0KPj4+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIgb3IgdGhlIGNvbnRlbnQuDQo+Pj4g
ICBPbiBNb24sIFNlcCAxMSwgMjAyMyBhdCAxMDozMDozN0FNICswODAwLCBZb25nIFd1IHdyb3Rl
Og0KPj4+PiBUaGlzIGFkZHMgdGhlIGJpbmRpbmcgZm9yIGRlc2NyaWJpbmcgYSBDTUEgbWVtb3J5
IGZvciBNZWRpYVRlaw0KPj4+IFNWUChTZWN1cmUNCj4+Pj4gVmlkZW8gUGF0aCkuDQo+Pj4NCj4+
PiBDTUEgaXMgYSBMaW51eCB0aGluZy4gSG93IGlzIHRoaXMgcmVsYXRlZCB0byBDTUE/DQo+Pg0K
Pj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4N
Cj4+Pj4gLS0tDQo+Pj4+ICAgLi4uL21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbCAg
ICAgICAgIHwgNDINCj4+PiArKysrKysrKysrKysrKysrKysrDQo+Pj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDQyIGluc2VydGlvbnMoKykNCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPj4+IG1lbW9yeS9tZWRpYXRlayxz
ZWN1cmVfY21hX2NodW5rbWVtLnlhbWwNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC0NCj4+PiBtZW1vcnkvbWVkaWF0ZWss
c2VjdXJlX2NtYV9jaHVua21lbS55YW1sDQo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcmVzZXJ2ZWQtDQo+Pj4gbWVtb3J5L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmtt
ZW0ueWFtbA0KPj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+PiBpbmRleCAwMDAwMDAwMDAw
MDAuLmNjMTBlMDBkMzVjNA0KPj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC0NCj4+PiBtZW1vcnkvbWVkaWF0ZWss
c2VjdXJlX2NtYV9jaHVua21lbS55YW1sDQo+Pj4+IEBAIC0wLDAgKzEsNDIgQEANCj4+Pj4gKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQ0K
Pj4+PiArJVlBTUwgMS4yDQo+Pj4+ICstLS0NCj4+Pj4gKyRpZDoNCj4+PiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9yZXNlcnZlZC1tZW1vcnkvbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVu
a21lbS55YW1sIw0KPj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2No
ZW1hcy9jb3JlLnlhbWwjDQo+Pj4+ICsNCj4+Pj4gK3RpdGxlOiBNZWRpYVRlayBTZWN1cmUgVmlk
ZW8gUGF0aCBSZXNlcnZlZCBNZW1vcnkNCj4+Pg0KPj4+IFdoYXQgbWFrZXMgdGhpcyBzcGVjaWZp
YyB0byBNZWRpYXRlaz8gU2VjdXJlIHZpZGVvIHBhdGggaXMgZmFpcmx5DQo+Pj4gY29tbW9uLCBy
aWdodD8NCj4+DQo+PiBIZXJlIHdlIGp1c3QgcmVzZXJ2ZSBhIGJ1ZmZlciBhbmQgd291bGQgbGlr
ZSB0byBjcmVhdGUgYSBkbWEtYnVmIHNlY3VyZQ0KPj4gaGVhcCBmb3IgU1ZQLCB0aGVuIHRoZSBz
ZWN1cmUgZW5naW5lcyhWY29kZWMgYW5kIERSTSkgY291bGQgcHJlcGFyZQ0KPj4gc2VjdXJlIGJ1
ZmZlciB0aHJvdWdoIGl0Lg0KPj4gICANCj4+IEJ1dCB0aGUgaGVhcCBkcml2ZXIgaXMgcHVyZSBT
VyBkcml2ZXIsIGl0IGlzIG5vdCBwbGF0Zm9ybSBkZXZpY2UgYW5kDQo+IA0KPiBBbGwgZHJpdmVy
cyBhcmUgcHVyZSBTVy4NCj4gDQo+PiB3ZSBkb24ndCBoYXZlIGEgY29ycmVzcG9uZGluZyBIVyB1
bml0IGZvciBpdC4gVGh1cyBJIGRvbid0IHRoaW5rIEkNCj4+IGNvdWxkIGNyZWF0ZSBhIHBsYXRm
b3JtIGR0c2kgbm9kZSBhbmQgdXNlICJtZW1vcnktcmVnaW9uIiBwb2ludGVyIHRvDQo+PiB0aGUg
cmVnaW9uLiBJIHVzZWQgUkVTRVJWRURNRU1fT0ZfREVDTEFSRSBjdXJyZW50bHkoVGhlIGNvZGUg
aXMgaW4NCj4+IFs5LzldKS4gU29ycnkgaWYgdGhpcyBpcyBub3QgcmlnaHQuDQo+IA0KPiBJZiB0
aGlzIGlzIG5vdCBmb3IgYW55IGhhcmR3YXJlIGFuZCB5b3UgYWxyZWFkeSB1bmRlcnN0YW5kIHRo
aXMgKHNpbmNlDQo+IHlvdSBjYW5ub3QgdXNlIG90aGVyIGJpbmRpbmdzKSB0aGVuIHlvdSBjYW5u
b3QgaGF2ZSBjdXN0b20gYmluZGluZ3MgZm9yDQo+IGl0IGVpdGhlci4NCj4gDQo+Pg0KPj4gVGhl
biBpbiBvdXIgdXNhZ2UgY2FzZSwgaXMgdGhlcmUgc29tZSBzaW1pbGFyIG1ldGhvZCB0byBkbyB0
aGlzPyBvcg0KPj4gYW55IG90aGVyIHN1Z2dlc3Rpb24/DQo+IA0KPiBEb24ndCBzdHVmZiBzb2Z0
d2FyZSBpbnRvIERUUy4NCg0KQXJlbid0IG1vc3QgcmVzZXJ2ZWQtbWVtb3J5IGJpbmRpbmdzIGp1
c3Qgc29mdHdhcmUgcG9saWN5IGlmIHlvdSBsb29rIGF0IA0KaXQgdGhhdCB3YXksIHRob3VnaD8g
SUlVQyB0aGlzIGlzIGEgcG9vbCBvZiBtZW1vcnkgdGhhdCBpcyB2aXNpYmxlIGFuZCANCmF2YWls
YWJsZSB0byB0aGUgTm9uLVNlY3VyZSBPUywgYnV0IGlzIGZ1bmRhbWVudGFsbHkgb3duZWQgYnkg
dGhlIFNlY3VyZSANClRFRSwgYW5kIHBhZ2VzIHRoYXQgdGhlIFRFRSBhbGxvY2F0ZXMgZnJvbSBp
dCB3aWxsIGJlY29tZSBwaHlzaWNhbGx5IA0KaW5hY2Nlc3NpYmxlIHRvIHRoZSBPUy4gVGh1cyB0
aGUgcGxhdGZvcm0gZG9lcyBpbXBvc2UgY29uc3RyYWludHMgb24gaG93IA0KdGhlIE5vbi1TZWN1
cmUgT1MgbWF5IHVzZSBpdCwgYW5kIHBlciB0aGUgcmVzdCBvZiB0aGUgcmVzZXJ2ZWQtbWVtb3J5
IA0KYmluZGluZ3MsIGRlc2NyaWJpbmcgaXQgYXMgYSAicmV1c2FibGUiIHJlc2VydmF0aW9uIHNl
ZW1zIGVudGlyZWx5IA0KYXBwcm9wcmlhdGUuIElmIGFueXRoaW5nIHRoYXQncyAqbW9yZSogcGxh
dGZvcm0tcmVsYXRlZCBhbmQgc28gDQpEVC1yZWxldmFudCB0aGFuIHR5cGljYWwgYXJiaXRyYXJ5
IHJlc2VydmF0aW9ucyB3aGljaCBqdXN0IHJlcHJlc2VudCANCiJzYXZlIHNvbWUgbWVtb3J5IHRv
IGRlZGljYXRlIHRvIGEgcGFydGljdWxhciBkcml2ZXIiIGFuZCBkb24ndCBhY3R1YWxseSANCmJl
YXIgYW55IHJlbGF0aW9uc2hpcCB0byBmaXJtd2FyZSBvciBoYXJkd2FyZSBhdCBhbGwuDQoNCkhv
d2V2ZXIsIHRoZSBmYWN0IHRoYXQgTGludXgncyBpbXBsZW1lbnRhdGlvbiBvZiBob3cgdG8gcmV1
c2UgcmVzZXJ2ZWQgDQptZW1vcnkgYXJlYXMgaXMgY2FsbGVkIENNQSBpcyBpbmRlZWQgc3RpbGwg
aXJyZWxldmFudCBhbmQgaGFzIG5vIHBsYWNlIA0KaW4gdGhlIGJpbmRpbmcgaXRzZWxmLg0KDQpU
aGFua3MsDQpSb2Jpbi4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
