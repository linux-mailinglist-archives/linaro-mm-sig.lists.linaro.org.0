Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8890A8796F1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Mar 2024 15:55:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EC9E3F090
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Mar 2024 14:55:06 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id D04073F090
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Mar 2024 14:54:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=W0mq3kG8;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710255297;
	bh=PRWIirwilphIw4zcMNTt1c46izhHLa0/pjMpYw4ic/o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W0mq3kG86LmhXg334vp1B8RhZDdbMeVpYdLAytnolcZyjPNfr2kXn9W5lEeixOCCK
	 0KmgcInRX8B+FH1LhTbg2EK9zAnwoD7fQt1o7szRtSJduS5tr418smUTWytNHSsx9c
	 A/8oELBaufMoRsGYc1EXP6BDAttBKUC6Y2dAy3f5JtztfuvHKt2VXujhe3zz2iynMN
	 y7SYzLBUDaM7HX7tmyEVt7ss7JCHiJFfChIBbyUG6hZTcEi7DWN1evdnztmYn2wV0j
	 EHH1e+uQBe13DRKMp537t6nk1gMuORiF+BfV/eAqHJxgQL/PllwTWlOh+cBvFWED4M
	 EPNrpYnulqzZw==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 197EA37811D4;
	Tue, 12 Mar 2024 14:54:56 +0000 (UTC)
Message-ID: <4572ff92-ca26-4e61-a756-b9456896faef@collabora.com>
Date: Tue, 12 Mar 2024 15:54:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <1641a853-88cb-43a8-bb95-653f5329a682@collabora.com>
 <253b4b6c-d8ba-40a3-adbb-4455af57d780@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <253b4b6c-d8ba-40a3-adbb-4455af57d780@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D04073F090
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,gmail.com,kernel.org,linaro.org,arm.com,amd.com,suse.com,perex.cz,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,baylibre.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[collabora.com:dkim,madrid.collaboradmins.com:rdns,madrid.collaboradmins.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: XYUNUCM2DMVRI33W3HAEBQGYBVC7LKUD
X-Message-ID-Hash: XYUNUCM2DMVRI33W3HAEBQGYBVC7LKUD
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Flora Fu <flora.fu@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Will Deacon <will@kernel.org>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nicolas Belin <nbelin@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XYUNUCM2DMVRI33W3HAEBQGYBVC7LKUD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SWwgMTIvMDMvMjQgMTU6NTAsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86DQo+IA0KPiAN
Cj4gT24gMjYvMDIvMjAyNCAxNjoyNSwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6
DQo+Pj4gK8KgwqDCoCBpZiAoZW5hYmxlKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIHNldCBn
cGlvIG1vc2kgbW9kZSAqLw0KPj4+ICvCoMKgwqDCoMKgwqDCoCByZWdtYXBfd3JpdGUocHJpdi0+
cmVnbWFwLCBNVDYzNTdfR1BJT19NT0RFMl9DTFIsIEdQSU9fTU9ERTJfQ0xFQVJfQUxMKTsNCj4+
PiArwqDCoMKgwqDCoMKgwqAgcmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgTVQ2MzU3X0dQSU9f
TU9ERTJfU0VULCANCj4+PiBHUElPOF9NT0RFX1NFVF9BVURfQ0xLX01PU0kgfA0KPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgR1BJTzlfTU9ERV9TRVRfQVVEX0RBVF9NT1NJMCB8DQo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHUElP
MTBfTU9ERV9TRVRfQVVEX0RBVF9NT1NJMSB8DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHUElPMTFfTU9ERV9T
RVRfQVVEX1NZTkNfTU9TSSk7DQo+Pg0KPj4gQXJlIHlvdSBzdXJlIHRoYXQgeW91IG5lZWQgdG8g
d3JpdGUgdG8gTU9ERTJfU0VUICphbmQqIHRvIE1PREUyPyENCj4gDQo+IFRoaXMgaXMgZG93bnN0
cmVhbSBjb2RlIGFuZCB0aGVzZSByZWdpc3RlcnMgYXJlbid0IGluIG15IGRvY3VtZW50YXRpb24u
DQo+IEkndmUgcmVtb3ZlZCB0aGUgTU9ERTJfU0VUIHdyaXRlIGFuZCB0ZXN0IHRoZSBhdWRpbzog
aXQncyBzdGlsbCB3b3JraW5nLg0KPiANCj4gU28gSSB3aWxsIGtlZXAgdGhlIHNwdXJpb3VzIHdy
aXRlIHJlbW92ZWQgZm9yIHYyLiA6KQ0KPiANCg0KVXN1YWxseSwgTWVkaWFUZWsgcmVnaXN0ZXJz
IGFyZSBsYWlkIG91dCBsaWtlICJSRUciIGJlaW5nIFIvbGVnYWN5LVcgYW5kDQoiUkVHX1NFVC9D
TFIiIGZvciBzZXR0aW5nIGFuZCBjbGVhcmluZyBiaXRzIGluICJSRUciIGludGVybmFsbHksIGFu
ZCB0aGF0DQptaWdodCBhY2NvdW50IGZvciBpbnRlcm5hbCBsYXRlbmNpZXMgYW5kIHN1Y2guDQoN
CkNhbiB5b3UgcGxlYXNlIHRyeSB0byByZW1vdmUgdGhlIE1PREUyIHdyaXRlIGluc3RlYWQgb2Yg
dGhlIE1PREUyX1NFVCBvbmUNCmFuZCBjaGVjayBpZiB0aGF0IHdvcmtzPw0KDQpZb3UncmUgYWxy
ZWFkeSB1c2luZyB0aGUgU0VUQ0xSIHdheSB3aGVuIG1hbmlwdWxhdGluZyByZWdpc3RlcnMgaW4g
aGVyZSwNCnNvIEkgd291bGQgY29uZmlkZW50bHkgZXhwZWN0IHRoYXQgdG8gd29yay4NCg0KQ2hl
ZXJzLA0KQW5nZWxvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
