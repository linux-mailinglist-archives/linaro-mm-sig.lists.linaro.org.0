Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDC376B78E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 16:33:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CC773ED52
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 14:33:58 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id BF32C3ED52
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 14:33:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn;
	dmarc=none
Received: from loongson.cn (unknown [10.20.42.43])
	by gateway (Coremail) with SMTP id _____8CxfOrNF8lkhiYOAA--.6207S3;
	Tue, 01 Aug 2023 22:33:49 +0800 (CST)
Received: from [10.20.42.43] (unknown [10.20.42.43])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8DxJ83MF8lkyBdEAA--.44246S3;
	Tue, 01 Aug 2023 22:33:48 +0800 (CST)
Message-ID: <9f6ff24b-7e58-2dde-3b6d-eda9be1944ae@loongson.cn>
Date: Tue, 1 Aug 2023 22:33:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: suijingfeng <suijingfeng@loongson.cn>
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20230801101030.2040-6-keith.zhao@starfivetech.com>
 <6b776c23-9cc1-5a7d-0a85-bd7eb42e847d@loongson.cn>
Content-Language: en-US
In-Reply-To: <6b776c23-9cc1-5a7d-0a85-bd7eb42e847d@loongson.cn>
X-CM-TRANSID: AQAAf8DxJ83MF8lkyBdEAA--.44246S3
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29K
	BjDU0xBIdaVrnRJUUUmFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26c
	xKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vE
	j48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxV
	AFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x02
	67AKxVWxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44
	I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JF0_Jw1lYx0Ex4A2
	jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lc7I2V7IY0V
	AS07AlzVAYIcxG8wCF04k20xvY0x0EwIxGrwCF54CYxVAaw2AFwI0_JF0_Jw1l4c8EcI0E
	c7CjxVAaw2AFwI0_Jw0_GFyl4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAFwI0_Wr
	v_ZF1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
	17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_JFI_Gr1lIxAIcV
	C0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
	6I8E87Iv67AKxVWxJVW8Jr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
	nxnUUI43ZEXa7IU1WEEUUUUUU==
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BF32C3ED52
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.40 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	BAYES_HAM(-0.90)[86.03%];
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
Message-ID-Hash: KP2T6F4IEC5NSRBRWJU5TQ7JXI6N7GCH
X-Message-ID-Hash: KP2T6F4IEC5NSRBRWJU5TQ7JXI6N7GCH
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, Shengyang Chen <shengyang.chen@starfivetech.com>, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Andersson <andersson@kernel.org>, Changhuang Liang <changhuang.liang@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v1,v1,5/7] drm/vs: Register DRM device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KP2T6F4IEC5NSRBRWJU5TQ7JXI6N7GCH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvOC8xIDIxOjQwLCBzdWlqaW5nZmVuZyB3cm90ZToNCj4+ICsjZGVmaW5l
IERSVl9EQVRFwqDCoMKgICIyMDIzMDUxNjEiDQo+DQo+IFRoZSBkYXRlIGlzIG5vdCBjb3JyZWN0
IGhlcmUsIGdlbmVyYWxseSBpdCBzaG91bGQgaGF2ZSA4IG51bWJlcnMsDQo+DQo+IHdoaWxlIHlv
dSBoYXZlIDkgZGlnaXRzLCB3aHkgeW91IGFyZSBzbyBzcGVjaWFsID8gDQoNCg0KSSdtIGFsc28g
aW50ZXJlc3RpbmcgaW4gUklTQ1YgYXJjaCwgSSBnb3QgYXR0cmFjdGVkIGJ5IHlvdXIgcGF0Y2gu
DQoNCkkganVzdCB3YW50IHRvIGpvaW4gaW50byB0aGUgZGlzY3Vzc2lvbiBhdCBoZXJlIChhdCBt
eSBzcGFyZSB0aW1lKSwNCg0KU28gd2hlbiB5b3Ugc2VlIG15IGNvbW1lbnRzLCBJIGhvcGluZyB0
aGF0IHlvdSB3aWxsIG5vdCBpbnRlcnByZXQgaXQgYXMgDQpob3N0aWxpdHkuDQoNCldlbGNvbWUg
Y29udHJpYnV0aW5nLiA6LSkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
