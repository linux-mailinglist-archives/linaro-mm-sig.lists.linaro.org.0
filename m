Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF6986AC24
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Feb 2024 11:25:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A97C43FDE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Feb 2024 10:25:41 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 0FD513EFE2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Feb 2024 10:25:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=qVdjMgNp;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709115933;
	bh=E8R79vstTtZYjkIXyTYbyYkKBTC6894FJU5MK2LqR20=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qVdjMgNpoJSKYoUGzNNif7MwqOIvRhO+7Z512Q1OpHtWr70VAn2rL29LyFCx5lcOu
	 2A+3rlzaNSw1g91MWg9EOwDjy0uIXRvFQe8lG+ZfY76MTDsfoXPLs73Ne1Se/vBUbv
	 VpOLc1vtuTvKRGQtbKDRuKGyfxcvr8ufYw5nC+/8DZYLodTszxLHzRryEYxFhssgrw
	 oAphV7git0xKym3Y/vQWhfh+Yme1IfUOBmtbU7oTWRHVm9YqOMrnEIy7veaCQATzW8
	 TjkxbCIEE9MER6XEM87oFe7lh0ZSRcN6OZPk/sUiDQ0VVSmBJM5WF1FdL6uC3PR8gA
	 jemLx0f+CRKLA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 30B7E3780C6C;
	Wed, 28 Feb 2024 10:25:32 +0000 (UTC)
Message-ID: <bb86b986-ecd7-416a-9036-082a3cff2176@collabora.com>
Date: Wed, 28 Feb 2024 11:25:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-1-4fa1cea1667f@baylibre.com>
 <ce5f71a9-1b5f-4724-89db-dae2f64e8008@linaro.org>
 <eeb3329b-0558-4237-8343-4e11f65a6a35@baylibre.com>
 <bd4bf6ae-350e-4ee6-a924-7dd31b2c6034@linaro.org>
 <66e527af-0253-4565-9822-04ed84e5817c@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <66e527af-0253-4565-9822-04ed84e5817c@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0FD513EFE2
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,linaro.org,gmail.com,kernel.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.977];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: 5Z5ARPOMMM3IEEMMYWWMCQHPZWUPS6Z4
X-Message-ID-Hash: 5Z5ARPOMMM3IEEMMYWWMCQHPZWUPS6Z4
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/18] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio afe document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5Z5ARPOMMM3IEEMMYWWMCQHPZWUPS6Z4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMjgvMDIvMjQgMTA6NTcsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86DQo+IEkgdGhp
bmsgSSBnb3QgaXQuDQo+IA0KPiAtIG1lZGlhdGVrLGkycy1zaGFyZWQtY2xvY2s6IHdpbGwgYmUg
cmVtb3ZlIGZyb20gRFQNCj4gLSBtZWRpYXRlayxkbWljLWlpci1vbjogd2lsbCBiZSByZW1vdmUg
ZnJvbSBEVA0KPiAtIG1lZGlhdGVrLGRtaWMtaXJyLW1vZGU6IHdpbGwgYmUgcmVtb3ZlIGZyb20g
RFQNCj4gLSBtZWRpYXRlayxkbWljLXR3by13aXJlLW1vZGU6IHJlcGhyYXNlIGRlc2NyaXB0aW9u
IG5lZWRlZA0KPiANCj4gSSd2ZSBkaWQgYWJzdHJhY3Rpb24gKGRlc3BpdGUgbWUpIHRoYXQgSUlS
IHNldHRpbmdzIGFyZSBydW50aW1lIGNvbmZpZyBiZWNhdXNlIHRoZSANCj4gZHJpdmVyIGltcGxl
bWVudCBpdHMgdXNhZ2UgbGlrZSBhIG9uZS10aW1lLXNldHVwIC1fLScNCj4gDQoNClllcyBidXQg
anVzdCBvbmUgbW9yZSB0aGluZyBJIGp1c3Qgbm90aWNlZDogYG1lZGlhdGVrLGRtaWMtdHdvLXdp
cmUtbW9kZWAgLSBjYW4gd2UNCnBsZWFzZSByZW5hbWUgdGhpcyB0byBgbWVkaWF0ZWssZG1pYy1t
b2RlYCA/DQoNClRoYXQnZCBiZSBmb3IgY29uc2lzdGVuY3kgY2hlY2sgbXQ2MzU5LnlhbWwgYW5k
IG10NjM1OC50eHQNCg0KICAgbWVkaWF0ZWssZG1pYy1tb2RlOg0KICAgICAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzINCiAgICAgZGVzY3JpcHRpb246IHwNCiAg
ICAgICBJbmRpY2F0ZXMgaG93IG1hbnkgZGF0YSBwaW5zIGFyZSB1c2VkIHRvIHRyYW5zbWl0IHR3
byBjaGFubmVscyBvZiBQRE0NCiAgICAgICBzaWduYWwuIDAgbWVhbnMgdHdvIHdpcmVzLCAxIG1l
YW5zIG9uZSB3aXJlLiBEZWZhdWx0IHZhbHVlIGlzIDAuDQogICAgIGVudW06DQogICAgICAgLSAw
ICMgb25lIHdpcmUNCiAgICAgICAtIDEgIyB0d28gd2lyZXMNCg0KQ2hlZXJzLA0KQW5nZWxvDQoN
Cg0KDQo+IFRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9ucywgdGhhdCBoZWxwLg0KPiANCj4gUmVn
YXJkcywNCj4gQWxleGFuZHJlDQo+IA0KPiBPbiAyOC8wMi8yMDI0IDA4OjI4LCBLcnp5c3p0b2Yg
S296bG93c2tpIHdyb3RlOg0KPj4gT24gMjcvMDIvMjAyNCAxNjoxOCwgQWxleGFuZHJlIE1lcmdu
YXQgd3JvdGU6DQo+Pj4+DQo+Pj4+PiArwqDCoMKgIHR5cGU6IGJvb2xlYW4NCj4+Pj4+ICsNCj4+
Pj4+ICvCoCBtZWRpYXRlayxkbWljLWlpci1vbjoNCj4+Pj4+ICvCoMKgwqAgZGVzY3JpcHRpb246
DQo+Pj4+PiArwqDCoMKgwqDCoCBCb29sZWFuIHdoaWNoIHNwZWNpZmllcyB3aGV0aGVyIHRoZSBE
TUlDIElJUiBpcyBlbmFibGVkLg0KPj4+Pj4gK8KgwqDCoMKgwqAgSWYgdGhpcyBwcm9wZXJ0eSBp
cyBub3QgcHJlc2VudCB0aGUgSUlSIGlzIGRpc2FibGVkLg0KPj4+Pg0KPj4+PiAiaXMgZW5hYmxl
ZCIgb3IgImVuYWJsZSBpdCI/DQo+Pj4+DQo+Pj4+IFlvdSBkZXNjcmliZWQgdGhlIGRlc2lyZWQg
TGludXggZmVhdHVyZSBvciBiZWhhdmlvciwgbm90IHRoZSBhY3R1YWwNCj4+Pj4gaGFyZHdhcmUu
IFRoZSBiaW5kaW5ncyBhcmUgYWJvdXQgdGhlIGxhdHRlciwgc28gaW5zdGVhZCB5b3UgbmVlZCB0
bw0KPj4+PiByZXBocmFzZSB0aGUgcHJvcGVydHkgYW5kIGl0cyBkZXNjcmlwdGlvbiB0byBtYXRj
aCBhY3R1YWwgaGFyZHdhcmUNCj4+Pj4gY2FwYWJpbGl0aWVzL2ZlYXR1cmVzL2NvbmZpZ3VyYXRp
b24gZXRjLg0KPj4+DQo+Pj4gSSB3aWxsIHJlcGhyYXNlOg0KPj4+DQo+Pj4gVHJ1ZSB0byBlbmFi
bGUgdGhlIEluZmluaXRlIEltcHVsc2UgUmVzcG9uc2UgKElJUikgZmlsdGVyDQo+Pj4gb24gdGhl
IGRpZ2l0YWwgbWljcm9waG9uZSBpbnB1dHMuDQo+Pg0KPj4gSSBzdGlsbCBkb24ndCBrbm93IHdo
eSB0aGlzIGlzIERULXNwZWNpZmljLiBZb3Ugc3RpbGwgdGVsbCBkcml2ZXIgd2hhdA0KPj4gdG8g
ZG8uLi4NCj4+DQo+Pj4NCj4+Pj4NCj4+Pj4+ICvCoMKgwqAgdHlwZTogYm9vbGVhbg0KPj4+Pj4g
Kw0KPj4+Pj4gK8KgIG1lZGlhdGVrLGRtaWMtaXJyLW1vZGU6DQo+Pj4+PiArwqDCoMKgICRyZWY6
IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMg0KPj4+Pj4gK8KgwqDCoCBk
ZXNjcmlwdGlvbjoNCj4+Pj4+ICvCoMKgwqDCoMKgIFNlbGVjdHMgc3RvcCBiYW5kIG9mIElJUiBE
Qy1yZW1vdmFsIGZpbHRlci4NCj4+Pj4+ICvCoMKgwqDCoMKgIDAgPSBTb2Z0d2FyZSBwcm9ncmFt
bWFibGUgY3VzdG9tIGNvZWZmIGxvYWRlZCBieSB0aGUgZHJpdmVyLg0KPj4+Pg0KPj4+PiBCaW5k
aW5ncyBhcmUgZm9yIGhhcmR3YXJlLCBub3QgZHJpdmVycy4gV2h5IGlzIHRoaXMgYSBwcm9wZXJ0
eSBvZiBib2FyZCBEVFM/DQo+Pj4NCj4+PiBBY3R1YWxseSB0aGlzIGlzIGEgaGFyZHdhcmUgZmVh
dHVyZS4gTW9kZSAxIHQgNSBhcmUgcHJlZGVmaW5lZCBmaWx0ZXJzLg0KPj4+IE1vZGUgMCwgdGhl
IEhXIHdpbGwgcmVhZCBzb21lICJjb2VmIGZpbHRlciByZWdpc3RlcnMiIHRvIHNldHVwIHRoZQ0K
Pj4+IGN1c3RvbSBmaWx0ZXIuIHRoZSAiY29lZiBmaWx0ZXIgcmVncyIgYXJlIHdyaXR0ZW4gYnkg
dGhlIGRyaXZlci4NCj4+PiBDdXJyZW50bHkgdGhlIGNvZWYgdmFsdWVzIGFyZSBoYXJkY29kZWQg
aW4gdGhlIGRyaXZlci4NCj4+DQo+PiBZb3UgZG9uJ3QgZ2V0IHRoZSBwb2ludC4gSnVzdCBiZWNh
dXNlIHlvdSBjaG9vc2Ugc29tZSBtb2RlIGl0IGRvZXMgbm90DQo+PiBtZWFuIGlzIGhhcmR3YXJl
IGZlYXR1cmUgZm9yIERULiBTYW1wbGluZyBmcmVxdWVuY3kgZG9uZSBieSBoYXJkd2FyZSBpcw0K
Pj4gYWxzbyAiaGFyZHdhcmUgZmVhdHVyZSIsIGJ1dCBkbyB5b3UgcHV0IGl0IHRvIERUPyBOby4N
Cj4+DQo+PiBFeHBsYWluIHdoeSB0aGlzIGlzIGJvYXJkLXNwZWNpZmljLCBub3QgcnVudGltZSBj
b25maWd1cmF0aW9uLg0KPj4NCj4+Pg0KPj4+Pg0KPj4+Pj4gK8KgwqDCoMKgwqAgMSA9IDVIeiBp
ZiA0OEtIeiBtb2RlLg0KPj4+Pj4gK8KgwqDCoMKgwqAgMiA9IDEwSHogaWYgNDhLSHogbW9kZS4N
Cj4+Pj4+ICvCoMKgwqDCoMKgIDMgPSAyNUh6IGlmIDQ4S0h6IG1vZGUuDQo+Pj4+PiArwqDCoMKg
wqDCoCA0ID0gNTBIeiBpZiA0OEtIeiBtb2RlLg0KPj4+Pj4gK8KgwqDCoMKgwqAgNSA9IDY1SHog
aWYgNDhLSHogbW9kZS4NCj4+Pj4NCj4+Pj4gVXNlIHByb3BlciB1bml0IHN1ZmZpeGVzIC0gaHou
DQo+Pj4+DQo+Pj4+DQo+Pj4+PiArwqDCoMKgIGVudW06DQo+Pj4+PiArwqDCoMKgwqDCoCAtIDAN
Cj4+Pj4+ICvCoMKgwqDCoMKgIC0gMQ0KPj4+Pj4gK8KgwqDCoMKgwqAgLSAyDQo+Pj4+PiArwqDC
oMKgwqDCoCAtIDMNCj4+Pj4+ICvCoMKgwqDCoMKgIC0gNA0KPj4+Pj4gK8KgwqDCoMKgwqAgLSA1
DQo+Pj4+PiArDQo+Pj4+PiArwqAgbWVkaWF0ZWssZG1pYy10d28td2lyZS1tb2RlOg0KPj4+Pj4g
K8KgwqDCoCBkZXNjcmlwdGlvbjoNCj4+Pj4+ICvCoMKgwqDCoMKgIEJvb2xlYW4gd2hpY2ggdHVy
bnMgb24gZGlnaXRhbCBtaWNyb3Bob25lIGZvciB0d28gd2lyZSBtb2RlLg0KPj4+Pj4gK8KgwqDC
oMKgwqAgSWYgdGhpcyBwcm9wZXJ0eSBpcyBub3QgcHJlc2VudCB0aGUgdHdvIHdpcmUgbW9kZSBp
cyBkaXNhYmxlZC4NCj4+Pj4NCj4+Pj4gVGhpcyBsb29rcyBsaWtlIGhhcmR3YXJlIHByb3BlcnR5
LCBidXQgdGhlIG5hbWluZyBsb29rcyBsaWtlIFNXLiBBZ2Fpbg0KPj4+PiB5b3UgaW5zdHJ1Y3Qg
d2hhdCBkcml2ZXIgc2hvdWxkIGRvLiBTdGFuZGFyZCBkaXNjbGFpbWVyOg0KPj4+Pg0KPj4+PiBZ
b3UgZGVzY3JpYmVkIHRoZSBkZXNpcmVkIExpbnV4IGZlYXR1cmUgb3IgYmVoYXZpb3IsIG5vdCB0
aGUgYWN0dWFsDQo+Pj4+IGhhcmR3YXJlLiBUaGUgYmluZGluZ3MgYXJlIGFib3V0IHRoZSBsYXR0
ZXIsIHNvIGluc3RlYWQgeW91IG5lZWQgdG8NCj4+Pj4gcmVwaHJhc2UgdGhlIHByb3BlcnR5IGFu
ZCBpdHMgZGVzY3JpcHRpb24gdG8gbWF0Y2ggYWN0dWFsIGhhcmR3YXJlDQo+Pj4+IGNhcGFiaWxp
dGllcy9mZWF0dXJlcy9jb25maWd1cmF0aW9uIGV0Yy4NCj4+Pg0KPj4+IEFjdHVhbGx5IHRoaXMg
aXMgYSBoYXJkd2FyZSBmZWF0dXJlLiBUaGlzIGlzIEFMTCBJIGhhdmUgdG8gZGVzY3JpYmUgdGhl
DQo+Pj4gSFcgYmVoYXZpb3IgZnJvbSB0aGUgZGF0YXNoZWV0Og0KPj4+ICINCj4+PiBiaXQgbmFt
ZTogdWxfZG1pY190d29fd2lyZV9jdGwNCj4+PiBUdXJucyBvbiBkaWdpdGFsIG1pY3JvcGhvbmUg
Zm9yIHR3byB3aXJlIG1vZGUuDQo+Pj4gMDogVHVybiBvZmYNCj4+PiAxOiBUdXJuIG9uDQo+Pg0K
Pj4gVGhhdCdzIHJhdGhlciBzdWdnZXN0aW9uIGl0IGlzIG5vdCBhIGRlc2NyaXB0aW9uIG9mIGhh
cmR3YXJlIGJ1dCB5b3UNCj4+IHdhbnQgZHJpdmVyIHRvIGRvIHNvbWV0aGluZy4uLg0KPj4NCj4+
PiAiDQo+Pj4NCj4+PiBPbiB0aGUgYm9hcmQgc2NoZW1hdGljLCBTb0MgYW5kIERNSUMgYW5kIGxp
bmtlZCBieSAzIHBpbnM6DQo+Pj4gLSBjbGsNCj4+PiAtIGRhdGEwDQo+Pj4gLSBkYXRhMQ0KPj4+
DQo+Pj4gSU1ITywgInR3by13aXJlLW1vZGUiIG1lYW5zIHRoZSBIVyB1c2UgMiBwaW5zIGZvciBk
YXRhLCBhbmQgdGhlIFNvQyBtdXN0DQo+Pj4gYmUgYXdhcmUgb2YgdGhhdCBieSByZWFkaW5nIHRo
ZSByZWdpc3RlciB2YWx1ZSB3cml0dGVuIGJ5IHRoZSBkcml2ZXIsDQo+Pj4gdXNpbmcgdGhlIHZh
bHVlIGZvdW5kIGluIHRoZSBEVFMuDQo+Pg0KPj4gU28gdGhpcyBkZXBlbmRzIG9uIHR5cGUgb2Yg
Y29ubmVjdGlvbiBvZiBETUlDPyBUaGVuIHJlcGhyYXNlIGRlc2NyaXB0aW9uDQo+PiBwcm9wZXJ0
eSBsaWtlIHRoaXMuDQo+Pg0KPj4+DQo+Pj4gSSBkb24ndCBnZXQgd2h5IHlvdSB0aGluayBpdCB3
b3VsZG4ndCBiZSBoYXJkd2FyZSBiZWhhdmlvci4NCj4+DQo+PiBCZWNhdXNlIHRlbGxpbmcgd2hh
dCB0byB3cml0ZSB0byB0aGUgcmVnaXN0ZXJzIHdoaWNoIGlzIHR5cGljYWwgc2lnbiBvZg0KPj4g
cGVvcGxlIHN0dWZmaW5nIHRvIERUIHdoYXRldmVyIHRoZXkgbmVlZCB0byBjb25maWd1cmUgdGhl
IGhhcmR3YXJlLg0KPj4NCj4+Pg0KPj4+IFJlcGhyYXNlIGRlc2NyaXB0aW9uOg0KPj4+ICJUcnVl
IHRvIGVuYWJsZSB0aGUgdHdvIHdpcmUgbW9kZSBvZiB0aGUgZGlnaXRhbCBtaWNyb3Bob25lIg0K
Pj4+IElzIGl0IGJldHRlciA/DQo+Pg0KPj4gTm8sIGJlY2F1c2UgYWdhaW4geW91IGRlc2NyaWJl
IHNvbWUgc29ydCBvZiBtb2RlLiBJZiB5b3UgaW5zaXN0IG9uIHN1Y2gNCj4+IGRlc2NyaXB0aW9u
LCB0aGVuIG15IGFuc3dlciBpczogaXQncyBydW50aW1lLCBzbyBub3Qgc3VpdGFibGUgZm9yIERU
Lg0KPj4gSW5zdGVhZCBkZXNjcmliZSB3aGF0IGlzIHRoZSBoYXJkd2FyZSBwcm9ibGVtL2NvbmZp
Z3VyYXRpb24sIGUuZy4gIkRNSUMNCj4+IGlzIGNvbm5lY3RlZCB3aXRoIG9ubHkgQ0xLIGFuZCBE
QVRBMCwgd2l0aG91dCB0aGlyZCBwaW4iIGV0Yy4NCj4+DQo+Pj4NCj4+PiBBYm91dCB0aGUgcHJv
cGVydHkgbmFtZSwgIm1lZGlhdGVrLGRtaWMtdHdvLXdpcmUtY3RsIiBzb3VuZCBiZXR0ZXIgZm9y
IHlvdSA/DQo+Pg0KPj4gVG8gc291bmQgbW9yZSBsaWtlIGEgcmVnaXN0ZXIgbGVzcyBsaWtlIHBo
eXNpY2FsIGNoYXJhY3RlcmlzdGljIG9mIHRoZQ0KPj4gYm9hcmQ/IE5vLiBUaGUgbmFtZSBjYW4g
c3RheSwgSSBkb24ndCBoYXZlIGJldHRlciBpZGVhcy4NCj4+DQo+Pg0KPj4gQmVzdCByZWdhcmRz
LA0KPj4gS3J6eXN6dG9mDQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
