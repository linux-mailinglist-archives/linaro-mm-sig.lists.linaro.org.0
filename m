Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 578A376B64F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 15:53:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5717043BDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 13:53:47 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id 7DBEB3EF0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 13:53:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn;
	dmarc=none
Received: from loongson.cn (unknown [10.20.42.43])
	by gateway (Coremail) with SMTP id _____8CxNvFjDslkeCEOAA--.33392S3;
	Tue, 01 Aug 2023 21:53:39 +0800 (CST)
Received: from [10.20.42.43] (unknown [10.20.42.43])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8CxriNiDslkGQxEAA--.5911S3;
	Tue, 01 Aug 2023 21:53:38 +0800 (CST)
Message-ID: <00f8d896-7465-384c-dd94-823ad5524e50@loongson.cn>
Date: Tue, 1 Aug 2023 21:53:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: suijingfeng <suijingfeng@loongson.cn>
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20230801101030.2040-6-keith.zhao@starfivetech.com>
 <6b776c23-9cc1-5a7d-0a85-bd7eb42e847d@loongson.cn>
In-Reply-To: <6b776c23-9cc1-5a7d-0a85-bd7eb42e847d@loongson.cn>
X-CM-TRANSID: AQAAf8CxriNiDslkGQxEAA--.5911S3
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBj9xXoW7XFyrXryxJw15Aw17Zr1rKrX_yoW3ArbEyw
	sYqr18W3W8JFWUJF1UtFn3ZryIqryj9as5Jay5Ar15Z3W7Xrsavan8JwnYvr4Ygan7G3Wf
	Grs8ur1fAa47XosvyTuYvTs0mTUanT9S1TB71UUUUjJqnTZGkaVYY2UrUUUUj1kv1TuYvT
	s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
	cSsGvfJTRUUUbqAYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
	vaj40_Wr0E3s1l1IIY67AEw4v_JrI_Jryl8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
	w2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
	WxJVW8Jr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVWxJr0_GcWln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12
	xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26rWY
	6Fy7McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr4
	1lc7I2V7IY0VAS07AlzVAYIcxG8wCY1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxG
	rwCFx2IqxVCFs4IE7xkEbVWUJVW8JwCFI7km07C267AKxVWrXVW3AwC20s026c02F40E14
	v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkG
	c2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVW5JVW7JwCI42IY6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWx
	JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUVU73DU
	UUU
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7DBEB3EF0D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:114.242.206.163];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:4808, ipnet:114.242.192.0/18, country:CN];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,esmil.dk,starfivetech.com,kernel.org,eecs.berkeley.edu,suse.de,edgeble.ai,hotmail.com,sifive.com,dabbelt.com,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 7B2Z3BTQJYHHYMWH3ZEO33F6LZPZZYSP
X-Message-ID-Hash: 7B2Z3BTQJYHHYMWH3ZEO33F6LZPZZYSP
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v1,v1,5/7] drm/vs: Register DRM device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7B2Z3BTQJYHHYMWH3ZEO33F6LZPZZYSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvOC8xIDIxOjQwLCBzdWlqaW5nZmVuZyB3cm90ZToNCj4+ICtpZiBEUk1f
VkVSSVNJTElDT04NCj4+ICsNCj4+ICtjb25maWcgU1RBUkZJVkVfSERNSQ0KPj4gK8KgwqDCoCBi
b29sICJTdGFyZml2ZSBzcGVjaWZpYyBleHRlbnNpb25zIEhETUkiDQo+PiArwqDCoMKgIGhlbHAN
Cj4+ICvCoMKgwqDCoMKgwqAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIFN0YXJGaXZlIFNvQyBz
cGVjaWZpYyBleHRlbnNpb25zDQo+PiArwqDCoMKgwqDCoMKgIGZvciB0aGUgSW5ub3NpbGljb24g
SERNSSBkcml2ZXIuIElmIHlvdSB3YW50IHRvIGVuYWJsZQ0KPj4gK8KgwqDCoMKgwqDCoCBIRE1J
IG9uIEpINzExMCBiYXNlZCBTb0MsIHlvdSBzaG91bGQgc2VsZWN0IHRoaXMgb3B0aW9uLg0KPj4g
Kw0KPj4gK8KgwqDCoMKgwqDCoCBUbyBjb21waWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBj
aG9vc2UgTSBoZXJlLg0KPj4gK2VuZGlmDQo+DQo+IFdoeSBub3QgdXNlIA0KDQogwqBXaHkgbm90
IHVzZSB0aGUgJ2RlcGVuZHMgb24gRFJNX1ZFUklTSUxJQ09OJ8KgIGhlcmUgPw0KDQoNCmBgYA0K
DQpjb25maWcgU1RBUkZJVkVfSERNSQ0KDQogwqDCoCDCoGRlcGVuZHMgb24gRFJNX1ZFUklTSUxJ
Q09ODQogwqDCoCDCoGJvb2wgIlN0YXJmaXZlIHNwZWNpZmljIGV4dGVuc2lvbnMgSERNSSINCg0K
IMKgwqAgwqBoZWxwDQoNCmBgYA0KDQoNCkkgc2VlIHRoZSBLY29uZmlnIG9mIFZDNCB1c2luZyB0
aGUgJ2RlcGVuZHMgb24nLCBhbmQgbW9zdMKgIGRyaXZlciB1c2luZyANCnRoZSAnZGVwZW5kcyBv
bicNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
