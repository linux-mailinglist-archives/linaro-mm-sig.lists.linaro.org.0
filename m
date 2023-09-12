Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B961779D55A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 17:53:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B49C63F030
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 15:53:48 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id C202D3E925
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 15:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=fail ("headers rsa verify failed") header.d=kernel.org header.s=k20201202 header.b=Tvk9i99f;
	spf=pass (lists.linaro.org: domain of "SRS0=xM+6=E4=robh_at_kernel.org=rob@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=xM+6=E4=robh_at_kernel.org=rob@kernel.org";
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 96AC9B81C60;
	Tue, 12 Sep 2023 15:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CD4AC433C8;
	Tue, 12 Sep 2023 15:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694534021;
	bh=xkigHyMcpHzyai7EgTiSs+NsOlKXpLATdLHNlaBsJgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tvk9i99fO9UoAi58YWla7+2k1+nH2vt/tHPvhSo3ZkfNsSt8wUaq4gr/qdULmpmG5
	 3vlqMTymdwqdb4I56Rz5NJ4BTspmGkJaL4lrJDZhsPJwNjOO+WQMvJhANgAr+TJbtg
	 7Is1Da2pdLTamB8nRUKM31ExpHmoo8uDhewDIAKjQAjAuSrPB8fzwepniGdawZJBiD
	 D0o+H4IzyqwI3lppePWeqNFwzzoCW1tOzRyw0/QXhJs0dPQoJdQzU9h2YOWmDhNC7m
	 Ivh+tF61I/924hgRoSjaE3ucn01cVm0IdieeBRjXX6Z4sCOOIX7al4wS4GBE25hS4q
	 hToJzl0cePaBQ==
Received: (nullmailer pid 854348 invoked by uid 1000);
	Tue, 12 Sep 2023 15:53:38 -0000
Date: Tue, 12 Sep 2023 10:53:38 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20230912155338.GA842444-robh@kernel.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
 <20230911154448.GA1279317-robh@kernel.org>
 <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
 <c62a7ed8-d80a-3a82-040a-d4c74a71285a@linaro.org>
 <95f9dd3b-1f33-4af5-8757-a97e8b9bb216@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95f9dd3b-1f33-4af5-8757-a97e8b9bb216@arm.com>
X-Rspamd-Queue-Id: C202D3E925
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	FORGED_SENDER(0.30)[robh@kernel.org,SRS0=xM@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_FROM(0.00)[6=E4=robh_at_kernel.org=rob];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,none];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,arm.com,kernel.org,collabora.com,lists.freedesktop.org,gmail.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,SRS0=xM@kernel.org];
	R_DKIM_REJECT(0.00)[kernel.org:s=k20201202];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.source.kernel.org:helo,ams.source.kernel.org:rdns,devicetree.org:url,mediatek.com:email]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HM7RGWSKHSHY2Y5ZSWZVMC7E3MREYGIR
X-Message-ID-Hash: HM7RGWSKHSHY2Y5ZSWZVMC7E3MREYGIR
X-MailFrom: SRS0=xM+6=E4=robh_at_kernel.org=rob@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Yong Wu =?utf-8?B?KOWQtOWLhyk=?= <Yong.Wu@mediatek.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Jianjiao Zeng =?utf-8?B?KOabvuWBpeWnoyk=?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, Kuohong Wang =?utf-8?B?KOeOi+Wci+m0uyk=?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlow
  ski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HM7RGWSKHSHY2Y5ZSWZVMC7E3MREYGIR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgMTE6MTM6NTBBTSArMDEwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOg0KPiBPbiAxMi8wOS8yMDIzIDk6MjggYW0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
DQo+ID4gT24gMTIvMDkvMjAyMyAwODoxNiwgWW9uZyBXdSAo5ZC05YuHKSB3cm90ZToNCj4gPiA+
IEhpIFJvYiwNCj4gPiA+IA0KPiA+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4NCj4gPiA+IA0K
PiA+ID4gT24gTW9uLCAyMDIzLTA5LTExIGF0IDEwOjQ0IC0wNTAwLCBSb2IgSGVycmluZyB3cm90
ZToNCj4gPiA+ID4gICAJDQo+ID4gPiA+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBj
bGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsDQo+ID4gPiA+IHlvdSBoYXZlIHZl
cmlmaWVkIHRoZSBzZW5kZXIgb3IgdGhlIGNvbnRlbnQuDQo+ID4gPiA+ICAgT24gTW9uLCBTZXAg
MTEsIDIwMjMgYXQgMTA6MzA6MzdBTSArMDgwMCwgWW9uZyBXdSB3cm90ZToNCj4gPiA+ID4gPiBU
aGlzIGFkZHMgdGhlIGJpbmRpbmcgZm9yIGRlc2NyaWJpbmcgYSBDTUEgbWVtb3J5IGZvciBNZWRp
YVRlaw0KPiA+ID4gPiBTVlAoU2VjdXJlDQo+ID4gPiA+ID4gVmlkZW8gUGF0aCkuDQo+ID4gPiA+
IA0KPiA+ID4gPiBDTUEgaXMgYSBMaW51eCB0aGluZy4gSG93IGlzIHRoaXMgcmVsYXRlZCB0byBD
TUE/DQo+ID4gPiANCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1
IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiAgIC4uLi9t
ZWRpYXRlayxzZWN1cmVfY21hX2NodW5rbWVtLnlhbWwgICAgICAgICB8IDQyDQo+ID4gPiA+ICsr
KysrKysrKysrKysrKysrKysNCj4gPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRp
b25zKCspDQo+ID4gPiA+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLQ0KPiA+ID4gPiBtZW1vcnkvbWVkaWF0ZWssc2VjdXJl
X2NtYV9jaHVua21lbS55YW1sDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC0NCj4gPiA+ID4gbWVtb3J5
L21lZGlhdGVrLHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbA0KPiA+ID4gPiBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC0NCj4gPiA+ID4gbWVtb3J5L21lZGlhdGVr
LHNlY3VyZV9jbWFfY2h1bmttZW0ueWFtbA0KPiA+ID4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+ID4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYzEwZTAwZDM1YzQNCj4gPiA+ID4gPiAt
LS0gL2Rldi9udWxsDQo+ID4gPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3Jlc2VydmVkLQ0KPiA+ID4gPiBtZW1vcnkvbWVkaWF0ZWssc2VjdXJlX2NtYV9jaHVu
a21lbS55YW1sDQo+ID4gPiA+ID4gQEAgLTAsMCArMSw0MiBAQA0KPiA+ID4gPiA+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCj4gPiA+
ID4gPiArJVlBTUwgMS4yDQo+ID4gPiA+ID4gKy0tLQ0KPiA+ID4gPiA+ICskaWQ6DQo+ID4gPiA+
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9tZWRpYXRlayxz
ZWN1cmVfY21hX2NodW5rbWVtLnlhbWwjDQo+ID4gPiA+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZp
Y2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiArdGl0bGU6IE1lZGlhVGVrIFNlY3VyZSBWaWRlbyBQYXRoIFJlc2VydmVkIE1lbW9yeQ0KPiA+
ID4gPiANCj4gPiA+ID4gV2hhdCBtYWtlcyB0aGlzIHNwZWNpZmljIHRvIE1lZGlhdGVrPyBTZWN1
cmUgdmlkZW8gcGF0aCBpcyBmYWlybHkNCj4gPiA+ID4gY29tbW9uLCByaWdodD8NCj4gPiA+IA0K
PiA+ID4gSGVyZSB3ZSBqdXN0IHJlc2VydmUgYSBidWZmZXIgYW5kIHdvdWxkIGxpa2UgdG8gY3Jl
YXRlIGEgZG1hLWJ1ZiBzZWN1cmUNCj4gPiA+IGhlYXAgZm9yIFNWUCwgdGhlbiB0aGUgc2VjdXJl
IGVuZ2luZXMoVmNvZGVjIGFuZCBEUk0pIGNvdWxkIHByZXBhcmUNCj4gPiA+IHNlY3VyZSBidWZm
ZXIgdGhyb3VnaCBpdC4NCj4gPiA+IEJ1dCB0aGUgaGVhcCBkcml2ZXIgaXMgcHVyZSBTVyBkcml2
ZXIsIGl0IGlzIG5vdCBwbGF0Zm9ybSBkZXZpY2UgYW5kDQo+ID4gDQo+ID4gQWxsIGRyaXZlcnMg
YXJlIHB1cmUgU1cuDQo+ID4gDQo+ID4gPiB3ZSBkb24ndCBoYXZlIGEgY29ycmVzcG9uZGluZyBI
VyB1bml0IGZvciBpdC4gVGh1cyBJIGRvbid0IHRoaW5rIEkNCj4gPiA+IGNvdWxkIGNyZWF0ZSBh
IHBsYXRmb3JtIGR0c2kgbm9kZSBhbmQgdXNlICJtZW1vcnktcmVnaW9uIiBwb2ludGVyIHRvDQo+
ID4gPiB0aGUgcmVnaW9uLiBJIHVzZWQgUkVTRVJWRURNRU1fT0ZfREVDTEFSRSBjdXJyZW50bHko
VGhlIGNvZGUgaXMgaW4NCj4gPiA+IFs5LzldKS4gU29ycnkgaWYgdGhpcyBpcyBub3QgcmlnaHQu
DQo+ID4gDQo+ID4gSWYgdGhpcyBpcyBub3QgZm9yIGFueSBoYXJkd2FyZSBhbmQgeW91IGFscmVh
ZHkgdW5kZXJzdGFuZCB0aGlzIChzaW5jZQ0KPiA+IHlvdSBjYW5ub3QgdXNlIG90aGVyIGJpbmRp
bmdzKSB0aGVuIHlvdSBjYW5ub3QgaGF2ZSBjdXN0b20gYmluZGluZ3MgZm9yDQo+ID4gaXQgZWl0
aGVyLg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBUaGVuIGluIG91ciB1c2FnZSBjYXNlLCBpcyB0aGVy
ZSBzb21lIHNpbWlsYXIgbWV0aG9kIHRvIGRvIHRoaXM/IG9yDQo+ID4gPiBhbnkgb3RoZXIgc3Vn
Z2VzdGlvbj8NCj4gPiANCj4gPiBEb24ndCBzdHVmZiBzb2Z0d2FyZSBpbnRvIERUUy4NCj4gDQo+
IEFyZW4ndCBtb3N0IHJlc2VydmVkLW1lbW9yeSBiaW5kaW5ncyBqdXN0IHNvZnR3YXJlIHBvbGlj
eSBpZiB5b3UgbG9vayBhdCBpdA0KPiB0aGF0IHdheSwgdGhvdWdoPyBJSVVDIHRoaXMgaXMgYSBw
b29sIG9mIG1lbW9yeSB0aGF0IGlzIHZpc2libGUgYW5kDQo+IGF2YWlsYWJsZSB0byB0aGUgTm9u
LVNlY3VyZSBPUywgYnV0IGlzIGZ1bmRhbWVudGFsbHkgb3duZWQgYnkgdGhlIFNlY3VyZQ0KPiBU
RUUsIGFuZCBwYWdlcyB0aGF0IHRoZSBURUUgYWxsb2NhdGVzIGZyb20gaXQgd2lsbCBiZWNvbWUg
cGh5c2ljYWxseQ0KPiBpbmFjY2Vzc2libGUgdG8gdGhlIE9TLiBUaHVzIHRoZSBwbGF0Zm9ybSBk
b2VzIGltcG9zZSBjb25zdHJhaW50cyBvbiBob3cgdGhlDQo+IE5vbi1TZWN1cmUgT1MgbWF5IHVz
ZSBpdCwgYW5kIHBlciB0aGUgcmVzdCBvZiB0aGUgcmVzZXJ2ZWQtbWVtb3J5IGJpbmRpbmdzLA0K
PiBkZXNjcmliaW5nIGl0IGFzIGEgInJldXNhYmxlIiByZXNlcnZhdGlvbiBzZWVtcyBlbnRpcmVs
eSBhcHByb3ByaWF0ZS4gSWYNCj4gYW55dGhpbmcgdGhhdCdzICptb3JlKiBwbGF0Zm9ybS1yZWxh
dGVkIGFuZCBzbyBEVC1yZWxldmFudCB0aGFuIHR5cGljYWwNCj4gYXJiaXRyYXJ5IHJlc2VydmF0
aW9ucyB3aGljaCBqdXN0IHJlcHJlc2VudCAic2F2ZSBzb21lIG1lbW9yeSB0byBkZWRpY2F0ZSB0
bw0KPiBhIHBhcnRpY3VsYXIgZHJpdmVyIiBhbmQgZG9uJ3QgYWN0dWFsbHkgYmVhciBhbnkgcmVs
YXRpb25zaGlwIHRvIGZpcm13YXJlIG9yDQo+IGhhcmR3YXJlIGF0IGFsbC4NCg0KWWVzLCBhIG1l
bW9yeSByYW5nZSBkZWZpbmVkIGJ5IGhhcmR3YXJlIG9yIGZpcm13YXJlIGlzIHdpdGhpbiBzY29w
ZSBvZiANCkRULiAoQ01BIGF0IGFyaWJpdHJhcnkgYWRkcmVzcyB3YXMgcXVlc3Rpb25hYmxlLikN
Cg0KTXkgaXNzdWUgaGVyZSBpcyBtb3JlIHRoYXQgJ3NlY3VyZSB2aWRlbyBtZW1vcnknIGlzIG5v
dCBhbnkgd2F5IE1lZGlhdGVrIA0Kc3BlY2lmaWMuIEFJVUksIGl0J3MgYSByZXF1aXJlbWVudCBm
cm9tIGNlcnRhaW4gY29udGVudCBwcm92aWRlcnMgZm9yIA0KdmlkZW8gcGxheWJhY2sgdG8gd29y
ay4gU28gd2h5IHRoZSBNZWRpYXRlayBzcGVjaWZpYyBiaW5kaW5nPw0KDQpSb2INCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
