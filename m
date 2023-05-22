Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F9F70B8D6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 11:25:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02F6B43D33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 09:25:37 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lists.linaro.org (Postfix) with ESMTP id D72053EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:25:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.102 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:54090.881126371
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id AE497100219;
	Mon, 22 May 2023 17:25:25 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id 0e1dd0b287294d5aa57c52fa68135f30 for kernel@xen0n.name;
	Mon, 22 May 2023 17:25:27 CST
X-Transaction-ID: 0e1dd0b287294d5aa57c52fa68135f30
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
Date: Mon, 22 May 2023 17:25:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sui Jingfeng <suijingfeng@loongson.cn>, Li Yi <liyi@loongson.cn>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
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
X-Rspamd-Queue-Id: D72053EF21
X-Spamd-Bar: -
Message-ID-Hash: X5ATEG66O3UMXZCERSM5LW46XUECVZHF
X-Message-ID-Hash: X5ATEG66O3UMXZCERSM5LW46XUECVZHF
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5ATEG66O3UMXZCERSM5LW46XUECVZHF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiArICogTFMz
QTQwMDAvTFMzQTUwMDAvTFMzQTYwMDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoIG9uLWJv
YXJkIA0KPj4gdmlkZW8gUkFNDQo+PiArICogdHlwaWNhbGx5LiBXaGlsZSBMUzJLMDUwMC9MUzJL
MTAwMC9MUzJLMjAwMCBhcmUgbG93IGNvc3QgU29DcyANCj4+IHdoaWNoIHNoYXJlDQo+PiArICog
dGhlIHN5c3RlbSBSQU0gYXMgdmlkZW8gUkFNLCB0aGV5IGRvbid0IGhhcyBhIGRlZGlhY2F0ZWQg
VlJBTS4NCj4NCj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhlZCB3aXRoICJM
UyIsIHNvICJMb29uZ3NvbiANCj4gM0E0MDAwLzNBNTAwMC8zQTYwMDAiLg0KPg0KSGVyZSBpcyBi
ZWNhdXNlIHdoZW4geW91IGRvIHByb2dyYW1taW5nLCB2YXJpYWJsZSBuYW1lIHNob3VsZCBwcmVm
aXggDQp3aXRoIGxldHRlcnMuDQoNCj4gQWxzbyB0aGUgZGVzY3JpcHRpb24gYWJvdXQgdGhlIExv
b25nc29uIDJLIHNlcmllcyBpcyBhIGJpdCBpcnJlbGV2YW50IA0KPiAod2UncmUgZm9jdXNpbmcg
b24gVlJBTSBoZXJlKSBzbyB5b3UgY291bGQgc2ltcGxpZnkgdGhlIHNlbnRlbmNlIGEgYml0LiAN
Cg0KV2UgY291bGQgcmVzZXJ2ZSBwYXJ0IG9mIHN5c3RlbSBSQU0gYXMgVlJBTSBmb3IgTG9vbmdz
b24gMksgc2VyaWVzIFNvQy4NCg0KRWl0aGVyIHJlc2VydmVkIHdpdGggJ29mIHJlc2VydmUgbWVt
b3J5JyBvcsKgIHJlc2VydmVkIGJ5IHRoZSBmaXJtd2FyZS4NCg0KVGhlIHJlc2VydmUgcmFtIHdp
bGwgbm90IGFjY2Vzc2libGUgYnkga2VybmVsIGl0c2VsZiBpdCB0aGlzIGNhc2UsIGFuZCANCmNh
biBzdGlsbCBiZSBtYW5hZ2VkIGJ5IHR0bS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
