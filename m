Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CA59621B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Aug 2024 09:48:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6267D446A9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Aug 2024 07:48:54 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lists.linaro.org (Postfix) with ESMTPS id BF13140FE9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Aug 2024 07:48:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bootlin.com header.s=gm1 header.b=m+IuM1tT;
	spf=pass (lists.linaro.org: domain of miquel.raynal@bootlin.com designates 217.70.183.199 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 62B78FF808;
	Wed, 28 Aug 2024 07:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1724831329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y5zLZsHecvlr5wSYFNatvZpgULQ6Qmig03QDSQmQd4Y=;
	b=m+IuM1tTx5x1LLw++vJv+fVKTLfoYsQe486sDQqOB4JvPo0i/JIlUYXEqpBcD7ew+lG8B5
	ubnACfagbmX36TbQzavKFAA1nP2nJ5ZwxCZGhsqN7mUYMGwrGChsrNnlfh7Al2nn234Vw6
	Qnc4toma/uSIkeZ1OdF1EdVuicT2P1hY9CIe8yxDpCuOR76KOtIv1DHColUWaqmuiJ3bIs
	0GrAY77FOYA2mQdSs6dYdUZHwrkSlhieu3DRPo3qY2QJPwYsg1S8TfExbKa/a6fFAA4i+3
	ZLDUWtxAjoEyXiq2awP9FrIKW+GiEySKt/VFt0QRGEtxj52f7nxEMphy/vnEPw==
Date: Wed, 28 Aug 2024 09:48:46 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>
Message-ID: <20240828094846.166c7de6@xps-13>
In-Reply-To: <fd0d73cf-6bce-4f7b-9513-5f434ab9ae00@gmail.com>
References: <20240821071132.281018-1-hpchen0nvt@gmail.com>
	<20240821071132.281018-2-hpchen0nvt@gmail.com>
	<20240823182616.5a85e1ae@xps-13>
	<fd0d73cf-6bce-4f7b-9513-5f434ab9ae00@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-Rspamd-Action: no action
X-Spamd-Bar: -
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BF13140FE9
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:217.70.183.192/28];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=gm1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:29169, ipnet:217.70.176.0/20, country:FR];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[217.70.183.199:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[bootlin.com:+]
Message-ID-Hash: 3S4SJFEAYAPMGDA2GZLS43D54ZHZID5T
X-Message-ID-Hash: 3S4SJFEAYAPMGDA2GZLS43D54ZHZID5T
X-MailFrom: miquel.raynal@bootlin.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, esben@geanix.com, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dt-bindings: mtd: nuvoton,ma35d1-nand: add new bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3S4SJFEAYAPMGDA2GZLS43D54ZHZID5T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSHVpLVBpbmcsDQoNCmhwY2hlbjBudnRAZ21haWwuY29tIHdyb3RlIG9uIFdlZCwgMjggQXVn
IDIwMjQgMTA6NDc6MTcgKzA4MDA6DQoNCj4gRGVhciBNaXF1w6hsLA0KPiANCj4gVGhhbmsgeW91
IGZvciB5b3VyIHJlcGx5Lg0KPiANCj4gDQo+IA0KPiBPbiAyMDI0LzgvMjQg5LiK5Y2IIDEyOjI2
LCBNaXF1ZWwgUmF5bmFsIHdyb3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gaHBjaGVuMG52dEBnbWFp
bC5jb20gd3JvdGUgb24gV2VkLCAyMSBBdWcgMjAyNCAwNzoxMTozMSArMDAwMDoNCj4gPiAgDQo+
ID4+IEFkZCBkdC1iaW5kaW5ncyBmb3IgdGhlIE51dm90b24gTUEzNSBTb0MgTkFORCBDb250cm9s
bGVyLg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBIdWktUGluZyBDaGVuIDxocGNoZW4wbnZ0
QGdtYWlsLmNvbT4NCj4gPj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4NCj4gPj4gLS0tDQo+ID4+ICAgLi4uL2JpbmRpbmdz
L210ZC9udXZvdG9uLG1hMzVkMS1uYW5kLnlhbWwgICAgIHwgOTMgKysrKysrKysrKysrKysrKysr
Kw0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5MyBpbnNlcnRpb25zKCspDQo+ID4+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbnV2b3Rv
bixtYTM1ZDEtbmFuZC55YW1sDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbXRkL251dm90b24sbWEzNWQxLW5hbmQueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbnV2b3RvbixtYTM1ZDEtbmFuZC55YW1s
DQo+ID4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTUy
Nzg0ZTczMjYzDQo+ID4+IC0tLSAvZGV2L251bGwNCj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9udXZvdG9uLG1hMzVkMS1uYW5kLnlhbWwNCj4gPj4gQEAg
LTAsMCArMSw5MyBAQA0KPiA+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAt
b25seSBPUiBCU0QtMi1DbGF1c2UpDQo+ID4+ICslWUFNTCAxLjINCj4gPj4gKy0tLQ0KPiA+PiAr
JGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9tdGQvbnV2b3RvbixtYTM1ZDEtbmFu
ZC55YW1sIw0KPiA+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1h
cy9jb3JlLnlhbWwjDQo+ID4+ICsNCj4gPj4gK3RpdGxlOiBOdXZvdG9uIE1BMzVEMSBOQU5EIEZs
YXNoIEludGVyZmFjZSAoTkZJKSBDb250cm9sbGVyDQo+ID4+ICsNCj4gPj4gK21haW50YWluZXJz
Og0KPiA+PiArICAtIEh1aS1QaW5nIENoZW4gPGhwY2hlbjBudnRAZ21haWwuY29tPg0KPiA+PiAr
DQo+ID4+ICthbGxPZjoNCj4gPj4gKyAgLSAkcmVmOiBuYW5kLWNvbnRyb2xsZXIueWFtbCMNCj4g
Pj4gKw0KPiA+PiArcHJvcGVydGllczoNCj4gPj4gKyAgY29tcGF0aWJsZToNCj4gPj4gKyAgICBl
bnVtOg0KPiA+PiArICAgICAgLSBudXZvdG9uLG1hMzVkMS1uYW5kICANCj4gPiBDYW4gd2UgcGxl
YXNlIHVzZSB0aGUgLW5hbmQtY29udHJvbGxlciBzdWZmaXguIEEgTkFORCBpcyBhIHRoZSBjb21t
b24NCj4gPiBuYW1lIGZvciBhIGNoaXAgd2l0aCBzdG9yYWdlIGluc2lkZS4gWW91IGFyZSBkZXNj
cmliaW5nIGEgaG9zdA0KPiA+IGNvbnRyb2xsZXIgdGhhdCBjYW4gYmUgY29ubmVjdGVkIHRvIGlu
IG9yZGVyIHRvIHRhbGsgdG8gYSBOQU5ELiAgDQo+IA0KPiANCj4gT2theSwgSSB3aWxsIGNoYW5n
ZSBpdCB0byBudXZvdG9uLG1hMzVkMS1uZmkuDQo+IA0KPiBCZWNhdXNlIGluIG91ciBwbGF0Zm9y
bSwgaXQgaXMgdGhlIE5BTkQgRmxhc2ggSW50ZXJmYWNlLg0KDQpuZmkgaXMgbm90IGFuIGFjcm9u
eW0gdGhhdCBpcyB1bmRlcnN0YW5kYWJsZSBieSBldmVyeW9uZS4gUGxlYXNlIHVzZQ0KLW5hbmQt
Y29udHJvbGxlci4gRG9uJ3QgYmUgd29ycmllZCBieSB0aGUgc2l6ZSBvZiB0aGUgc3RyaW5nLg0K
DQpZb3UgY2FuIHVzZSB0aGUgYWNyb255bSBhcyBwcmVmaXggZm9yIHlvdXIgTkFORCBjb250cm9s
bGVyIGZ1bmN0aW9ucw0KdGhvdWdoLg0KDQpUaGFua3MsDQpNaXF1w6hsDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
