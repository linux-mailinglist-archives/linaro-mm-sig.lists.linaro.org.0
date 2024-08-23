Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E0795D33A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Aug 2024 18:26:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 030BE40C37
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Aug 2024 16:26:23 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by lists.linaro.org (Postfix) with ESMTPS id 9A51F3F4EA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Aug 2024 16:26:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bootlin.com header.s=gm1 header.b=JpFgaCA3;
	spf=pass (lists.linaro.org: domain of miquel.raynal@bootlin.com designates 217.70.183.200 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8C6E820008;
	Fri, 23 Aug 2024 16:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1724430378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dZSZ4ZWkj6nN5cffjKGJ15MFqfbm3AdMyv45FOgL9lo=;
	b=JpFgaCA32WqOAE3V0avi6VMRNuexZVaIWTSYeFl+0wgVveqM/f8XnfTjdFcSomsT3BDCKi
	0Hh30CESmpUDky3nmmbKHKTd3/FYNC67cupzeYCQdrWMXHbHlZvNHTbCX8xOXRv3G92xhv
	FmfEpg24mUCZNK/Nkb7CGqfpHDEAZEbbkVH5Hy2LtG7rd9/wPbnLHDPLGwy0ZUTj1l4VEZ
	2ppZ3j7o66upZ+wP+dGi41RfTvb5TavNh/t8/NvDOcVij0SEDtRzMIvQE2Pr7fKRvgS78e
	rDoh1VviE+kBhlSbxDgHf7B4cE11WmrgL3suG9gviol32opZCBDPI0VXULmqkQ==
Date: Fri, 23 Aug 2024 18:26:16 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>
Message-ID: <20240823182616.5a85e1ae@xps-13>
In-Reply-To: <20240821071132.281018-2-hpchen0nvt@gmail.com>
References: <20240821071132.281018-1-hpchen0nvt@gmail.com>
	<20240821071132.281018-2-hpchen0nvt@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-Rspamd-Action: no action
X-Spamd-Bar: -
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9A51F3F4EA
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:217.70.183.192/28];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=gm1];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29169, ipnet:217.70.176.0/20, country:FR];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[217.70.183.200:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[linaro.org:email,bootlin.com:dkim];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+]
Message-ID-Hash: CACDFYK24VUSOSUB5HHCO5KALM6UF5AH
X-Message-ID-Hash: CACDFYK24VUSOSUB5HHCO5KALM6UF5AH
X-MailFrom: miquel.raynal@bootlin.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, esben@geanix.com, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dt-bindings: mtd: nuvoton,ma35d1-nand: add new bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CACDFYK24VUSOSUB5HHCO5KALM6UF5AH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCmhwY2hlbjBudnRAZ21haWwuY29tIHdyb3RlIG9uIFdlZCwgMjEgQXVnIDIwMjQgMDc6
MTE6MzEgKzAwMDA6DQoNCj4gQWRkIGR0LWJpbmRpbmdzIGZvciB0aGUgTnV2b3RvbiBNQTM1IFNv
QyBOQU5EIENvbnRyb2xsZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBIdWktUGluZyBDaGVuIDxo
cGNoZW4wbnZ0QGdtYWlsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4NCj4gLS0tDQo+ICAuLi4vYmluZGluZ3Mv
bXRkL251dm90b24sbWEzNWQxLW5hbmQueWFtbCAgICAgfCA5MyArKysrKysrKysrKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOTMgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbnV2b3RvbixtYTM1ZDEt
bmFuZC55YW1sDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL210ZC9udXZvdG9uLG1hMzVkMS1uYW5kLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbXRkL251dm90b24sbWEzNWQxLW5hbmQueWFtbA0KPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjE1Mjc4NGU3MzI2Mw0KPiAtLS0gL2Rl
di9udWxsDQo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbnV2
b3RvbixtYTM1ZDEtbmFuZC55YW1sDQo+IEBAIC0wLDAgKzEsOTMgQEANCj4gKyMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQ0KPiArJVlBTUwg
MS4yDQo+ICstLS0NCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbXRkL251
dm90b24sbWEzNWQxLW5hbmQueWFtbCMNCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPiArDQo+ICt0aXRsZTogTnV2b3RvbiBNQTM1RDEg
TkFORCBGbGFzaCBJbnRlcmZhY2UgKE5GSSkgQ29udHJvbGxlcg0KPiArDQo+ICttYWludGFpbmVy
czoNCj4gKyAgLSBIdWktUGluZyBDaGVuIDxocGNoZW4wbnZ0QGdtYWlsLmNvbT4NCj4gKw0KPiAr
YWxsT2Y6DQo+ICsgIC0gJHJlZjogbmFuZC1jb250cm9sbGVyLnlhbWwjDQo+ICsNCj4gK3Byb3Bl
cnRpZXM6DQo+ICsgIGNvbXBhdGlibGU6DQo+ICsgICAgZW51bToNCj4gKyAgICAgIC0gbnV2b3Rv
bixtYTM1ZDEtbmFuZA0KDQpDYW4gd2UgcGxlYXNlIHVzZSB0aGUgLW5hbmQtY29udHJvbGxlciBz
dWZmaXguIEEgTkFORCBpcyBhIHRoZSBjb21tb24NCm5hbWUgZm9yIGEgY2hpcCB3aXRoIHN0b3Jh
Z2UgaW5zaWRlLiBZb3UgYXJlIGRlc2NyaWJpbmcgYSBob3N0DQpjb250cm9sbGVyIHRoYXQgY2Fu
IGJlIGNvbm5lY3RlZCB0byBpbiBvcmRlciB0byB0YWxrIHRvIGEgTkFORC4NCg0KVGhhbmtzLA0K
TWlxdcOobA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
