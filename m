Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F20CC74E3A8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jul 2023 03:44:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C82803F505
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Jul 2023 01:44:51 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id D92B73E9D4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Jul 2023 01:44:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 5D45A24DE03;
	Tue, 11 Jul 2023 09:44:16 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 11 Jul
 2023 09:44:16 +0800
Received: from [192.168.60.133] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 11 Jul
 2023 09:44:15 +0800
Message-ID: <560ca37f-74c3-8f36-c118-eb17f92e20b3@starfivetech.com>
Date: Tue, 11 Jul 2023 09:44:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Shengyu Qu <wiagn233@outlook.com>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-media@vger.kernel.org>,
	<linaro-mm-sig@lists.linaro.org>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-8-keith.zhao@starfivetech.com>
 <TY3P286MB261191B29FB384110094181C9830A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <TY3P286MB261191B29FB384110094181C9830A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[outlook.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[180.164.60.184:query timed out,61.152.239.71:query timed out,175.102.18.54:query timed out];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	HAS_XOIP(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D92B73E9D4
X-Spamd-Bar: -----
Message-ID-Hash: GWCTVI7ORAUFHNZB7K2M5ILGCIBPJCNI
X-Message-ID-Hash: GWCTVI7ORAUFHNZB7K2M5ILGCIBPJCNI
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/9] drm/verisilicon: Add drm plane funcs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GWCTVI7ORAUFHNZB7K2M5ILGCIBPJCNI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDIwMjMvNy8xMSAwOjQ2LCBTaGVuZ3l1IFF1IHdyb3RlOg0KPiBIZWxsbyBLZWl0aCwN
Cj4+ICsNCj4+ICtzdGF0aWMgdm9pZCB2c19wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1f
cGxhbmUgKnBsYW5lLA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+PiArew0KPj4gK8KgwqDCoCBzdHJ1Y3Qg
ZHJtX3BsYW5lX3N0YXRlICpuZXdfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfcGxhbmVfc3Rh
dGUoc3RhdGUsDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbGFuZSk7DQo+PiArwqDCoMKgIHVu
c2lnbmVkIGNoYXIgaSwgbnVtX3BsYW5lczsNCj4+ICvCoMKgwqAgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmI7DQo+PiArwqDCoMKgIHN0cnVjdCB2c19wbGFuZSAqdnNfcGxhbmUgPSB0b192c19w
bGFuZShwbGFuZSk7DQo+PiArwqDCoMKgIC8vc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUg
PSBwbGFuZS0+c3RhdGU7DQo+PiArwqDCoMKgIHN0cnVjdCB2c19jcnRjICp2c19jcnRjID0gdG9f
dnNfY3J0YyhuZXdfc3RhdGUtPmNydGMpOw0KPj4gK8KgwqDCoCBzdHJ1Y3QgdnNfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlID0gdG9fdnNfcGxhbmVfc3RhdGUobmV3X3N0YXRlKTsNCj4+ICvCoMKg
wqAgLy9zdHJ1Y3QgZHJtX2Zvcm1hdF9uYW1lX2J1ZiAqbmFtZSA9ICZwbGFuZV9zdGF0ZS0+c3Rh
dHVzLmZvcm1hdF9uYW1lOw0KPj4gKw0KPj4gK8KgwqDCoCBpZiAoIW5ld19zdGF0ZS0+ZmIgfHwg
IW5ld19zdGF0ZS0+Y3J0YykNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+PiArDQo+PiAr
wqDCoMKgIGZiID0gbmV3X3N0YXRlLT5mYjsNCj4+ICsNCj4+ICvCoMKgwqAgbnVtX3BsYW5lcyA9
IHZzX2dldF9wbGFuZV9udW1iZXIoZmIpOw0KPj4gKw0KPj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBp
IDwgbnVtX3BsYW5lczsgaSsrKSB7DQo+PiArwqDCoMKgwqDCoMKgwqAgc3RydWN0IHZzX2dlbV9v
YmplY3QgKnZzX29iajsNCj4+ICsNCj4+ICvCoMKgwqDCoMKgwqDCoCB2c19vYmogPSB2c19mYl9n
ZXRfZ2VtX29iaihmYiwgaSk7DQo+PiArwqDCoMKgwqDCoMKgwqAgdnNfcGxhbmUtPmRtYV9hZGRy
W2ldID0gdnNfb2JqLT5pb3ZhICsgZmItPm9mZnNldHNbaV07DQo+IA0KPiBUaGVyZSBpcyBhIGRj
YWNoZSBmbHVzaCBvcGVyYXRpb24gaGVyZSBpbiBkb3duc3RyZWFtIGRyaXZlci4gSXMgdGhhdCBh
IGNhY2hlIGNvaGVyZW5jZSBwcm9ibGVtPw0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiANCj4gU2hl
bmd5dQ0KPiANCj4+ICvCoMKgwqAgfQ0KPj4gKw0KPj4gK8KgwqDCoCBwbGFuZV9zdGF0ZS0+c3Rh
dHVzLnNyYyA9IGRybV9wbGFuZV9zdGF0ZV9zcmMobmV3X3N0YXRlKTsNCj4+ICvCoMKgwqAgcGxh
bmVfc3RhdGUtPnN0YXR1cy5kZXN0ID0gZHJtX3BsYW5lX3N0YXRlX2Rlc3QobmV3X3N0YXRlKTsN
Cj4+ICsNCj4+ICvCoMKgwqAgdnNfcGxhbmUtPmZ1bmNzLT51cGRhdGUodnNfY3J0Yy0+ZGV2LCB2
c19wbGFuZSwgcGxhbmUsIHN0YXRlKTsNCj4+ICt9DQo+PnllcyAsIFlvdSBjYW4gZmluZCB0aGF0
IHRoZSBjdXJyZW50IHNpdHVhdGlvbiBpcyB2ZXJ5IHByb2Zlc3Npb25hbC4gDQpUaGlzIHByb2Js
ZW0gZXhpc3RzIGF0IHByZXNlbnQsIGJ1dCB0aGUgZG1hIGludGVyZmFjZSBpcyBub3QgcGVyZmVj
dCBhdCBub3csIA0KYW5kIHRoZSBkbWFfc3luY19zaW5nbGVfZm9yX2RldmljZSBpbnRlcmZhY2Ug
bmVlZHMgdG8gYmUgaW1wbGVtZW50ZWQgbGF0ZXIuIA0KSSB3aWxsIGNvbnNpZGVyIHJlcGFpcmlu
ZyB0aGlzIHByb2JsZW0gaW4gdGhlIGZvcm0gb2YgcGF0Y2gNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
