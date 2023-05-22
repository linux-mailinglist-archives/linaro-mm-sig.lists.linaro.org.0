Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A6870F2F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:36:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF60D4142D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:36:46 +0000 (UTC)
Received: from mailbox.box.xen0n.name (mail.xen0n.name [115.28.160.31])
	by lists.linaro.org (Postfix) with ESMTPS id EA18F43D2B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:05:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=xen0n.name header.s=mail header.b=AwmSSYYo;
	spf=pass (lists.linaro.org: domain of kernel@xen0n.name designates 115.28.160.31 as permitted sender) smtp.mailfrom=kernel@xen0n.name;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xen0n.name; s=mail;
	t=1684746332; bh=BvafpoMALSkBY+N8iyu1yI8+hZDb+7ttS5xnPbBUstI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AwmSSYYozspEZwRyLCQRnSMqjHss6FwHp3xYrfmKjSu/L4Bp17OT38n8gVW7qJiN4
	 CIoFpp+bBZXn4w4KSGjMKkp3fQ/8xc6dqdLw9gMMfVCuOGv76RLKKICf/2qjlxIxAp
	 iVpkubxEQYDK8hUtGbLFQTx/CkddvAp+/mBgGDcI=
Received: from [100.100.57.122] (unknown [58.34.185.106])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mailbox.box.xen0n.name (Postfix) with ESMTPSA id 8E4F6600A6;
	Mon, 22 May 2023 17:05:31 +0800 (CST)
Message-ID: <588a03c7-ae1f-f449-752d-aa94cc1ab491@xen0n.name>
Date: Mon, 22 May 2023 17:05:30 +0800
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
 <2f701944-588c-3f56-06f3-abcbbf12be1e@189.cn>
From: WANG Xuerui <kernel@xen0n.name>
In-Reply-To: <2f701944-588c-3f56-06f3-abcbbf12be1e@189.cn>
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
X-Rspamd-Queue-Id: EA18F43D2B
X-Spamd-Bar: -----
X-MailFrom: kernel@xen0n.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TWQAXNIKDO3S72NPTFCH4N6K4STQCLEY
X-Message-ID-Hash: TWQAXNIKDO3S72NPTFCH4N6K4STQCLEY
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:03 +0000
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TWQAXNIKDO3S72NPTFCH4N6K4STQCLEY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMy81LzIyIDE2OjUxLCBTdWkgSmluZ2Zlbmcgd3JvdGU6DQo+IEhpLA0KPiANCj4gT24g
MjAyMy81LzIxIDIwOjIxLCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+DQo+Pj4gPHNuaXA+DQo+Pj4g
Kw0KPj4+ICtzdGF0aWMgdm9pZCBsc2RjX2NydGMwX3NvZnRfcmVzZXQoc3RydWN0IGxzZGNfY3J0
YyAqbGNydGMpDQo+Pj4gK3sNCj4+PiArwqDCoMKgIHN0cnVjdCBsc2RjX2RldmljZSAqbGRldiA9
IGxjcnRjLT5sZGV2Ow0KPj4+ICvCoMKgwqAgdTMyIHZhbDsNCj4+PiArDQo+Pj4gK8KgwqDCoCB2
YWwgPSBsc2RjX3JyZWczMihsZGV2LCBMU0RDX0NSVEMwX0NGR19SRUcpOw0KPj4+ICsNCj4+PiAr
wqDCoMKgIHZhbCAmPSBDRkdfVkFMSURfQklUU19NQVNLOw0KPj4+ICsNCj4+PiArwqDCoMKgIC8q
IHNvZnQgcmVzZXQgYml0LCBhY3RpdmUgbG93ICovDQo+Pj4gK8KgwqDCoCB2YWwgJj0gfkNGR19S
RVNFVF9OOw0KPj4+ICsNCj4+PiArwqDCoMKgIHZhbCAmPSB+Q0ZHX1BJWF9GTVRfTUFTSzsNCj4+
PiArDQo+Pj4gK8KgwqDCoCBsc2RjX3dyZWczMihsZGV2LCBMU0RDX0NSVEMwX0NGR19SRUcsIHZh
bCk7DQo+Pj4gKw0KPj4+ICvCoMKgwqAgdWRlbGF5KDUpOw0KPj4+ICsNCj4+PiArwqDCoMKgIHZh
bCB8PSBDRkdfUkVTRVRfTiB8IExTRENfUEZfWFJHQjg4ODggfCBDRkdfT1VUUFVUX0VOQUJMRTsN
Cj4+PiArDQo+Pj4gK8KgwqDCoCBsc2RjX3dyZWczMihsZGV2LCBMU0RDX0NSVEMwX0NGR19SRUcs
IHZhbCk7DQo+Pj4gKw0KPj4+ICvCoMKgwqAgbWRlbGF5KDIwKTsNCj4+PiArfQ0KPj4+ICsNCj4+
PiArc3RhdGljIHZvaWQgbHNkY19jcnRjMV9zb2Z0X3Jlc2V0KHN0cnVjdCBsc2RjX2NydGMgKmxj
cnRjKQ0KPj4+ICt7DQo+Pj4gK8KgwqDCoCBzdHJ1Y3QgbHNkY19kZXZpY2UgKmxkZXYgPSBsY3J0
Yy0+bGRldjsNCj4+PiArwqDCoMKgIHUzMiB2YWw7DQo+Pj4gKw0KPj4+ICvCoMKgwqAgdmFsID0g
bHNkY19ycmVnMzIobGRldiwgTFNEQ19DUlRDMV9DRkdfUkVHKTsNCj4+PiArDQo+Pj4gK8KgwqDC
oCB2YWwgJj0gQ0ZHX1ZBTElEX0JJVFNfTUFTSzsNCj4+PiArDQo+Pj4gK8KgwqDCoCAvKiBzb2Z0
IHJlc2V0IGJpdCwgYWN0aXZlIGxvdyAqLw0KPj4+ICvCoMKgwqAgdmFsICY9IH5DRkdfUkVTRVRf
TjsNCj4+PiArDQo+Pj4gK8KgwqDCoCB2YWwgJj0gfkNGR19QSVhfRk1UX01BU0s7DQo+Pj4gKw0K
Pj4+ICvCoMKgwqAgbHNkY193cmVnMzIobGRldiwgTFNEQ19DUlRDMV9DRkdfUkVHLCB2YWwpOw0K
Pj4+ICsNCj4+PiArwqDCoMKgIHVkZWxheSg1KTsNCj4+PiArDQo+Pj4gK8KgwqDCoCB2YWwgfD0g
Q0ZHX1JFU0VUX04gfCBMU0RDX1BGX1hSR0I4ODg4IHwgQ0ZHX09VVFBVVF9FTkFCTEU7DQo+Pj4g
Kw0KPj4+ICvCoMKgwqAgbHNkY193cmVnMzIobGRldiwgTFNEQ19DUlRDMV9DRkdfUkVHLCB2YWwp
Ow0KPj4+ICsNCj4+PiArwqDCoMKgIG1zbGVlcCgyMCk7DQo+Pg0KPj4gU28gbWFueSBtYWdpYyBz
bGVlcHMgd2l0aG91dCBkb2N1bWVudGF0aW9uPw0KPj4NCj4gSXQgaXMganVzdCB0aGF0IHlvdSBz
aG91bGQgd2FpdCB0aGUgZGV2aWNlIGZvciBhIHdoaWxlIGJlZm9yZSBpdCBjYW4gDQo+IHJlYWN0
aW9uIHdoZW4gZG9pbmcgdGhlIHNvZnQgcmVzZXQuDQo+IA0KPiBJIHRoaW5rIHRoaXMgaXMgZW5n
aW5lZXJpbmcuLi4NCg0KQXMgYW4gZW5naW5lZXIgbXlzZWxmLCBJIGZ1bGx5IGNvbmN1ciB3aXRo
IHRoaXMsIGJ1dCBJIG1haW5seSB3YW50ZWQgDQpzb21lIGV4cGxhbmF0aW9uIGFzIHRvICJ3aHkg
NSB0aGVyZT8gd2h5IDIwIGhlcmU/IHdoeSA5IHRoZXJlPyIgLS0gd2hlcmUgDQpkaWQgYWxsIHRo
ZSBkaXNjcmV0ZSB2YWx1ZXMgY29tZSBmcm9tLCBpbXBsaWVkIGJ5IEhETCBvciBmb3VuZCBvdXQg
YnkgDQpleHBlcmltZW50YXRpb25zPyBDYW4gdGhlc2UgYmUgZXh0cmFjdGVkIHRvIHByb3Blcmx5
IG5hbWVkIGNvbnN0YW50cz8gDQpDYW4gc29tZSBvZiB0aGUgdmFsdWVzIGdldCBjb2FsZXNjZWQg
aW50byBvbmUgd2l0aG91dCBoYXJtaW5nIA0KZnVuY3Rpb25hbGl0eT8gQ2FuIHNvbWUgb2YgdGhl
bSBnZXQgc2hvcnRlcj8gLS0gcXVlc3Rpb25zIGxpa2UgdGhpcy4NCg0KPiA8c25pcD4NCj4+PiAr
DQo+Pj4gKy8qIEFsbCBsb29uZ3NvbiBkaXNwbGF5IGNvbnRyb2xsZXIgc3VwcG9ydCBzY2Fub3V0
IHBvc2l0aW9uIGhhcmR3YXJlICovDQo+Pg0KPj4gQ29tbWl0IG1lc3NhZ2UgaW1wbGllcyBvbmx5
IDdBMjAwMCsgTFNEQyBJUHMgaGF2ZSB0aGUgInNjYW5vdXQgDQo+PiBwb3NpdGlvbiByZWNvcmRl
cnMiLiBFaXRoZXIgdGhhdCBwYXJ0IG9yIHRoaXMgY29kZSB3b3VsZCBuZWVkIHR3ZWFraW5nLi4u
IA0KPiANCj4gQm90aCBMUzdBMjAwMCBhbmQgTFM3QTEwMDAgaGF2ZSB0aGUgc2Nhbm91dCBwb3Np
dGlvbiByZWNvcmRlcnMgaGFyZHdhcmUuDQo+IA0KPiBQcmVjaW91c2x5LCBkYXRhc2hlZXQgb2Yg
TFM3QTEwMDAgZGlkbid0IHRvbGQgdXMgaWYgaXQgc3VwcG9ydCB0aGlzIA0KPiBmZWF0dXJlLg0K
PiANCj4gSSB3aWxsIGFkanVzdCB0aGUgY29tbWl0IG1lc3NhZ2UgYXQgbmV4dCB2ZXJzaW9uLCB0
aGUgY29kZSBkb2Vzbid0IG5lZWQgDQo+IGNoYW5nZS4NCg0KVGhhdCdzIGZpbmUsIHRoZSBpbnRl
bnQgaXMgYWx3YXlzIG1ha2luZyB0aGUgY29kZSBtb3JlIGFwcHJvYWNoYWJsZSBhbmQgDQptYWlu
dGFpbmFibGUuIFRoYW5rcy4NCg0KLS0gDQpXQU5HICJ4ZW4wbiIgWHVlcnVpDQoNCkxpbnV4L0xv
b25nQXJjaCBtYWlsaW5nIGxpc3Q6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
