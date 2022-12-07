Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8340645BAF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 14:59:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B913A3E941
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Dec 2022 13:59:39 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id E34243E928
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Dec 2022 13:59:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=nxwN0zHB;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LMJS/qAka/Cvh0b97juo1H1YIqM1nYXExoWNXinOmoo=; b=nxwN0zHBe/XLlLov/zn/k1DN4R
	qq+vI7iNhllUUMjpsmMzLpViVP+ReDZ2hMHA2e2Ua9kUShAmBjuHOmvCUJbH/1HX7m4nzgy1Fj/Bj
	MerCjl49iPlF+l5piqGBOZ4wAGJj7pczwZ872zxD0b76SMAlCffjuEipUEIInXywJxeHRByBcVMiO
	GeyMc4JIJrEcSCsS10t/iwdzSzJjxmQGJvUhXC0tAyEoM2vQzksjSz77fHiK9Kk0JG0zbdv3om+Az
	lvKwLKVIWiQrey1fewqPfXe/XYdOoi3WbcTcrQGCtdbOm2eNbTeEsNRmtXTm7ile2IFjsx/OcLQAJ
	POJalxCQ==;
Received: from [143.107.182.242] (helo=[10.41.75.14])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1p2ux9-00GbZp-Mg; Wed, 07 Dec 2022 14:59:16 +0100
Message-ID: <04478451-4237-1aec-7edd-85049c96d7d5@igalia.com>
Date: Wed, 7 Dec 2022 10:59:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>
References: <20221123-rpi-kunit-tests-v3-0-4615a663a84a@cerno.tech>
 <20221123-rpi-kunit-tests-v3-4-4615a663a84a@cerno.tech>
From: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>
In-Reply-To: <20221123-rpi-kunit-tests-v3-4-4615a663a84a@cerno.tech>
X-Rspamd-Queue-Id: E34243E928
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[igalia.com:s=20170329];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,suse.de,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ASN(0.00)[asn:3352, ipnet:213.97.0.0/16, country:ES];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:+];
	DMARC_NA(0.00)[igalia.com];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HGT7B5DTHSHMUXUO4F64IJEZF47THDNN
X-Message-ID-Hash: HGT7B5DTHSHMUXUO4F64IJEZF47THDNN
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>, Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/20] drm/tests: helpers: Switch to EXPORT_SYMBOL_GPL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGT7B5DTHSHMUXUO4F64IJEZF47THDNN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMS8yMiAxMjoxMSwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gZHJtX2t1bml0X2Rldmlj
ZV9pbml0KCkgYW1vbmcgb3RoZXIgdGhpbmdzIHdpbGwgYWxsb2NhdGUgYSBkZXZpY2UgYW5kDQo+
IHdyYXAgYXJvdW5kIHJvb3RfZGV2aWNlX3JlZ2lzdGVyLiBUaGlzIGZ1bmN0aW9uIGlzIGV4cG9y
dGVkIHdpdGgNCj4gRVhQT1JUX1NZTUJPTF9HUEwsIHNvIHdlIGNhbid0IHJlYWxseSBjaGFuZ2Ug
dGhlIGxpY2Vuc2UuDQo+IA0KPiBGaXhlczogMTk5NTU3ZmFiOTI1ICgiZHJtL3Rlc3RzOiBoZWxw
ZXJzOiBBZGQgbWlzc2luZyBleHBvcnQiKQ0KPiBTdWdnZXN0ZWQtYnk6IEphdmllciBNYXJ0aW5l
eiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4NCg0KUmV2aWV3ZWQtYnk6IE1hw61yYSBDYW5hbCA8
bWNhbmFsQGlnYWxpYS5jb20+DQoNCkJlc3QgUmVnYXJkcywNCi0gTWHDrXJhIENhbmFsDQoNCj4g
LS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMgfCAyICst
DQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9oZWxwZXJzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2hlbHBlcnMuYw0KPiBpbmRleCA5ZWQz
Y2ZjMmFjMDMuLjRmZTEzMTE0MTcxOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rl
c3RzL2RybV9rdW5pdF9oZWxwZXJzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2Ry
bV9rdW5pdF9oZWxwZXJzLmMNCj4gQEAgLTgyLDcgKzgyLDcgQEAgc3RydWN0IGRybV9kZXZpY2Ug
KmRybV9rdW5pdF9kZXZpY2VfaW5pdChzdHJ1Y3Qga3VuaXQgKnRlc3QsIHUzMiBmZWF0dXJlcywg
Y2hhcg0KPiAgIA0KPiAgIAlyZXR1cm4gZHJtOw0KPiAgIH0NCj4gLUVYUE9SVF9TWU1CT0woZHJt
X2t1bml0X2RldmljZV9pbml0KTsNCj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRybV9rdW5pdF9kZXZp
Y2VfaW5pdCk7DQo+ICAgDQo+ICAgTU9EVUxFX0FVVEhPUigiTWF4aW1lIFJpcGFyZCA8bWF4aW1l
QGNlcm5vLnRlY2g+Iik7DQo+ICAgTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOw0KPiANCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
