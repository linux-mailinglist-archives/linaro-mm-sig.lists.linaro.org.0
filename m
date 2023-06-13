Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA15B72DDB9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 11:32:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B624344232
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 09:32:21 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id 979A83EEB2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 09:32:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn
Received: from loongson.cn (unknown [10.20.42.43])
	by gateway (Coremail) with SMTP id _____8AxHuuVN4hk8Y0EAA--.9713S3;
	Tue, 13 Jun 2023 17:32:05 +0800 (CST)
Received: from [10.20.42.43] (unknown [10.20.42.43])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8AxJeSRN4hkRNAYAA--.5565S3;
	Tue, 13 Jun 2023 17:32:02 +0800 (CST)
Message-ID: <f0e88e6d-b2bf-8bff-0cbd-8d864391adf4@loongson.cn>
Date: Tue, 13 Jun 2023 17:32:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Maxime Ripard <mripard@kernel.org>
References: <20230520105718.325819-1-15330273260@189.cn>
 <d4e647d8-294c-abd7-40c6-37381796203d@loongson.cn>
 <a23d6mgl4fbfa4ucgjvwgw7l3somxo4tkhit7ygy55fldlum56@vm3tyjdsx24l>
 <d2f744b6-e4c9-d1b5-d4ca-470b801c670d@189.cn>
 <hvfr6qkepf6l3ymqtp6vhlneeqihnli7g5v7nzd6rirwleffk6@4ernj6xng5rt>
 <42c54caf-0ab9-a075-b641-9e3e21b2a2f3@loongson.cn>
 <7rbtdidyfpctz22pw2mnt2a6yp34hwp2bdp7usp52ft5mfrfud@nokbyxjip5by>
Content-Language: en-US
From: Sui Jingfeng <suijingfeng@loongson.cn>
Organization: Loongson
In-Reply-To: <7rbtdidyfpctz22pw2mnt2a6yp34hwp2bdp7usp52ft5mfrfud@nokbyxjip5by>
X-CM-TRANSID: AQAAf8AxJeSRN4hkRNAYAA--.5565S3
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBj93XoW7KF1UArW8Kr1rGr48tF1fAFc_yoW8Gr17pr
	WUJF18KF4ktr4fJrZYvw1IqF1Fvwn3JF17uw1qgr17urWqvr13GF4Ikr4YkF9xXrn7Ca17
	tF45XFy3tr45C3gCm3ZEXasCq-sJn29KB7ZKAUJUUUUf529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUPvb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	AVWUtwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwI
	xGrwCYjI0SjxkI62AI1cAE67vIY487MxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAK
	I48JMxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r4a6rW5MI8I3I0E5I8CrV
	AFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCI
	c40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1I6r4UMIIF0xvE2Ix0cI8IcVCY1x0267
	AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_
	Gr1UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa73UjIFyTuYvjxU7p
	nQUUUUU
X-Rspamd-Queue-Id: 979A83EEB2
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:114.242.206.163];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.982];
	FREEMAIL_CC(0.00)[189.cn,linux.intel.com,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.loongnix.cn];
	ASN(0.00)[asn:4808, ipnet:114.242.192.0/18, country:CN];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[114.242.206.163:server fail];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7CZMNPT3IDP6VDG3KFGPSLABLMJLY6FG
X-Message-ID-Hash: 7CZMNPT3IDP6VDG3KFGPSLABLMJLY6FG
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sui Jingfeng <15330273260@189.cn>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Emil Velikov <emil.l.velikov@gmail.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 0/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7CZMNPT3IDP6VDG3KFGPSLABLMJLY6FG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNi8xMyAxNzoyOCwgTWF4aW1lIFJpcGFyZCB3cm90ZToNCj4gT24gVHVl
LCBKdW4gMTMsIDIwMjMgYXQgMDU6MTc6MDBQTSArMDgwMCwgU3VpIEppbmdmZW5nIHdyb3RlOg0K
Pj4gT24gMjAyMy82LzEzIDE3OjEwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPj4+IE9uIFR1ZSwg
SnVuIDEzLCAyMDIzIGF0IDA0OjM1OjQ0UE0gKzA4MDAsIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4+
Pj4gSGksDQo+Pj4+DQo+Pj4+IE9uIDIwMjMvNi8xMyAxNjozMCwgTWF4aW1lIFJpcGFyZCB3cm90
ZToNCj4+Pj4+IEhpLA0KPj4+Pj4NCj4+Pj4+IE9uIE1vbiwgSnVuIDEyLCAyMDIzIGF0IDEwOjU4
OjU0UE0gKzA4MDAsIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4+Pj4+PiBIaSwNCj4+Pj4+Pg0KPj4+
Pj4+DQo+Pj4+Pj4gQW55IGlkZWFzIGZvciB0aGlzIHRyaXZpYWwgREMgZHJpdmVyPyBTb3JyeSBh
Ym91dCBteSBicm9rZW4gRW5nbGlzaC4NCj4+Pj4+Pg0KPj4+Pj4+IFdoYXQgdG8gZG8gbmV4dD8g
U2VuZCBhIG5ldyB2ZXJzaW9uPw0KPj4+Pj4gVGhvbWFzIGFscmVhZHkgdG9sZCB5b3UgdG8gbWVy
Z2UgaXQgaW4gdGhlIHByZXZpb3VzIHZlcnNpb246DQo+Pj4+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9kcmktZGV2ZWwvN2I3NzAyMGYtZDU0My0xM2JmLWUxNzgtYmM0MTZiY2M3MjhkQHN1c2Uu
ZGUvDQo+Pj4+Pg0KPj4+Pj4gU28uLiBkbyB0aGF0Pw0KPj4+PiBZZXMsIHRoYXQgc291bmQgZmlu
ZS4NCj4+Pj4NCj4+Pj4gQnV0IEkgY2FuJ3QgZG8gaXQgbXlzZWxmLCB3b3VsZCB5b3UgbGlrZSB0
byBoZWxwPw0KPj4+IFdoeSBjYW4ndCB5b3UgZG8gaXQgeW91cnNlbGY/DQo+PiBJIGRvbid0IGhh
dmUgYSBjb21taXQgYWNjZXNzIHRvIHRoZSBkcm0tbWlzYywNCj4+DQo+PiBJIHRoaW5rLCBJIGNh
biBnZXQgdGhlIGNvbW1pdCBhY2Nlc3MgaW4gYSBsZXR0ZXIgdGltZSB3aGVuIEkgZ29vZCBlbm91
Z2gsDQo+Pg0KPj4gQnV0IGdldCB0aGUgY29kZSBtZXJnZWQsIGp1c3QgbWVyZ2UgdGhlIGxhdGVz
dCB2ZXJzaW9uIGlzIE9LLg0KPiBMb29rIGF0IHRoZSBsaW5rIGluIFRob21hcyBtYWlsLCBpdCdz
IHRoZSBkb2N1bWVudGF0aW9uIG9uIGhvdyB0byBnZXQNCj4gY29tbWl0IGFjY2Vzcy4NCg0KSSBo
YXZlIGFscmVhZHkgc3VibWl0IHRoZSBjb21taXQgYWNjZXNzwqAgcmVxdWVzdCBbMV0sIHdvdWxk
IHlvdSBsaWtlIHRvIA0KYWdyZWU/DQoNClRoYW5rcyBmb3IgeW91IGFuZCB0aG9tYXMuDQoNClsx
XSANCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9mcmVlZGVza3RvcC9mcmVlZGVza3Rv
cC8tL2lzc3Vlcy82NzMjbm90ZV8xOTMyMDI0DQoNCj4gTWF4aW1lDQoNCi0tIA0KSmluZ2ZlbmcN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
