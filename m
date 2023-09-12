Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD79D79D5C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 18:06:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFD8D3EFEF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 16:06:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 9BB723E925
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 16:06:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6143AC15;
	Tue, 12 Sep 2023 09:06:46 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 517A53F738;
	Tue, 12 Sep 2023 09:06:06 -0700 (PDT)
Message-ID: <e6f236aa-4a16-baf0-6567-1714248e2fc0@arm.com>
Date: Tue, 12 Sep 2023 17:05:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-GB
To: Rob Herring <robh@kernel.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
 <20230911154448.GA1279317-robh@kernel.org>
 <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
 <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org>
 <95f9dd3b-1f33-4af5-8757-a97e8b9bb216@arm.com>
 <20230912155338.GA842444-robh@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230912155338.GA842444-robh@kernel.org>
X-Rspamd-Queue-Id: 9BB723E925
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
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,arm.com,kernel.org,collabora.com,lists.freedesktop.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,foss.arm.com:helo,foss.arm.com:rdns,devicetree.org:url]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: X53YN7FFGQ4GR5WOA6WGTVBCDICIKFSI
X-Message-ID-Hash: X53YN7FFGQ4GR5WOA6WGTVBCDICIKFSI
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krz
 ysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X53YN7FFGQ4GR5WOA6WGTVBCDICIKFSI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDkvMjAyMyA0OjUzIHBtLCBSb2IgSGVycmluZyB3cm90ZToNCj4gT24gVHVlLCBTZXAg
MTIsIDIwMjMgYXQgMTE6MTM6NTBBTSArMDEwMCwgUm9iaW4gTXVycGh5IHdyb3RlOg0KPj4gT24g
MTIvMDkvMjAyMyA5OjI4IGFtLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPj4+IE9uIDEy
LzA5LzIwMjMgMDg6MTYsIFlvbmcgV3UgKOWQtOWLhykgd3JvdGU6DQo+Pj4+IEhpIFJvYiwNCj4+
Pj4NCj4+Pj4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4NCj4+Pj4NCj4+Pj4gT24gTW9uLCAyMDIz
LTA5LTExIGF0IDEwOjQ0IC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4+Pj4+ICAgIAkNCj4+
Pj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0
dGFjaG1lbnRzIHVudGlsDQo+Pj4+PiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRo
ZSBjb250ZW50Lg0KPj4+Pj4gICAgT24gTW9uLCBTZXAgMTEsIDIwMjMgYXQgMTA6MzA6MzdBTSAr
MDgwMCwgWW9uZyBXdSB3cm90ZToNCj4+Pj4+PiBUaGlzIGFkZHMgdGhlIGJpbmRpbmcgZm9yIGRl
c2NyaWJpbmcgYSBDTUEgbWVtb3J5IGZvciBNZWRpYVRlaw0KPj4+Pj4gU1ZQKFNlY3VyZQ0KPj4+
Pj4+IFZpZGVvIFBhdGgpLg0KPj4+Pj4NCj4+Pj4+IENNQSBpcyBhIExpbnV4IHRoaW5nLiBIb3cg
aXMgdGhpcyByZWxhdGVkIHRvIENNQT8NCj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsuY29tPg0KPj4+Pj4+IC0tLQ0KPj4+Pj4+ICAg
IC4uLi9tZWRpYXRlayxzZWN1cmVfY21hX2NodW5rbWVtLnlhbWwgICAgICAgICB8IDQyDQo+Pj4+
PiArKysrKysrKysrKysrKysrKysrDQo+Pj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2Vy
dGlvbnMoKykNCj4+Pj4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPj4+Pj4gbWVtb3J5L21lZGlhdGVrLHNlY3VyZV9j
bWFfY2h1bmttZW0ueWFtbA0KPj4+Pj4+DQo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC0NCj4+Pj4+IG1lbW9yeS9tZWRpYXRlayxz
ZWN1cmVfY21hX2NodW5rbWVtLnlhbWwNCj4+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3Jlc2VydmVkLQ0KPj4+Pj4gbWVtb3J5L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1
bmttZW0ueWFtbA0KPj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4+Pj4gaW5kZXggMDAw
MDAwMDAwMDAwLi5jYzEwZTAwZDM1YzQNCj4+Pj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4+Pj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPj4+Pj4gbWVt
b3J5L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbA0KPj4+Pj4+IEBAIC0wLDAgKzEs
NDIgQEANCj4+Pj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
UiBCU0QtMi1DbGF1c2UpDQo+Pj4+Pj4gKyVZQU1MIDEuMg0KPj4+Pj4+ICstLS0NCj4+Pj4+PiAr
JGlkOg0KPj4+Pj4gaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVzZXJ2ZWQtbWVtb3J5
L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbCMNCj4+Pj4+PiArJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+Pj4+Pj4gKw0KPj4+
Pj4+ICt0aXRsZTogTWVkaWFUZWsgU2VjdXJlIFZpZGVvIFBhdGggUmVzZXJ2ZWQgTWVtb3J5DQo+
Pj4+Pg0KPj4+Pj4gV2hhdCBtYWtlcyB0aGlzIHNwZWNpZmljIHRvIE1lZGlhdGVrPyBTZWN1cmUg
dmlkZW8gcGF0aCBpcyBmYWlybHkNCj4+Pj4+IGNvbW1vbiwgcmlnaHQ/DQo+Pj4+DQo+Pj4+IEhl
cmUgd2UganVzdCByZXNlcnZlIGEgYnVmZmVyIGFuZCB3b3VsZCBsaWtlIHRvIGNyZWF0ZSBhIGRt
YS1idWYgc2VjdXJlDQo+Pj4+IGhlYXAgZm9yIFNWUCwgdGhlbiB0aGUgc2VjdXJlIGVuZ2luZXMo
VmNvZGVjIGFuZCBEUk0pIGNvdWxkIHByZXBhcmUNCj4+Pj4gc2VjdXJlIGJ1ZmZlciB0aHJvdWdo
IGl0Lg0KPj4+PiBCdXQgdGhlIGhlYXAgZHJpdmVyIGlzIHB1cmUgU1cgZHJpdmVyLCBpdCBpcyBu
b3QgcGxhdGZvcm0gZGV2aWNlIGFuZA0KPj4+DQo+Pj4gQWxsIGRyaXZlcnMgYXJlIHB1cmUgU1cu
DQo+Pj4NCj4+Pj4gd2UgZG9uJ3QgaGF2ZSBhIGNvcnJlc3BvbmRpbmcgSFcgdW5pdCBmb3IgaXQu
IFRodXMgSSBkb24ndCB0aGluayBJDQo+Pj4+IGNvdWxkIGNyZWF0ZSBhIHBsYXRmb3JtIGR0c2kg
bm9kZSBhbmQgdXNlICJtZW1vcnktcmVnaW9uIiBwb2ludGVyIHRvDQo+Pj4+IHRoZSByZWdpb24u
IEkgdXNlZCBSRVNFUlZFRE1FTV9PRl9ERUNMQVJFIGN1cnJlbnRseShUaGUgY29kZSBpcyBpbg0K
Pj4+PiBbOS85XSkuIFNvcnJ5IGlmIHRoaXMgaXMgbm90IHJpZ2h0Lg0KPj4+DQo+Pj4gSWYgdGhp
cyBpcyBub3QgZm9yIGFueSBoYXJkd2FyZSBhbmQgeW91IGFscmVhZHkgdW5kZXJzdGFuZCB0aGlz
IChzaW5jZQ0KPj4+IHlvdSBjYW5ub3QgdXNlIG90aGVyIGJpbmRpbmdzKSB0aGVuIHlvdSBjYW5u
b3QgaGF2ZSBjdXN0b20gYmluZGluZ3MgZm9yDQo+Pj4gaXQgZWl0aGVyLg0KPj4+DQo+Pj4+DQo+
Pj4+IFRoZW4gaW4gb3VyIHVzYWdlIGNhc2UsIGlzIHRoZXJlIHNvbWUgc2ltaWxhciBtZXRob2Qg
dG8gZG8gdGhpcz8gb3INCj4+Pj4gYW55IG90aGVyIHN1Z2dlc3Rpb24/DQo+Pj4NCj4+PiBEb24n
dCBzdHVmZiBzb2Z0d2FyZSBpbnRvIERUUy4NCj4+DQo+PiBBcmVuJ3QgbW9zdCByZXNlcnZlZC1t
ZW1vcnkgYmluZGluZ3MganVzdCBzb2Z0d2FyZSBwb2xpY3kgaWYgeW91IGxvb2sgYXQgaXQNCj4+
IHRoYXQgd2F5LCB0aG91Z2g/IElJVUMgdGhpcyBpcyBhIHBvb2wgb2YgbWVtb3J5IHRoYXQgaXMg
dmlzaWJsZSBhbmQNCj4+IGF2YWlsYWJsZSB0byB0aGUgTm9uLVNlY3VyZSBPUywgYnV0IGlzIGZ1
bmRhbWVudGFsbHkgb3duZWQgYnkgdGhlIFNlY3VyZQ0KPj4gVEVFLCBhbmQgcGFnZXMgdGhhdCB0
aGUgVEVFIGFsbG9jYXRlcyBmcm9tIGl0IHdpbGwgYmVjb21lIHBoeXNpY2FsbHkNCj4+IGluYWNj
ZXNzaWJsZSB0byB0aGUgT1MuIFRodXMgdGhlIHBsYXRmb3JtIGRvZXMgaW1wb3NlIGNvbnN0cmFp
bnRzIG9uIGhvdyB0aGUNCj4+IE5vbi1TZWN1cmUgT1MgbWF5IHVzZSBpdCwgYW5kIHBlciB0aGUg
cmVzdCBvZiB0aGUgcmVzZXJ2ZWQtbWVtb3J5IGJpbmRpbmdzLA0KPj4gZGVzY3JpYmluZyBpdCBh
cyBhICJyZXVzYWJsZSIgcmVzZXJ2YXRpb24gc2VlbXMgZW50aXJlbHkgYXBwcm9wcmlhdGUuIElm
DQo+PiBhbnl0aGluZyB0aGF0J3MgKm1vcmUqIHBsYXRmb3JtLXJlbGF0ZWQgYW5kIHNvIERULXJl
bGV2YW50IHRoYW4gdHlwaWNhbA0KPj4gYXJiaXRyYXJ5IHJlc2VydmF0aW9ucyB3aGljaCBqdXN0
IHJlcHJlc2VudCAic2F2ZSBzb21lIG1lbW9yeSB0byBkZWRpY2F0ZSB0bw0KPj4gYSBwYXJ0aWN1
bGFyIGRyaXZlciIgYW5kIGRvbid0IGFjdHVhbGx5IGJlYXIgYW55IHJlbGF0aW9uc2hpcCB0byBm
aXJtd2FyZSBvcg0KPj4gaGFyZHdhcmUgYXQgYWxsLg0KPiANCj4gWWVzLCBhIG1lbW9yeSByYW5n
ZSBkZWZpbmVkIGJ5IGhhcmR3YXJlIG9yIGZpcm13YXJlIGlzIHdpdGhpbiBzY29wZSBvZg0KPiBE
VC4gKENNQSBhdCBhcmliaXRyYXJ5IGFkZHJlc3Mgd2FzIHF1ZXN0aW9uYWJsZS4pDQo+IA0KPiBN
eSBpc3N1ZSBoZXJlIGlzIG1vcmUgdGhhdCAnc2VjdXJlIHZpZGVvIG1lbW9yeScgaXMgbm90IGFu
eSB3YXkgTWVkaWF0ZWsNCj4gc3BlY2lmaWMuIEFJVUksIGl0J3MgYSByZXF1aXJlbWVudCBmcm9t
IGNlcnRhaW4gY29udGVudCBwcm92aWRlcnMgZm9yDQo+IHZpZGVvIHBsYXliYWNrIHRvIHdvcmsu
IFNvIHdoeSB0aGUgTWVkaWF0ZWsgc3BlY2lmaWMgYmluZGluZz8NCg0KQmFzZWQgb24gdGhlIGlt
cGxlbWVudGF0aW9uLCBJJ2QgYXNrIHRoZSBxdWVzdGlvbiB0aGUgb3RoZXIgd2F5IHJvdW5kIC0g
DQp0aGUgd2F5IGl0IHdvcmtzIGxvb2tzIHRvIGJlIGF0IGxlYXN0IHNvbWV3aGF0IGRlcGVuZGVu
dCBvbiBNZWRpYXRlaydzIA0KVEVFLCBpbiB3YXlzIHdoZXJlIG90aGVyIHZlbmRvcnMnIGVxdWl2
YWxlbnQgaW1wbGVtZW50YXRpb25zIG1heSBiZSANCmZ1bmN0aW9uYWxseSBpbmNvbXBhdGlibGUs
IGhvd2V2ZXIgbm90aGluZyBzdWdnZXN0cyBpdCdzIGFjdHVhbGx5IA0Kc3BlY2lmaWMgdG8gdmlk
ZW8gKGJleW9uZCB0aGF0IHByZXN1bWFibHkgYmVpbmcgdGhlIHByaW1hcnkgdXNlLWNhc2UgDQp0
aGV5IGhhZCBpbiBtaW5kKS4NCg0KVGhhbmtzLA0KUm9iaW4uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
