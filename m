Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F090A76B074
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 12:10:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9C6E4416C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 10:10:52 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lists.linaro.org (Postfix) with ESMTP id 6842F43F0A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 10:10:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.75 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id E7FDA24E231;
	Tue,  1 Aug 2023 18:10:32 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 18:10:32 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 18:10:32 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
Date: Tue, 1 Aug 2023 18:10:23 +0800
Message-ID: <20230801101030.2040-1-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6842F43F0A
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[ex01.ufhost.com:helo,ex01.ufhost.com:rdns];
	DMARC_NA(0.00)[starfivetech.com];
	ARC_NA(0.00)[]
Message-ID-Hash: TDYYLIQZBODWXVXZOYR325REGTYDWZ56
X-Message-ID-Hash: TDYYLIQZBODWXVXZOYR325REGTYDWZ56
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao <keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 v1 0/7] DRM driver for verisilicon
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDYYLIQZBODWXVXZOYR325REGTYDWZ56/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBpcyBhIGRybSBkcml2ZXIgZm9yIFN0YXJmaXZlIFNvYyBKSDcxMTAsDQpJIGFt
IHNlbmRpbmcgRHJtIGRyaXZlciBwYXJ0IGFuZCBIRE1JIGRyaXZlciBwYXJ0Lg0KDQpXZSB1c2Vk
IEdFTSBmcmFtZXdvcmsgZm9yIGJ1ZmZlciBtYW5hZ2VtZW50ICwgYW5kIA0KZm9yIGJ1ZmZlciBh
bGxvY2F0aW9uLHdlIHVzZSBETUEgQVBJcy4NCg0KdGhlIFN0YXJmaXZlIEhETUkgc2VydmVycyBh
cyBpbnRlcmZhY2UgYmV0d2VlbiBhIExDRCANCkNvbnRyb2xsZXIgYW5kIGEgSERNSSBidXMuIEEg
SERNSSBUWCBjb25zaXN0cyBvZiBvbmUgDQpIRE1JIHRyYW5zbWl0dGVyIGNvbnRyb2xsZXIgYW5k
IG9uZSBIRE1JIHRyYW5zbWl0dGVyIFBIWS4NCihTb3VuZCBzdXBwb3J0IGlzIG5vdCBpbmNsdWRl
IGluIHRoaXMgcGF0Y2gpDQoNClRoaXMgcGF0Y2hzZXQgc2hvdWxkIGJlIGFwcGxpZWQgYWZ0ZXIg
dGhlIHBhdGNoc2V0Og0KaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4
LWNsay9jb3Zlci8yMDIzMDcxMzExMzkwMi41NjUxOS0xLXhpbmd5dS53dUBzdGFyZml2ZXRlY2gu
Y29tLw0KDQpWMToNCkNoYW5nZXMgc2luY2UgdjE6DQotIEZ1cnRoZXIgc3RhbmRhcmRpemUgdGhl
IHlhbWwgZmlsZS4NCi0gRHRzIG5hbWluZyBjb252ZW50aW9uIGltcHJvdmVkLg0KLSBGaXggdGhl
IHByb2JsZW0gb2YgY29tcGlsaW5nIGFuZCBsb2FkaW5nIGtvIGZpbGVzLg0KLSBVc2UgZHJtIG5l
dyBhcGkgdG8gYXV0b21hdGljYWxseSBtYW5hZ2UgcmVzb3VyY2VzLg0KLSBEcm9wIHN0cnVjdCB2
c19jcnRjX2Z1bmNzJnZzX3BsYW5lX2Z1bmNz77yMc3ViZGl2aWRlIHRoZSBwbGFuZSdzIGhlbHAg
aW50ZXJmYWNlDQotIFJlZHVjZSB0aGUgbW9kaWZpZXJzIHVudXNlZC4NCi0gT3B0aW1pemUgdGhl
IGhkbWkgZHJpdmVyIGNvZGUNCg0KS2VpdGggWmhhbyAoNyk6DQogIE1BSU5UQUlORVJTOiBVcGRh
dGUgc3RhcmZpdmUgbWFpbnRhaW5lcnMNCiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IEFkZCB5YW1s
cyBmb3IgSkg3MTEwIGRpc3BsYXkgc3lzdGVtDQogIHJpc2N2OiBkdHM6IHN0YXJmaXZlOiBqaDcx
MTA6IGFkZCBkYyBjb250cm9sbGVyIGFuZCBoZG1pICBub2RlDQogIGRybS9mb3VyY2M6IEFkZCBk
cm0vdnMgdGlsZWQgbW9kaWZpZXJzDQogIGRybS92czogUmVnaXN0ZXIgRFJNIGRldmljZQ0KICBk
cm0vdnM6IEFkZCBLTVMgY3J0YyZwbGFuZQ0KICBkcm0vdnM6IEFkZCBoZG1pDQoNCiAuLi4vc3Rh
cmZpdmUvc3RhcmZpdmUsZGlzcGxheS1zdWJzeXN0ZW0ueWFtbCAgfCAgIDQxICsNCiAuLi4vc3Rh
cmZpdmUvc3RhcmZpdmUsamg3MTEwLWRjODIwMC55YW1sICAgICAgfCAgMTA3ICsNCiAuLi4vc3Rh
cmZpdmUvc3RhcmZpdmUsamg3MTEwLWlubm8taGRtaS55YW1sICAgfCAgIDkyICsNCiBNQUlOVEFJ
TkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA3ICsNCiAuLi4vamg3
MTEwLXN0YXJmaXZlLXZpc2lvbmZpdmUtMi5kdHNpICAgICAgICAgfCAgIDg3ICsNCiBhcmNoL3Jp
c2N2L2Jvb3QvZHRzL3N0YXJmaXZlL2poNzExMC5kdHNpICAgICAgfCAgIDQzICsNCiBkcml2ZXJz
L2dwdS9kcm0vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgICAyICsNCiBkcml2ZXJz
L2dwdS9kcm0vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgICAxICsNCiBkcml2ZXJz
L2dwdS9kcm0vdmVyaXNpbGljb24vS2NvbmZpZyAgICAgICAgICAgfCAgIDI1ICsNCiBkcml2ZXJz
L2dwdS9kcm0vdmVyaXNpbGljb24vTWFrZWZpbGUgICAgICAgICAgfCAgIDEzICsNCiBkcml2ZXJz
L2dwdS9kcm0vdmVyaXNpbGljb24vc3RhcmZpdmVfaGRtaS5jICAgfCAgOTQwICsrKysrKysrDQog
ZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3N0YXJmaXZlX2hkbWkuaCAgIHwgIDI5NSArKysN
CiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfY3J0Yy5jICAgICAgICAgfCAgMzY1ICsr
Kw0KIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19jcnRjLmggICAgICAgICB8ICAgNTQg
Kw0KIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19kYy5jICAgICAgICAgICB8IDEwMzYg
KysrKysrKysrDQogZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2RjLmggICAgICAgICAg
IHwgICA4NyArDQogZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2RjX2h3LmMgICAgICAg
IHwgMjAwOCArKysrKysrKysrKysrKysrKw0KIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92
c19kY19ody5oICAgICAgICB8ICA0OTYgKysrKw0KIGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNv
bi92c19kcnYuYyAgICAgICAgICB8ICAyNzQgKysrDQogZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxp
Y29uL3ZzX2Rydi5oICAgICAgICAgIHwgICA1NCArDQogZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxp
Y29uL3ZzX2dlbS5jICAgICAgICAgIHwgIDI5OCArKysNCiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfZ2VtLmggICAgICAgICAgfCAgIDUwICsNCiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfbW9kZXNldC5jICAgICAgfCAgIDkyICsNCiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfbW9kZXNldC5oICAgICAgfCAgIDEzICsNCiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfcGxhbmUuYyAgICAgICAgfCAgNTAyICsrKysrDQogZHJpdmVycy9ncHUvZHJtL3Zl
cmlzaWxpY29uL3ZzX3BsYW5lLmggICAgICAgIHwgICA2NSArDQogZHJpdmVycy9ncHUvZHJtL3Zl
cmlzaWxpY29uL3ZzX3R5cGUuaCAgICAgICAgIHwgICA3MCArDQogaW5jbHVkZS91YXBpL2RybS9k
cm1fZm91cmNjLmggICAgICAgICAgICAgICAgIHwgICAyNyArDQogaW5jbHVkZS91YXBpL2RybS92
c19kcm0uaCAgICAgICAgICAgICAgICAgICAgIHwgICA1MCArDQogMjkgZmlsZXMgY2hhbmdlZCwg
NzE5NCBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0YXJmaXZlL3N0YXJmaXZlLGRpc3BsYXktc3Vic3lz
dGVtLnlhbWwNCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvc3RhcmZpdmUvc3RhcmZpdmUsamg3MTEwLWRjODIwMC55YW1sDQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L3N0YXJmaXZlL3N0YXJmaXZlLGpoNzExMC1pbm5vLWhkbWkueWFtbA0KIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vS2NvbmZpZw0KIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vTWFrZWZpbGUNCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3N0YXJmaXZlX2hkbWkuYw0KIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vc3RhcmZpdmVfaGRtaS5o
DQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c19jcnRj
LmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxpY29uL3ZzX2Ny
dGMuaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNf
ZGMuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNf
ZGMuaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNf
ZGNfaHcuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24v
dnNfZGNfaHcuaA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGlj
b24vdnNfZHJ2LmMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3ZlcmlzaWxp
Y29uL3ZzX2Rydi5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS92ZXJpc2ls
aWNvbi92c19nZW0uYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vdmVyaXNp
bGljb24vdnNfZ2VtLmgNCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3Zlcmlz
aWxpY29uL3ZzX21vZGVzZXQuYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
dmVyaXNpbGljb24vdnNfbW9kZXNldC5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1
L2RybS92ZXJpc2lsaWNvbi92c19wbGFuZS5jDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
Z3B1L2RybS92ZXJpc2lsaWNvbi92c19wbGFuZS5oDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS92ZXJpc2lsaWNvbi92c190eXBlLmgNCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5j
bHVkZS91YXBpL2RybS92c19kcm0uaA0KDQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
