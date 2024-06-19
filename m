Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D0C90E7C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:04:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 95A1244919
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 10:04:07 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 9F4E743F04
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 10:04:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=xqFCQkCs;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718791443;
	bh=1jy39YZMTY/xo2Xcx2D3ihcV+xB/O1q/kuNvRc7QFu8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=xqFCQkCsIpMrEzpcF0IxEbzd6OHXGJq3FH9PM/lyvWAa2BStAnwwHgQmXIb641aDk
	 zU3es9+UcmQOVru0Sf7mM5JNtcr94qWID1O6UKMzlU4ijhqUJWzwuE5IbuNhxH1tF7
	 8reazt1X/m+XtFs2r1lRuDRhjDtlvdq7dTY0w2Pj6iWe1COkKqsyk1tephTMv+gdyW
	 OpPLfR4oEiDeUOQQHDVxukgwpZyMTqS37b72UZZq0OodI/FSfazpuE1+JNIeTYIQS1
	 5+CeO5IL0kChUJoNPf5yfGmyzab3CBwBKA5O5lrc40UTg8G0U66jjDLUbqxP+pugx/
	 RzkEwjiazlkow==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E95213782163;
	Wed, 19 Jun 2024 10:04:01 +0000 (UTC)
Message-ID: <d09deba3-1687-4062-b8ad-7610a18a270e@collabora.com>
Date: Wed, 19 Jun 2024 12:04:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
 <20240226-audio-i350-v5-16-54827318b453@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240226-audio-i350-v5-16-54827318b453@baylibre.com>
X-Rspamd-Queue-Id: 9F4E743F04
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,kernel.org,linaro.org,mediatek.com,perex.cz,suse.com,amd.com,arm.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7S3AQHZ5VI6N476J5WJXN7LTICYOHR75
X-Message-ID-Hash: 7S3AQHZ5VI6N476J5WJXN7LTICYOHR75
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND v5 16/16] arm64: dts: mediatek: add audio support for mt8365-evk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7S3AQHZ5VI6N476J5WJXN7LTICYOHR75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMTQvMDYvMjQgMDk6MjcsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86DQo+IEFkZCB0
aGUgc291bmQgbm9kZSB3aGljaCBpcyBsaW5rZWQgdG8gdGhlIE1UODM2NSBTb0MgQUZFIGFuZA0K
PiB0aGUgTVQ2MzU3IGF1ZGlvIGNvZGVjLg0KPiANCj4gVXBkYXRlIHRoZSBmaWxlIGhlYWRlci4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBNZXJnbmF0IDxhbWVyZ25hdEBiYXlsaWJy
ZS5jb20+DQo+IC0tLQ0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MzY1LWV2
ay5kdHMgfCA4OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA4OSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDgzNjUtZXZrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4MzY1LWV2ay5kdHMNCj4gaW5kZXggNTBjYmFlZmExYTk5Li4xZDU0NTdmOWE0YzIgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MzY1LWV2ay5kdHMN
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgzNjUtZXZrLmR0cw0KPiBA
QCAtNCw2ICs0LDcgQEANCj4gICAgKiBBdXRob3JzOg0KPiAgICAqIEZhYmllbiBQYXJlbnQgPGZw
YXJlbnRAYmF5bGlicmUuY29tPg0KPiAgICAqIEJlcm5oYXJkIFJvc2Vua3LDpG56ZXIgPGJlcm9A
YmF5bGlicmUuY29tPg0KPiArICogQWxleGFuZHJlIE1lcmduYXQgPGFtZXJnbmF0QGJheWxpYnJl
LmNvbT4NCj4gICAgKi8NCj4gICANCj4gICAvZHRzLXYxLzsNCj4gQEAgLTg2LDYgKzg3LDI4IEBA
IG9wdGVlX3Jlc2VydmVkOiBvcHRlZUA0MzIwMDAwMCB7DQo+ICAgCQkJcmVnID0gPDAgMHg0MzIw
MDAwMCAwIDB4MDBjMDAwMDA+Ow0KPiAgIAkJfTsNCj4gICAJfTsNCj4gKw0KPiArCXNvdW5kOiBz
b3VuZCB7DQo+ICsJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MzY1LW10NjM1NyI7DQo+ICsJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsDQo+ICsJCQkJImRtaWMiLA0KPiArCQkJCSJtaXNv
X29mZiIsDQo+ICsJCQkJIm1pc29fb24iLA0KPiArCQkJCSJtb3NpX29mZiIsDQo+ICsJCQkJIm1v
c2lfb24iOw0KPiArCQlwaW5jdHJsLTAgPSA8JmF1ZF9kZWZhdWx0X3BpbnM+Ow0KPiArCQlwaW5j
dHJsLTEgPSA8JmF1ZF9kbWljX3BpbnM+Ow0KPiArCQlwaW5jdHJsLTIgPSA8JmF1ZF9taXNvX29m
Zl9waW5zPjsNCj4gKwkJcGluY3RybC0zID0gPCZhdWRfbWlzb19vbl9waW5zPjsNCj4gKwkJcGlu
Y3RybC00ID0gPCZhdWRfbW9zaV9vZmZfcGlucz47DQo+ICsJCXBpbmN0cmwtNSA9IDwmYXVkX21v
c2lfb25fcGlucz47DQo+ICsJCW1lZGlhdGVrLHBsYXRmb3JtID0gPCZhZmU+Ow0KPiArCX07DQo+
ICt9Ow0KPiArDQo+ICsmYWZlIHsNCj4gKwltZWRpYXRlayxkbWljLW1vZGUgPSA8MT47DQo+ICsJ
c3RhdHVzID0gIm9rYXkiOw0KPiAgIH07DQo+ICAgDQo+ICAgJmNwdTAgew0KPiBAQCAtMTc4LDkg
KzIwMSw3NSBAQCAmbXQ2MzU3X3BtaWMgew0KPiAgIAlpbnRlcnJ1cHRzLWV4dGVuZGVkID0gPCZw
aW8gMTQ1IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiAgIAlpbnRlcnJ1cHQtY29udHJvbGxlcjsN
Cj4gICAJI2ludGVycnVwdC1jZWxscyA9IDwyPjsNCj4gKwl2YXVkMjgtc3VwcGx5ID0gPCZtdDYz
NTdfdmF1ZDI4X3JlZz47DQo+ICsJYXVkaW8tY29kZWMgew0KPiArCQltZWRpYXRlayxtaWNiaWFz
MC1taWNyb3ZvbHQgPSA8MTkwMDAwMD47DQo+ICsJCW1lZGlhdGVrLG1pY2JpYXMxLW1pY3Jvdm9s
dCA9IDwxNzAwMDAwPjsNCj4gKwl9Ow0KPiAgIH07DQo+ICAgDQo+ICAgJnBpbyB7DQo+ICsJYXVk
X2RlZmF1bHRfcGluczogYXVkaW9kZWZhdWx0LXBpbnMgew0KPiArCQlwaW5zIHsNCg0KY2xrLWRh
dC1waW5zDQoNCj4gKwkJCXBpbm11eCA9IDxNVDgzNjVfUElOXzcyX0NNREFUNF9fRlVOQ19JMlMz
X0JDSz4sDQo+ICsJCQkJIDxNVDgzNjVfUElOXzczX0NNREFUNV9fRlVOQ19JMlMzX0xSQ0s+LA0K
PiArCQkJCSA8TVQ4MzY1X1BJTl83NF9DTURBVDZfX0ZVTkNfSTJTM19NQ0s+LA0KPiArCQkJCSA8
TVQ4MzY1X1BJTl83NV9DTURBVDdfX0ZVTkNfSTJTM19ETz47DQo+ICsJCX07DQo+ICsJfTsNCj4g
Kw0KPiArCWF1ZF9kbWljX3BpbnM6IGF1ZGlvZG1pYy1waW5zIHsNCj4gKwkJcGlucyB7DQoNCmNs
ay1kYXQtcGlucw0KDQo+ICsJCQlwaW5tdXggPSA8TVQ4MzY1X1BJTl8xMTdfRE1JQzBfQ0xLX19G
VU5DX0RNSUMwX0NMSz4sDQo+ICsJCQkJIDxNVDgzNjVfUElOXzExOF9ETUlDMF9EQVQwX19GVU5D
X0RNSUMwX0RBVDA+LA0KPiArCQkJCSA8TVQ4MzY1X1BJTl8xMTlfRE1JQzBfREFUMV9fRlVOQ19E
TUlDMF9EQVQxPjsNCj4gKwkJfTsNCj4gKwl9Ow0KPiArDQo+ICsJYXVkX21pc29fb2ZmX3BpbnM6
IG1pc29vZmYtcGlucyB7DQo+ICsJCXBpbnMgew0KDQpjbGstZGF0LXBpbnMNCg0KYW5kIHNhbWUg
Zm9yIGFsbCB0aGUgb3RoZXJzLg0KDQo+ICsJCQlwaW5tdXggPSA8TVQ4MzY1X1BJTl81M19BVURf
Q0xLX01JU09fX0ZVTkNfR1BJTzUzPiwNCj4gKwkJCQkgPE1UODM2NV9QSU5fNTRfQVVEX1NZTkNf
TUlTT19fRlVOQ19HUElPNTQ+LA0KPiArCQkJCSA8TVQ4MzY1X1BJTl81NV9BVURfREFUX01JU08w
X19GVU5DX0dQSU81NT4sDQo+ICsJCQkJIDxNVDgzNjVfUElOXzU2X0FVRF9EQVRfTUlTTzFfX0ZV
TkNfR1BJTzU2PjsNCj4gKwkJCWlucHV0LWVuYWJsZTsNCj4gKwkJCWJpYXMtcHVsbC1kb3duOw0K
PiArCQkJZHJpdmUtc3RyZW5ndGggPSA8TVRLX0RSSVZFXzJtQT47DQpkcml2ZS1zdHJlbmd0aCA9
IDwyPjsNCg0KPiArCQl9Ow0KPiArCX07DQo+ICsNCj4gKwlhdWRfbWlzb19vbl9waW5zOiBtaXNv
b24tcGlucyB7DQo+ICsJCXBpbnMgew0KPiArCQkJcGlubXV4ID0gPE1UODM2NV9QSU5fNTNfQVVE
X0NMS19NSVNPX19GVU5DX0FVRF9DTEtfTUlTTz4sDQo+ICsJCQkJIDxNVDgzNjVfUElOXzU0X0FV
RF9TWU5DX01JU09fX0ZVTkNfQVVEX1NZTkNfTUlTTz4sDQo+ICsJCQkJIDxNVDgzNjVfUElOXzU1
X0FVRF9EQVRfTUlTTzBfX0ZVTkNfQVVEX0RBVF9NSVNPMD4sDQo+ICsJCQkJIDxNVDgzNjVfUElO
XzU2X0FVRF9EQVRfTUlTTzFfX0ZVTkNfQVVEX0RBVF9NSVNPMT47DQo+ICsJCQlkcml2ZS1zdHJl
bmd0aCA9IDxNVEtfRFJJVkVfNm1BPjsNCg0KPSA8Nj47DQoNCj4gKwkJfTsNCj4gKwl9Ow0KPiAr
DQo+ICsJYXVkX21vc2lfb2ZmX3BpbnM6IG1vc2lvZmYtcGlucyB7DQo+ICsJCXBpbnMgew0KPiAr
CQkJcGlubXV4ID0gPE1UODM2NV9QSU5fNDlfQVVEX0NMS19NT1NJX19GVU5DX0dQSU80OT4sDQo+
ICsJCQkJIDxNVDgzNjVfUElOXzUwX0FVRF9TWU5DX01PU0lfX0ZVTkNfR1BJTzUwPiwNCj4gKwkJ
CQkgPE1UODM2NV9QSU5fNTFfQVVEX0RBVF9NT1NJMF9fRlVOQ19HUElPNTE+LA0KPiArCQkJCSA8
TVQ4MzY1X1BJTl81Ml9BVURfREFUX01PU0kxX19GVU5DX0dQSU81Mj47DQo+ICsJCQlpbnB1dC1l
bmFibGU7DQo+ICsJCQliaWFzLXB1bGwtZG93bjsNCj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPE1U
S19EUklWRV8ybUE+Ow0KDQo9IDwyPjsNCg0KPiArCQl9Ow0KPiArCX07DQo+ICsNCj4gKwlhdWRf
bW9zaV9vbl9waW5zOiBtb3Npb24tcGlucyB7DQo+ICsJCXBpbnMgew0KPiArCQkJcGlubXV4ID0g
PE1UODM2NV9QSU5fNDlfQVVEX0NMS19NT1NJX19GVU5DX0FVRF9DTEtfTU9TST4sDQo+ICsJCQkJ
IDxNVDgzNjVfUElOXzUwX0FVRF9TWU5DX01PU0lfX0ZVTkNfQVVEX1NZTkNfTU9TST4sDQo+ICsJ
CQkJIDxNVDgzNjVfUElOXzUxX0FVRF9EQVRfTU9TSTBfX0ZVTkNfQVVEX0RBVF9NT1NJMD4sDQo+
ICsJCQkJIDxNVDgzNjVfUElOXzUyX0FVRF9EQVRfTU9TSTFfX0ZVTkNfQVVEX0RBVF9NT1NJMT47
DQo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDxNVEtfRFJJVkVfNm1BPjsNCg0KPSA8Nj47DQoNCkNo
ZWVycywNCkFuZ2Vsbw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
