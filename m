Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D037EC4D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 15:13:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87A45411A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 14:13:30 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id DF3483F0A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 14:13:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 725DF24DB83;
	Wed, 15 Nov 2023 22:12:51 +0800 (CST)
Received: from EXMBX161.cuchost.com (172.16.6.71) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Nov
 2023 22:12:51 +0800
Received: from [192.168.1.115] (180.164.60.184) by EXMBX161.cuchost.com
 (172.16.6.71) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Nov
 2023 22:12:50 +0800
Message-ID: <e7c887a9-d08a-42e6-ac21-effa8e2e620b@starfivetech.com>
Date: Wed, 15 Nov 2023 22:12:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Ser <contact@emersion.fr>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-4-keith.zhao@starfivetech.com>
 <nPUOGd5_-QuZTUXhGdmJ03Bri58JI0SeYVcBLnJG4aFuqobd5i1RUBVoi4CNP3VGg5oBdz5LAGdwHERxtMwXJyHPyVxJz4UpiBuFiA5NlkA=@emersion.fr>
 <2wq8ssA4KblYH5JfC8KxeWWoYPleN_BcH6wSZ92tkOixbiU5k2ZU_lS4lO0awCCeomkdjsEoVlUmAH7aaaR2n-bdLKu1AaSar_JW78Kw4Ik=@emersion.fr>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <2wq8ssA4KblYH5JfC8KxeWWoYPleN_BcH6wSZ92tkOixbiU5k2ZU_lS4lO0awCCeomkdjsEoVlUmAH7aaaR2n-bdLKu1AaSar_JW78Kw4Ik=@emersion.fr>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX161.cuchost.com
 (172.16.6.71)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF3483F0A5
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.61 / 15.00];
	BAYES_HAM(-2.92)[99.66%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	DMARC_NA(0.00)[starfivetech.com];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[180.164.60.184:received,61.152.239.71:from,175.102.18.54:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BBVVYKNIX2DHQ5LAVWRTLNR6G6LCKG22
X-Message-ID-Hash: BBVVYKNIX2DHQ5LAVWRTLNR6G6LCKG22
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetec
 h.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBVVYKNIX2DHQ5LAVWRTLNR6G6LCKG22/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

b2vvvIwgSSB3aWxsIGRvIHRoaXMgaW4gbXkgbmV4dCBwYXRjaA0KVGhhbmtzIHlvdXIgYWR2aWNl
IQ0KDQpPbiAyMDIzLzEwLzI1IDIzOjQ0LCBTaW1vbiBTZXIgd3JvdGU6DQo+ICBpdCBzZWVtcyBs
aWtlIHlvdSBjb3VsZCBzdGFydCB3aXRoIGp1c3Qgc2ltcGxlDQo+IGVudW1lcmF0ZWQgbW9kaWZp
ZXJzIGxpa2UgSW50ZWwgZG9lcywgYW5kIHRoZW4gb25seSBzd2l0Y2ggdG8gbW9yZQ0KPiBjb21w
bGljYXRlZCBsb2dpYyB3aXRoIG1hY3JvcyBhbmQgZmllbGRzIGlmIHRoZXJlIGlzIGFuIGFjdHVh
bCBuZWVkIGluDQo+IHRoZSBmdXR1cmUuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
