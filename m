Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB57EB0B7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Nov 2023 14:19:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B185141248
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Nov 2023 13:19:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id A5DD240C99
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Nov 2023 13:18:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=arm.com;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73274C15;
	Tue, 14 Nov 2023 05:19:33 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98F5B3F6C4;
	Tue, 14 Nov 2023 05:18:43 -0800 (PST)
Message-ID: <3daaa2aa-61d4-40db-b36d-cd825a340d2b@arm.com>
Date: Tue, 14 Nov 2023 13:18:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20231111111559.8218-1-yong.wu@mediatek.com>
 <20231111111559.8218-7-yong.wu@mediatek.com>
 <0ccee72f-98ac-4a08-9253-9c22dad4d95a@linaro.org>
 <5d7b2458b8d1896ce575f4ed2d413f4e8eeb92b4.camel@mediatek.com>
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <5d7b2458b8d1896ce575f4ed2d413f4e8eeb92b4.camel@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A5DD240C99
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	BAYES_HAM(-0.00)[37.29%];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com,amd.com,linaro.org,kernel.org];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,google.com,ndufresne.ca,lists.linaro.org,mediatek.com,quicinc.com,gmail.com,kernel.org,arm.com,collabora.com,linaro.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: F57W77G2Q4I3WGGI4KMF5FVQYWN4B5NW
X-Message-ID-Hash: F57W77G2Q4I3WGGI4KMF5FVQYWN4B5NW
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "nicolas@ndufresne.ca" <nicolas@ndufresne.ca>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "jkardatzke@google.com" <jkardatzke@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-de
 vel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/8] dt-bindings: reserved-memory: Add secure CMA reserved memory range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F57W77G2Q4I3WGGI4KMF5FVQYWN4B5NW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMTEvMjAyMyA2OjM3IGFtLCBZb25nIFd1ICjlkLTli4cpIHdyb3RlOg0KWy4uLl0NCj4+
PiArcHJvcGVydGllczoNCj4+PiArICBjb21wYXRpYmxlOg0KPj4+ICsgICAgY29uc3Q6IHNlY3Vy
ZV9jbWFfcmVnaW9uDQo+Pg0KPj4gU3RpbGwgd3JvbmcgY29tcGF0aWJsZS4gTG9vayBhdCBvdGhl
ciBiaW5kaW5ncyAtIHRoZXJlIGlzIG5vd2hlcmUNCj4+IHVuZGVyc2NvcmUuIExvb2sgYXQgb3Ro
ZXIgcmVzZXJ2ZWQgbWVtb3J5IGJpbmRpbmdzIGVzcGVjaWFsbHkuDQo+Pg0KPj4gQWxzbywgQ01B
IGlzIGEgTGludXggdGhpbmd5LCBzbyBlaXRoZXIgbm90IHN1aXRhYmxlIGZvciBiaW5kaW5ncyBh
dA0KPj4gYWxsLA0KPj4gb3IgeW91IG5lZWQgTGludXggc3BlY2lmaWMgY29tcGF0aWJsZS4gSSBk
b24ndCBxdWl0ZSBnZXQgd2h5IGRvIHlvdQ0KPj4gZXZlbm5vdA0KPj4gcHV0IENNQSB0aGVyZSAt
IGFkZGluZyBMaW51eCBzcGVjaWZpYyBzdHVmZiB3aWxsIGdldCBvYnZpb3VzDQo+PiBwdXNoYmFj
ay4uLg0KPiANCj4gVGhhbmtzLiBJIHdpbGwgY2hhbmdlIHRvOiBzZWN1cmUtcmVnaW9uLiBJcyB0
aGlzIG9rPw0KDQpObywgdGhlIHByZXZpb3VzIGRpc2N1c3Npb24gd2VudCBvZmYgaW4gZW50aXJl
bHkgdGhlIHdyb25nIGRpcmVjdGlvbi4gVG8gDQpyZWl0ZXJhdGUsIHRoZSBwb2ludCBvZiB0aGUg
YmluZGluZyBpcyBub3QgdG8gZGVzY3JpYmUgdGhlIGV4cGVjdGVkIA0KdXNhZ2Ugb2YgdGhlIHRo
aW5nIG5vciB0aGUgZ2VuZXJhbCBjb25jZXB0IG9mIHRoZSB0aGluZywgYnV0IHRvIGRlc2NyaWJl
IA0KdGhlIGFjdHVhbCB0aGluZyBpdHNlbGYuIFRoZXJlIGFyZSBhbnkgbnVtYmVyIG9mIGRpZmZl
cmVudCB3YXlzIHNvZnR3YXJlIA0KbWF5IGludGVyYWN0IHdpdGggYSAic2VjdXJlIHJlZ2lvbiIs
IHNvIHRoYXQgaXMgbWVhbmluZ2xlc3MgYXMgYSANCmNvbXBhdGlibGUuIEl0IG5lZWRzIHRvIGRl
c2NyaWJlICp0aGlzKiBzZWN1cmUgbWVtb3J5IGludGVyZmFjZSBvZmZlcmVkIA0KYnkgKnRoaXMq
IFRFRSwgc28gdGhhdCBzb2Z0d2FyZSBrbm93cyB0aGF0IHRvIHVzZSBpdCByZXF1aXJlcyBtYWtp
bmcgDQp0aG9zZSBwYXJ0aWN1bGFyIFNpUCBjYWxscyB3aXRoIHRoYXQgcGFydGljdWxhciBVVUlE
IGV0Yy4NCg0KVGhhbmtzLA0KUm9iaW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
