Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C40E70F312
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:37:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AF4C413FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:37:47 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id 01FDF43D11
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:29:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=ff57pByl;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684747740; bh=KkXKslg/Zzd8BjgEV84faQOq6rSzW9m7ilvwkM/8wAQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ff57pBylcjRybXsT25eqJQR1UkB793MTrDEW/8ll1l64wanfRd059GTGtrsoPNCP5
	 iUuhApO8ybo8bxiBeIBPQ9wwRkxnjJvz7E4MEha7K8gyU07YpBCfD8wIzbblmgWI5+
	 /zvTIsbcdlupFPLuw14EL1Nmn4XLhRLB7wsggp24=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 723C0600A6;
	Mon, 22 May 2023 17:28:59 +0800 (CST)
Message-ID: <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name>
Date: Mon, 22 May 2023 17:28:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
To: Sui Jingfeng <15330273260@189.cn>,
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
 <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.28.160.31];
	R_DKIM_ALLOW(-0.20)[xen0n.name:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:37963, ipnet:115.28.128.0/18, country:CN];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	DKIM_TRACE(0.00)[xen0n.name:+];
	DMARC_NA(0.00)[xen0n.name];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 01FDF43D11
X-Spamd-Bar: -----
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DY6NLQRSOYQMRQM33H5WWQ4HYOZTVMRT
X-Message-ID-Hash: DY6NLQRSOYQMRQM33H5WWQ4HYOZTVMRT
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:50 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DY6NLQRSOYQMRQM33H5WWQ4HYOZTVMRT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE3OjI1LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiArICogTFMzQTQwMDAvTFMz
QTUwMDAvTFMzQTYwMDAgQ1BVLCB0aGV5IGFyZSBlcXVpcHBlZCB3aXRoIG9uLWJvYXJkIA0KPj4+
IHZpZGVvIFJBTQ0KPj4+ICsgKiB0eXBpY2FsbHkuIFdoaWxlIExTMkswNTAwL0xTMksxMDAwL0xT
MksyMDAwIGFyZSBsb3cgY29zdCBTb0NzIA0KPj4+IHdoaWNoIHNoYXJlDQo+Pj4gKyAqIHRoZSBz
eXN0ZW0gUkFNIGFzIHZpZGVvIFJBTSwgdGhleSBkb24ndCBoYXMgYSBkZWRpYWNhdGVkIFZSQU0u
DQo+Pg0KPj4gQ1BVIG1vZGVscyBhcmUgbm90IHR5cGljYWxseSBwcmVmaXhlZCB3aXRoICJMUyIs
IHNvICJMb29uZ3NvbiANCj4+IDNBNDAwMC8zQTUwMDAvM0E2MDAwIi4NCj4+DQo+IEhlcmUgaXMg
YmVjYXVzZSB3aGVuIHlvdSBkbyBwcm9ncmFtbWluZywgdmFyaWFibGUgbmFtZSBzaG91bGQgcHJl
Zml4IA0KPiB3aXRoIGxldHRlcnMuDQoNCkNvbW1pdCBtZXNzYWdlcywgY29tbWVudHMsIGFuZCBs
b2cgbWVzc2FnZXMgZXRjLiBhcmUgbmF0dXJhbCBsYW5ndWFnZSwgDQpzbyBpdCdzIGJldHRlciB0
byB0cmVhdCB0aGVtIGRpZmZlcmVudGx5LiBObyBwcm9ibGVtIHRvIGtlZXAgY29kZSBhcy1pcyBJ
TU8uDQoNCj4+IEFsc28gdGhlIGRlc2NyaXB0aW9uIGFib3V0IHRoZSBMb29uZ3NvbiAySyBzZXJp
ZXMgaXMgYSBiaXQgaXJyZWxldmFudCANCj4+ICh3ZSdyZSBmb2N1c2luZyBvbiBWUkFNIGhlcmUp
IHNvIHlvdSBjb3VsZCBzaW1wbGlmeSB0aGUgc2VudGVuY2UgYSBiaXQuIA0KPiANCj4gV2UgY291
bGQgcmVzZXJ2ZSBwYXJ0IG9mIHN5c3RlbSBSQU0gYXMgVlJBTSBmb3IgTG9vbmdzb24gMksgc2Vy
aWVzIFNvQy4NCj4gDQo+IEVpdGhlciByZXNlcnZlZCB3aXRoICdvZiByZXNlcnZlIG1lbW9yeScg
b3LCoCByZXNlcnZlZCBieSB0aGUgZmlybXdhcmUuDQo+IA0KDQpXaGF0J3MgYW4gIm9mIHJlc2Vy
dmUgbWVtb3J5Ij8gSXMgaXQgIkRldmljZVRyZWUtcmVzZXJ2ZWQiPw0KDQo+IFRoZSByZXNlcnZl
IHJhbSB3aWxsIG5vdCBhY2Nlc3NpYmxlIGJ5IGtlcm5lbCBpdHNlbGYgaXQgdGhpcyBjYXNlLCBh
bmQgDQo+IGNhbiBzdGlsbCBiZSBtYW5hZ2VkIGJ5IHR0bS4NCg0KT2YgY291cnNlLiBGZWVsIGZy
ZWUgdG8gdHdlYWsuDQoNCi0tIA0KV0FORyAieGVuMG4iIFh1ZXJ1aQ0KDQpMaW51eC9Mb29uZ0Fy
Y2ggbWFpbGluZyBsaXN0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sb29uZ2FyY2gvDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
