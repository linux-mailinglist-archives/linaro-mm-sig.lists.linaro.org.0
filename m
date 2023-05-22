Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D923670B954
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 11:49:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CFF5443D3B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 09:49:56 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lists.linaro.org (Postfix) with ESMTP id 0DAFC3EE6A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:49:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.102 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:34704.564609069
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id C1E0E100210;
	Mon, 22 May 2023 17:49:48 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xwndj with ESMTP id 0f677f17687045fdbb6736c1fd24ac9b for kernel@xen0n.name;
	Mon, 22 May 2023 17:49:50 CST
X-Transaction-ID: 0f677f17687045fdbb6736c1fd24ac9b
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
Date: Mon, 22 May 2023 17:49:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>, Sui Jingfeng <15330273260@189.cn>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
 <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.989];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0DAFC3EE6A
X-Spamd-Bar: -
Message-ID-Hash: JOBJWHEI4REXAE3ADEZMJQSSEO6K2NRE
X-Message-ID-Hash: JOBJWHEI4REXAE3ADEZMJQSSEO6K2NRE
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JOBJWHEI4REXAE3ADEZMJQSSEO6K2NRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMiAxNzoyOCwgV0FORyBYdWVydWkgd3JvdGU6DQo+IE9uIDIwMjMv
NS8yMiAxNzoyNSwgU3VpIEppbmdmZW5nIHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gT24gMjAyMy81
LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+Pj4gKyAqIExTM0E0MDAwL0xTM0E1MDAw
L0xTM0E2MDAwIENQVSwgdGhleSBhcmUgZXF1aXBwZWQgd2l0aCBvbi1ib2FyZCANCj4+Pj4gdmlk
ZW8gUkFNDQo+Pj4+ICsgKiB0eXBpY2FsbHkuIFdoaWxlIExTMkswNTAwL0xTMksxMDAwL0xTMksy
MDAwIGFyZSBsb3cgY29zdCBTb0NzIA0KPj4+PiB3aGljaCBzaGFyZQ0KPj4+PiArICogdGhlIHN5
c3RlbSBSQU0gYXMgdmlkZW8gUkFNLCB0aGV5IGRvbid0IGhhcyBhIGRlZGlhY2F0ZWQgVlJBTS4N
Cj4+Pg0KPj4+IENQVSBtb2RlbHMgYXJlIG5vdCB0eXBpY2FsbHkgcHJlZml4ZWQgd2l0aCAiTFMi
LCBzbyAiTG9vbmdzb24gDQo+Pj4gM0E0MDAwLzNBNTAwMC8zQTYwMDAiLg0KPj4+DQo+PiBIZXJl
IGlzIGJlY2F1c2Ugd2hlbiB5b3UgZG8gcHJvZ3JhbW1pbmcsIHZhcmlhYmxlIG5hbWUgc2hvdWxk
IHByZWZpeCANCj4+IHdpdGggbGV0dGVycy4NCj4NCj4gQ29tbWl0IG1lc3NhZ2VzLCBjb21tZW50
cywgYW5kIGxvZyBtZXNzYWdlcyBldGMuIGFyZSBuYXR1cmFsIGxhbmd1YWdlLCANCj4gc28gaXQn
cyBiZXR0ZXIgdG8gdHJlYXQgdGhlbSBkaWZmZXJlbnRseS4gTm8gcHJvYmxlbSB0byBrZWVwIGNv
ZGUgDQo+IGFzLWlzIElNTy4NCj4NClRoZW4geW91IGdldCB0d28gbmFtZSBmb3IgYSBzaW5nbGUg
Y2hpcCzCoCB0YWtlwqAgTFM3QTEwMDAgYXMgYW4gZXhhbXBsZS4NCg0KWW91IG5hbWUgaXQgYXMg
TG9vbmdzb24gN0ExMDAwIGluIGNvbW1pdCBtZXNzYWdlLMKgIGFuZCB0aGVuIHlvdSBoYXZlIHRv
IA0KZGVmaW5lIGFub3RoZXIgbmFtZSBpbiB0aGUgY29kZSzCoCBzYXkgTFM3QTEwMDAuDQoNCiJM
b29uZ3NvbiA3QTEwMDAiIGlzIHRvbyBsb25nLMKgIG5vdCBhcyBjb21wYWN0IGFzIExTN0ExMDAw
Lg0KDQpUaGlzIGFsc28gYXZvaWQgYmluZCB0aGUgY29tcGFueSBuYW1lIHRvIGEgc3BlY2lmaWMg
cHJvZHVjdCwgYmVjYXVzZSBhIA0KY29tcGFueSBjYW4gcHJvZHVjZSBtYW55IHByb2R1Y3QuDQoN
Cj4+PiBBbHNvIHRoZSBkZXNjcmlwdGlvbiBhYm91dCB0aGUgTG9vbmdzb24gMksgc2VyaWVzIGlz
IGEgYml0IA0KPj4+IGlycmVsZXZhbnQgKHdlJ3JlIGZvY3VzaW5nIG9uIFZSQU0gaGVyZSkgc28g
eW91IGNvdWxkIHNpbXBsaWZ5IHRoZSANCj4+PiBzZW50ZW5jZSBhIGJpdC4gDQo+Pg0KPj4gV2Ug
Y291bGQgcmVzZXJ2ZSBwYXJ0IG9mIHN5c3RlbSBSQU0gYXMgVlJBTSBmb3IgTG9vbmdzb24gMksg
c2VyaWVzIFNvQy4NCj4+DQo+PiBFaXRoZXIgcmVzZXJ2ZWQgd2l0aCAnb2YgcmVzZXJ2ZSBtZW1v
cnknIG9ywqAgcmVzZXJ2ZWQgYnkgdGhlIGZpcm13YXJlLg0KPj4NCj4NCj4gV2hhdCdzIGFuICJv
ZiByZXNlcnZlIG1lbW9yeSI/IElzIGl0ICJEZXZpY2VUcmVlLXJlc2VydmVkIj8NCj4NCj4+IFRo
ZSByZXNlcnZlIHJhbSB3aWxsIG5vdCBhY2Nlc3NpYmxlIGJ5IGtlcm5lbCBpdHNlbGYgaXQgdGhp
cyBjYXNlLCANCj4+IGFuZCBjYW4gc3RpbGwgYmUgbWFuYWdlZCBieSB0dG0uDQo+DQo+IE9mIGNv
dXJzZS4gRmVlbCBmcmVlIHRvIHR3ZWFrLg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
