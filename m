Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A174695E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 08:10:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE4DA3EF9E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Jul 2023 06:09:58 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id 77D933EF28
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Jul 2023 06:09:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 11EE08131;
	Tue,  4 Jul 2023 14:09:31 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 4 Jul
 2023 14:09:31 +0800
Received: from [192.168.60.135] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 4 Jul
 2023 14:09:29 +0800
Message-ID: <9da07912-0a18-26f7-eaa6-cce076387cc8@starfivetech.com>
Date: Tue, 4 Jul 2023 14:09:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Shengyu Qu <wiagn233@outlook.com>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-media@vger.kernel.org>,
	<linaro-mm-sig@lists.linaro.org>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-4-keith.zhao@starfivetech.com>
 <TY3P286MB2611AF9B43017A0AE3C938249829A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <TY3P286MB2611AF9B43017A0AE3C938249829A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spamd-Result: default: False [-7.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.50)[61.152.239.71:from,175.102.18.54:received,180.164.60.184:received];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[outlook.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 77D933EF28
X-Spamd-Bar: -------
Message-ID-Hash: GVET5TMTMSQD2SH2IBSCQYGPXSM5BMC3
X-Message-ID-Hash: GVET5TMTMSQD2SH2IBSCQYGPXSM5BMC3
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] drm/verisilicon: Add basic drm driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GVET5TMTMSQD2SH2IBSCQYGPXSM5BMC3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDIwMjMvNy80IDI6NDIsIFNoZW5neXUgUXUgd3JvdGU6DQo+IEhlbGxvIEtlaXRoLA0K
PiANCj4gV2hpbGUgY29tcGlsaW5nIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBhIGVycm9yIGhh
cHBlbnM6DQo+IA0KPiBkcml2ZXJzL2dwdS9kcm0vdmVyaXNpbGljb24vdnNfZHJtOiBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIGlzIDIwMCBieXRlcy7CoCBUaGUgbGFzdCBvZiAxIGlzOg0KPiAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAw
eDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAg
MHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4NzYgMHg2NSAweDcyIDB4NjkgMHg3MyAweDY5
IDB4NmMgMHg2OSAweDYzIDB4NmYgMHg2ZSAweDJjIDB4NjQgMHg2OSAweDczIDB4NzAgMHg2YyAw
eDYxIDB4NzkgMHgyZCAweDczIDB4NzUgMHg2MiAweDczIDB4NzkgMHg3MyAweDc0IDB4NjUgMHg2
ZCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAg
MHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAw
eDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgw
MCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAg
MHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4
MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAweDAwIDB4MDAgMHgwMCAw
eDAwIDB4MDAgMHgwMA0KPiAweDAwIDB4MDANCj4gRkFUQUw6IG1vZHBvc3Q6IGRyaXZlcnMvZ3B1
L2RybS92ZXJpc2lsaWNvbi92c19kcm06IHN0cnVjdCBvZl9kZXZpY2VfaWQgaXMgbm90IHRlcm1p
bmF0ZWQgd2l0aCBhIE5VTEwgZW50cnkhDQo+IA0KPj4gKw0KPj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIHZzX2RybV9kdF9pZHNbXSA9IHsNCj4+ICvCoMKgwqAgeyAuY29tcGF0
aWJsZSA9ICJ2ZXJpc2lsaWNvbixkaXNwbGF5LXN1YnN5c3RlbSIsIH0sDQo+PiArfTsNCj4+ICsN
Cj4gDQo+IFNvLCB0aGlzIHNob3VsZCBiZToNCj4gDQo+IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIHZzX2RybV9kdF9pZHNbXSA9IHsNCj4gwqDCoMKgwqB7IC5jb21wYXRpYmxlID0g
InZlcmlzaWxpY29uLGRpc3BsYXktc3Vic3lzdGVtIiwgfSwNCj4gwqDCoMKgwqB7IH0sDQo+IH07
DQo+IA0KPiBBZnRlciBmaXhpbmcgdGhpcyBwcm9ibGVtLCBhbm90aGVyIGVycm9yIGhhcHBlbnM6
DQo+IA0KPiBFUlJPUjogbW9kcG9zdDogbW9kdWxlIHZzX2RybSB1c2VzIHN5bWJvbCBkbWFfYnVm
X21tYXAgZnJvbSBuYW1lc3BhY2UgRE1BX0JVRiwgYnV0IGRvZXMgbm90IGltcG9ydCBpdC4NCj4g
DQo+IFBsZWFzZSBmaXguDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IFNoZW5neXUNCg0KaGVsbG8g
U2hlbmd5dSAsIA0KDQpJIGNhbiByZXByb2R1Y2UgdGhlIGVycm9yIGdlbmVyYXRlZCBieSBjb21w
aWxpbmcga28gLCBhbmQgYWRkIE1PRFVMRV9JTVBPUlRfTlMoRE1BX0JVRikgYXQgdGhlIGJlZ2lu
bmluZyBvZiB2c19nZW0uYyAsDQppdCBjYW4gZml4IHRoZSBlcnJvciBtZXNzYWdlLCANCkkgd2ls
bCBhZGQgdGhpcyBpbiBteSBuZXh0IHBhdGNoICwgdGhhbmtzDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
