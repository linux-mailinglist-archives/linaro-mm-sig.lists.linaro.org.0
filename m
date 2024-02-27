Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7719D8690B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Feb 2024 13:38:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76D523EEAE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Feb 2024 12:38:51 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id C36953ED6D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Feb 2024 12:38:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=evMyTP2k;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709037521;
	bh=wIFETi/MZvXW9/FAsIozT825+vybcsyNan5jzXcLPQc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=evMyTP2kJ2qJhKVWh8x49Jwu/aes3ZGEKemzrZ61lFaUHq/IycOxxot4qKk41kzxl
	 cqrVwpwI2NQI8YcQOgzdaf/bXWHrbZjaU1J64If8Ew92UnrwNxcp/T8UsMnbar6tMb
	 1yT36QOG2Ht1R2By9rJ3rSWkkqsaLdTPVC2VTXqOZ+l+PbPg723HKrlFHzIvcjjtMg
	 TE+w7uKNuh0laf1rPtuaRrPg9XIBZD19vQxaBPoxzvi9cPLcias50byRUGVTT2c6gt
	 stWeZQARKK5MlueSNvTX44aEHsI3GAuCRJpH4qXv3dcqhIMpFJT0AywZDSBymXtvG+
	 xRKNlrETnAaAw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D93BE37813B6;
	Tue, 27 Feb 2024 12:38:39 +0000 (UTC)
Message-ID: <e0907559-121f-4cdf-8b5a-744295ec85b3@collabora.com>
Date: Tue, 27 Feb 2024 13:38:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
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
 <20240226-audio-i350-v1-2-4fa1cea1667f@baylibre.com>
 <e15fdb18-d4de-495f-b90b-ba0e787cbef4@collabora.com>
 <92b9e9ac-6265-4611-888d-ba74bb871be5@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <92b9e9ac-6265-4611-888d-ba74bb871be5@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C36953ED6D
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
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: AUKRO62PHH3FYKIP6AG35LTGQIABUXME
X-Message-ID-Hash: AUKRO62PHH3FYKIP6AG35LTGQIABUXME
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add audio sound card document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUKRO62PHH3FYKIP6AG35LTGQIABUXME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMjcvMDIvMjQgMTE6MjMsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86DQo+IA0KPiAN
Cj4gT24gMjYvMDIvMjAyNCAxNjozMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6
DQo+PiBJbCAyNi8wMi8yNCAxNTowMSwgQWxleGFuZHJlIE1lcmduYXQgaGEgc2NyaXR0bzoNCj4+
PiBBZGQgc291bmRjYXJkIGJpbmRpbmdzIGZvciB0aGUgTVQ4MzY1IFNvQyB3aXRoIHRoZSBNVDYz
NTcgYXVkaW8gY29kZWMuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgTWVyZ25h
dCA8YW1lcmduYXRAYmF5bGlicmUuY29tPg0KPj4+IC0tLQ0KPj4+IMKgIC4uLi9iaW5kaW5ncy9z
b3VuZC9tZWRpYXRlayxtdDgzNjUtbXQ2MzU3LnlhbWzCoMKgwqDCoCB8IDEyNyArKysrKysrKysr
KysrKysrKysrKysNCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTI3IGluc2VydGlvbnMoKykNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291
bmQvbWVkaWF0ZWssbXQ4MzY1LW10NjM1Ny55YW1sIA0KPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NvdW5kL21lZGlhdGVrLG10ODM2NS1tdDYzNTcueWFtbA0KPj4+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mNDY5NjExZWM2YjYN
Cj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvdW5kL21lZGlhdGVrLG10ODM2NS1tdDYzNTcueWFtbA0KPj4+IEBAIC0wLDAgKzEs
MTI3IEBADQo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQ0KPj4+ICslWUFNTCAxLjINCj4+PiArLS0tDQo+Pj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvc291bmQvbWVkaWF0ZWssbXQ4MzY1LW10NjM1Ny55YW1s
Iw0KPj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUu
eWFtbCMNCj4+PiArDQo+Pj4gK3RpdGxlOiBNZWRpYXRlayBNVDgzNjUgc291bmQgY2FyZCB3aXRo
IE1UNjM1NyBzb3VuZCBjb2RlYy4NCj4+PiArDQo+Pj4gK21haW50YWluZXJzOg0KPj4+ICvCoCAt
IEFsZXhhbmRyZSBNZXJnbmF0IDxhbWVyZ25hdEBiYXlsaWJyZS5jb20+DQo+Pj4gKw0KPj4+ICtk
ZXNjcmlwdGlvbjoNCj4+PiArwqAgVGhpcyBiaW5kaW5nIGRlc2NyaWJlcyB0aGUgTVQ4MzY1IHNv
dW5kIGNhcmQuDQo+Pj4gKw0KPj4+ICtwcm9wZXJ0aWVzOg0KPj4+ICvCoCBjb21wYXRpYmxlOg0K
Pj4+ICvCoMKgwqAgY29uc3Q6IG1lZGlhdGVrLG10ODM2NS1tdDYzNTcNCj4+PiArDQo+Pj4gK8Kg
IG1lZGlhdGVrLGhwLXB1bGwtZG93bjoNCj4+PiArwqDCoMKgIGRlc2NyaXB0aW9uOg0KPj4+ICvC
oMKgwqDCoMKgIEVhcnBob25lIGRyaXZlciBwb3NpdGl2ZSBvdXRwdXQgc3RhZ2Ugc2hvcnQgdG8g
dGhlDQo+Pj4gK8KgwqDCoMKgwqAgYXVkaW8gcmVmZXJlbmNlIGdyb3VuZC4NCj4+PiArwqDCoMKg
wqDCoCBEZWZhdWx0IHZhbHVlIGlzIGZhbHNlLg0KPj4+ICvCoMKgwqAgdHlwZTogYm9vbGVhbg0K
Pj4+ICsNCj4+PiArwqAgbWVkaWF0ZWssbWljYmlhczAtbWljcm92b2x0Og0KPj4+ICvCoMKgwqAg
ZGVzY3JpcHRpb246IHwNCj4+DQo+PiBkZXNjcmlwdGlvbjogU2VsZWN0cyBNSUMgQmlhcyAwIG91
dHB1dCB2b2x0YWdlDQo+Pg0KPj4+ICvCoMKgwqDCoMKgIFNlbGVjdHMgTUlDIEJpYXMgMCBvdXRw
dXQgdm9sdGFnZS4NCj4+PiArwqDCoMKgwqDCoCBbMS43diwgMS44diwgMS45diwgMi4wdiwgMi4x
diwgMi41diwgMi42diwgMi43dl0NCj4+PiArwqDCoMKgIGVudW06IFswLCAxLCAyLCAzLCA0LCA1
LCA2LCA3XQ0KPj4NCj4+IE5vLCB5b3UgZG9uJ3Qgc2F5IDAgMSAyIDMgNCB0byBhIHByb3BlcnR5
IHRoYXQgc2F5cyAibWljcm92b2x0IiwgdGhhdCdzIHNpbXBseQ0KPj4gd3JvbmcuDQo+Pg0KPj4g
bWVkaWF0ZWssbWljYmlhczAtbWljcm92b2x0ID0gPDIxMDAwMDA+Ow0KPj4NCj4+IC4uLnNvIHlv
dSB3YW50IGEgYmluZGluZyB0aGF0IHNheXMNCj4+IGVudW06IFsgMTcwMDAwMCwgMTgwMDAwMCwg
dGhpcywgdGhhdCwgMjcwMDAwMF0NCj4+DQo+IA0KPiBJcyBpdCBjb3JyZWN0IGlmIEkgcHV0ICJk
ZXNjcmlwdGlvbjogU2VsZWN0cyBNSUMgQmlhcyAwIG91dHB1dCB2b2x0YWdlIGluZGV4IiA/DQo+
IA0KDQpObywgaXQncyBzdGlsbCBub3QgY29ycmVjdC4gWW91IGhhdmUgdG8gcGFzcyBtaWNyb3Zv
bHQgdmFsdWVzLg0KDQpUaGUgZHJpdmVyIHdpbGwgdGhlbiB0cmFuc2Zvcm0gdGhlIG1pY3Jvdm9s
dCB2YWx1ZXMgdG8gdGhlIGluZGV4IGFuZCBzdWJzZXF1ZW50bHkNCndyaXRlIHRoZSBpbmRleCB2
YWx1ZSB0byB0aGUgaGFyZHdhcmUgcmVnaXN0ZXJzLg0KDQpUaGUgYmluZGluZ3Mgc2hhbGwgYmUg
Z2VuZXJpYywgaW4gdGhlIHNlbnNlIHRoYXQgdGhleSBzaGFsbCBub3QgZXhwcmVzcyBoYXJkd2Fy
ZQ0KcmVnaXN0ZXIgdmFsdWVzLi4uIGFuZCB0aGlzIGlzIGVzcGVjaWFsbHkgdHJ1ZSB3aGVuIHdl
IGhhdmUgYSB2YWx1ZSB0aGF0ICpkb2VzKg0KYWN0dWFsbHkgaGF2ZSBtZWFucyB0byBiZSBleHBy
ZXNzZWQgaW4gY29tbW9uIHVuaXRzLg0KDQpCZXNpZGVzLCBpbiB0aGUgY2FzZXMgaW4gd2hpY2gg
dGhlcmUncyBubyBjb21tb24gdW5pdHMgaW52b2x2ZWQsIHRoZSB2YWx1ZXMgbW9zdA0KcHJvYmFi
bHkgd29uJ3QgYmUgc3VpdGVkIGZvciBkZXZpY2V0cmVlLy9iaW5kaW5ncywgc28gdGhvc2Ugd291
bGQgYmUgaGFyZGNvZGVkIGluDQp0aGUgZHJpdmVyIGFzIHBsYXRmb3JtIGRhdGEuDQoNClRoaXMg
aXMgbm90IHRoZSBjYXNlLCBzbywgcGxlYXNlIGtlZXAgdGhpcyBwcm9wZXJ0eSBidXQgc3BlY2lm
eSBtaWNyb3ZvbHRzIGluIHRoZQ0KYmluZGluZ3MgKGFuZCBvYnZpb3VzbHkgaW4gZGV2aWNldHJl
ZSkuDQoNCj4+PiArDQo+Pj4gK8KgIG1lZGlhdGVrLG1pY2JpYXMxLW1pY3Jvdm9sdDoNCj4+PiAr
wqDCoMKgIGRlc2NyaXB0aW9uOiB8DQo+Pj4gK8KgwqDCoMKgwqAgU2VsZWN0cyBNSUMgQmlhcyAx
IG91dHB1dCB2b2x0YWdlLg0KPj4+ICvCoMKgwqDCoMKgIFsxLjd2LCAxLjh2LCAxLjl2LCAyLjB2
LCAyLjF2LCAyLjV2LCAyLjZ2LCAyLjd2XQ0KPj4+ICvCoMKgwqAgZW51bTogWzAsIDEsIDIsIDMs
IDQsIDUsIDYsIDddDQo+Pg0KPj4gc2FtZSBoZXJlLg0KPj4NCj4+PiArDQo+Pj4gK8KgIG1lZGlh
dGVrLHBsYXRmb3JtOg0KPj4+ICvCoMKgwqAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvcGhhbmRsZQ0KPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246IFRoZSBwaGFuZGxlIG9m
IE1UODM2NSBBU29DIHBsYXRmb3JtLg0KPj4+ICsNCj4+PiArwqAgcGluY3RybC1uYW1lczoNCj4+
PiArwqDCoMKgIG1pbkl0ZW1zOiAxDQo+Pj4gK8KgwqDCoCBpdGVtczoNCj4+PiArwqDCoMKgwqDC
oCAtIGNvbnN0OiBhdWRfZGVmYXVsdA0KPj4+ICvCoMKgwqDCoMKgIC0gY29uc3Q6IGF1ZF9kbWlj
DQo+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogYXVkX21pc29fb2ZmDQo+Pj4gK8KgwqDCoMKgwqAg
LSBjb25zdDogYXVkX21pc29fb24NCj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBhdWRfbW9zaV9v
ZmYNCj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiBhdWRfbW9zaV9vbg0KPj4+ICsNCj4+PiArwqAg
dmF1ZDI4LXN1cHBseToNCj4+PiArwqDCoMKgIGRlc2NyaXB0aW9uOg0KPj4+ICvCoMKgwqDCoMKg
IDIuOCB2b2x0IHN1cHBseSBmb3IgdGhlIGF1ZGlvIGNvZGVjDQo+Pj4gKw0KPj4+ICtwYXR0ZXJu
UHJvcGVydGllczoNCj4+PiArwqAgIl5kYWktbGluay1bMC05XSskIjoNCj4+PiArwqDCoMKgIHR5
cGU6IG9iamVjdA0KPj4+ICvCoMKgwqAgZGVzY3JpcHRpb246DQo+Pj4gK8KgwqDCoMKgwqAgQ29u
dGFpbmVyIGZvciBkYWktbGluayBsZXZlbCBwcm9wZXJ0aWVzIGFuZCBDT0RFQyBzdWItbm9kZXMu
DQo+Pj4gKw0KPj4+ICvCoMKgwqAgcHJvcGVydGllczoNCj4+PiArwqDCoMKgwqDCoCBjb2RlYzoN
Cj4+PiArwqDCoMKgwqDCoMKgwqAgdHlwZTogb2JqZWN0DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRl
c2NyaXB0aW9uOiBIb2xkcyBzdWJub2RlIHdoaWNoIGluZGljYXRlcyBjb2RlYyBkYWkuDQo+Pj4g
Kw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOg0KPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqAgc291bmQtZGFpOg0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiAxDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGVzY3JpcHRpb246IHBoYW5kbGUgb2YgdGhlIGNv
ZGVjIERBSQ0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoMKgwqAgYWRkaXRpb25hbFByb3BlcnRpZXM6
IGZhbHNlDQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgIGxpbmstbmFtZToNCj4+PiArwqDCoMKgwqDC
oMKgwqAgZGVzY3JpcHRpb246DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBUaGlzIHByb3BlcnR5
IGNvcnJlc3BvbmRzIHRvIHRoZSBuYW1lIG9mIHRoZSBCRSBkYWktbGluayB0byB3aGljaA0KPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqAgd2UgYXJlIGdvaW5nIHRvIHVwZGF0ZSBwYXJhbWV0ZXJzIGlu
IHRoaXMgbm9kZS4NCj4+PiArwqDCoMKgwqDCoMKgwqAgaXRlbXM6DQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdDogMk5EIEkyUyBCRQ0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoCBzb3VuZC1k
YWk6DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiAxDQo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGRlc2NyaXB0aW9uOiBwaGFuZGxlIG9mIHRoZSBDUFUgREFJDQo+Pj4gKw0KPj4+ICvCoMKgwqAg
YWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+Pj4gKw0KPj4+ICvCoMKgwqAgcmVxdWlyZWQ6
DQo+Pj4gK8KgwqDCoMKgwqAgLSBsaW5rLW5hbWUNCj4+PiArwqDCoMKgwqDCoCAtIHNvdW5kLWRh
aQ0KPj4+ICsNCj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+Pj4gKw0KPj4+ICty
ZXF1aXJlZDoNCj4+PiArwqAgLSBjb21wYXRpYmxlDQo+Pj4gK8KgIC0gbWVkaWF0ZWsscGxhdGZv
cm0NCj4+PiArwqAgLSBwaW5jdHJsLW5hbWVzDQo+Pj4gK8KgIC0gdmF1ZDI4LXN1cHBseQ0KPj4+
ICsNCj4+PiArZXhhbXBsZXM6DQo+Pj4gK8KgIC0gfA0KPj4+ICvCoMKgwqAgc291bmQgew0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODM2NS1tdDYzNTciOw0K
Pj4+ICvCoMKgwqDCoMKgwqDCoCBtZWRpYXRlayxwbGF0Zm9ybSA9IDwmYWZlPjsNCj4+DQo+PiBQ
bGVhc2U6DQo+Pg0KPj4gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvZGV2aWNldHJlZS9iaW5kaW5n
cy9kdHMtY29kaW5nLXN0eWxlLmh0bWwNCj4gDQo+IElzIGl0IGFib3V0IHRoZSB3cm9uZyBwaW5j
dHJsLW5hbWVzIHRhYiBhbGlnbm1lbnQgPw0KPiBBbHNvLCAyTkQgSTJTIEJFID0+IDJORF9JMlNf
QkUgPw0KPiBPdGhlcndpc2UsIEkgZG9uJ3QgZ2V0IGl0IHNvcnJ5Lg0KPiANCg0KLi4uYXMgS3J6
eXN6dG9mIGFscmVhZHkgY2xhcmlmaWVkLCB3b24ndCByZXBlYXQgOi1QDQoNCkNoZWVycyENCg0K
Pj4NCj4+IFJlZ2FyZHMsDQo+PiBBbmdlbG8NCj4+DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0
cmwtbmFtZXMgPSAiYXVkX2RlZmF1bHQiLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJh
dWRfZG1pYyIsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImF1ZF9taXNvX29mZiIsDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImF1ZF9taXNvX29uIiwNCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAiYXVkX21vc2lfb2ZmIiwNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiYXVkX21vc2lfb24iOw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JmF1ZF9k
ZWZhdWx0X3BpbnM+Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLTEgPSA8JmF1ZF9kbWlj
X3BpbnM+Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLTIgPSA8JmF1ZF9taXNvX29mZl9w
aW5zPjsNCj4+PiArwqDCoMKgwqDCoMKgwqAgcGluY3RybC0zID0gPCZhdWRfbWlzb19vbl9waW5z
PjsNCj4+PiArwqDCoMKgwqDCoMKgwqAgcGluY3RybC00ID0gPCZhdWRfbW9zaV9vZmZfcGlucz47
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0cmwtNSA9IDwmYXVkX21vc2lfb25fcGlucz47DQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHZhdWQyOC1zdXBwbHkgPSA8Jm10NjM1N192YXVkMjhfcmVnPjsN
Cj4+PiArDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIGhkbWkgaW50ZXJmYWNlICovDQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGRhaS1saW5rLTAgew0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNv
dW5kLWRhaSA9IDwmYWZlPjsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsaW5rLW5hbWUg
PSAiMk5EIEkyUyBCRSI7DQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvZGVj
IHsNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNvdW5kLWRhaSA9IDwmaXQ2
NjEyMWhkbWl0eD47DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsNCj4+PiArwqDCoMKg
wqDCoMKgwqAgfTsNCj4+PiArwqDCoMKgIH07DQo+Pj4NCj4+DQo+IA0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
