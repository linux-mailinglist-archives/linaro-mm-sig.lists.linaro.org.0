Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 557B970F314
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:38:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D5FA41406
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:38:07 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id E445A3EF52
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 10:05:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b="J751M/8B";
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684749914; bh=gBu7lz+oDUt/IwzcEB7fcSzmars/b45xG6tE1x+VUus=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J751M/8BEdo78Vp98AmBWcf9NvHoQ/Btar2GkjquttGn/GmLdifpIoXyY6yjgIbYF
	 1Njz5d9nYQOaxOngFs+gwZ9l4V2OJPsYu1UzxJtXLpo4OvMX6R9Ig1ndYZayI4q8SR
	 mPF2uqDhb+kOSgm2zX1/jhozqy2tJ2AIOr0u36E8=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 63F96600A6;
	Mon, 22 May 2023 18:05:13 +0800 (CST)
Message-ID: <331e7baa-a83b-b0c9-37f7-0e8e39187df4@xen0n.name>
Date: Mon, 22 May 2023 18:05:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.11.0
Content-Language: en-US
To: Sui Jingfeng <15330273260@189.cn>,
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
 <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
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
	RCPT_COUNT_TWELVE(0.00)[19];
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
X-Rspamd-Queue-Id: E445A3EF52
X-Spamd-Bar: -----
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AXHGE4LCYZNS64EYB724X6IQSYOJJBNN
X-Message-ID-Hash: AXHGE4LCYZNS64EYB724X6IQSYOJJBNN
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:51 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXHGE4LCYZNS64EYB724X6IQSYOJJBNN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE3OjQ5LCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIyIDE3OjI4LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+IE9uIDIwMjMvNS8yMiAxNzoy
NSwgU3VpIEppbmdmZW5nIHdyb3RlOg0KPj4+IEhpLA0KPj4+DQo+Pj4gT24gMjAyMy81LzIxIDIw
OjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+Pj4+ICsgKiBMUzNBNDAwMC9MUzNBNTAwMC9MUzNB
NjAwMCBDUFUsIHRoZXkgYXJlIGVxdWlwcGVkIHdpdGggb24tYm9hcmQgDQo+Pj4+PiB2aWRlbyBS
QU0NCj4+Pj4+ICsgKiB0eXBpY2FsbHkuIFdoaWxlIExTMkswNTAwL0xTMksxMDAwL0xTMksyMDAw
IGFyZSBsb3cgY29zdCBTb0NzIA0KPj4+Pj4gd2hpY2ggc2hhcmUNCj4+Pj4+ICsgKiB0aGUgc3lz
dGVtIFJBTSBhcyB2aWRlbyBSQU0sIHRoZXkgZG9uJ3QgaGFzIGEgZGVkaWFjYXRlZCBWUkFNLg0K
Pj4+Pg0KPj4+PiBDUFUgbW9kZWxzIGFyZSBub3QgdHlwaWNhbGx5IHByZWZpeGVkIHdpdGggIkxT
Iiwgc28gIkxvb25nc29uIA0KPj4+PiAzQTQwMDAvM0E1MDAwLzNBNjAwMCIuDQo+Pj4+DQo+Pj4g
SGVyZSBpcyBiZWNhdXNlIHdoZW4geW91IGRvIHByb2dyYW1taW5nLCB2YXJpYWJsZSBuYW1lIHNo
b3VsZCBwcmVmaXggDQo+Pj4gd2l0aCBsZXR0ZXJzLg0KPj4NCj4+IENvbW1pdCBtZXNzYWdlcywg
Y29tbWVudHMsIGFuZCBsb2cgbWVzc2FnZXMgZXRjLiBhcmUgbmF0dXJhbCBsYW5ndWFnZSwgDQo+
PiBzbyBpdCdzIGJldHRlciB0byB0cmVhdCB0aGVtIGRpZmZlcmVudGx5LiBObyBwcm9ibGVtIHRv
IGtlZXAgY29kZSANCj4+IGFzLWlzIElNTy4NCj4+DQo+IFRoZW4geW91IGdldCB0d28gbmFtZSBm
b3IgYSBzaW5nbGUgY2hpcCzCoCB0YWtlwqAgTFM3QTEwMDAgYXMgYW4gZXhhbXBsZS4NCj4gDQo+
IFlvdSBuYW1lIGl0IGFzIExvb25nc29uIDdBMTAwMCBpbiBjb21taXQgbWVzc2FnZSzCoCBhbmQg
dGhlbiB5b3UgaGF2ZSB0byANCj4gZGVmaW5lIGFub3RoZXIgbmFtZSBpbiB0aGUgY29kZSzCoCBz
YXkgTFM3QTEwMDAuDQo+IA0KPiAiTG9vbmdzb24gN0ExMDAwIiBpcyB0b28gbG9uZyzCoCBub3Qg
YXMgY29tcGFjdCBhcyBMUzdBMTAwMC4NCj4gDQo+IFRoaXMgYWxzbyBhdm9pZCBiaW5kIHRoZSBj
b21wYW55IG5hbWUgdG8gYSBzcGVjaWZpYyBwcm9kdWN0LCBiZWNhdXNlIGEgDQo+IGNvbXBhbnkg
Y2FuIHByb2R1Y2UgbWFueSBwcm9kdWN0Lg0KDQpOYWgsIHRoZSBleGlzdGluZyBjb252ZW50aW9u
IGlzICJMUzdYeHh4eCIgZm9yIGJyaWRnZXMgYW5kICJMb29uZ3NvbiANCjNBeHh4eCIgZm9yIENQ
VXMgKFNvQ3MgbGlrZSAySyBmYWxsIHVuZGVyIHRoaXMgY2F0ZWdvcnkgdG9vKS4gSXQncyANCmJl
dHRlciB0byBzdGljayB3aXRoIGV4aXN0aW5nIHByYWN0aWNlIHNvIGl0IHdvdWxkIGJlIGZhbWls
aWFyIHRvIA0KbG9uZy10aW1lIExvb25nc29uL0xvb25nQXJjaCBkZXZlbG9wZXJzLCBidXQgSSBw
ZXJzb25hbGx5IGRvbid0IHRoaW5rIGl0IA0Kd2lsbCBoYW1wZXIgdW5kZXJzdGFuZGluZyBpZiB5
b3UgZmVlbCBsaWtlIGRvaW5nIG90aGVyd2lzZS4NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVlcnVp
DQoNCkxpbnV4L0xvb25nQXJjaCBtYWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xvb25nYXJjaC8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
