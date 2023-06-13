Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C382272E84D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 18:21:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7910D43CCB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jun 2023 16:21:14 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id 87D833EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jun 2023 16:21:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn
Received: from loongson.cn (unknown [10.20.42.43])
	by gateway (Coremail) with SMTP id _____8Dxh+lrl4hkprUEAA--.8160S3;
	Wed, 14 Jun 2023 00:20:59 +0800 (CST)
Received: from [10.20.42.43] (unknown [10.20.42.43])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxTMpql4hkF3QZAA--.63775S3;
	Wed, 14 Jun 2023 00:20:58 +0800 (CST)
Message-ID: <14e56806-833b-c01b-ee74-8f16f48df2fc@loongson.cn>
Date: Wed, 14 Jun 2023 00:20:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
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
Content-Language: en-US
From: Sui Jingfeng <suijingfeng@loongson.cn>
Organization: Loongson
In-Reply-To: <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
X-CM-TRANSID: AQAAf8BxTMpql4hkF3QZAA--.63775S3
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBj93XoW7CFyUtrW3WrWfJr48GF4fCrX_yoW8tw1xpF
	WfKFWIkrykJrn5Ar1DZr15Za48ZrZYya45Wa9Yv3Wjqrn8CryjgryIq3s0gryxCrs3XF1a
	vF4UGw17ua1DXagCm3ZEXasCq-sJn29KB7ZKAUJUUUUf529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUP0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Jr0_Gr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
	Jr0_Gr1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2
	x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r126r1D
	McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lc7
	I2V7IY0VAS07AlzVAYIcxG8wCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCF
	x2IqxVCFs4IE7xkEbVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r
	1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij
	64vIr41lIxAIcVC0I7IYx2IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr
	0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF
	0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7IU8Dl1DUUUUU==
X-Rspamd-Queue-Id: 87D833EBFD
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:114.242.206.163];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[xen0n.name,189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	ASN(0.00)[asn:4808, ipnet:114.242.192.0/18, country:CN];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	TAGGED_RCPT(0.00)[renesas];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XYZEE2SBR6SEWTDNFJHRQDMSUZQNOYH7
X-Message-ID-Hash: XYZEE2SBR6SEWTDNFJHRQDMSUZQNOYH7
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XYZEE2SBR6SEWTDNFJHRQDMSUZQNOYH7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiArDQo+PiAr
c3RhdGljIGludCBfX2luaXQgbG9vbmdzb25fbW9kdWxlX2luaXQodm9pZCkNCj4+ICt7DQo+PiAr
wqDCoMKgIHN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gTlVMTDsNCj4+ICsNCj4+ICvCoMKgwqAgaWYg
KHZpZGVvX2Zpcm13YXJlX2RyaXZlcnNfb25seSgpKQ0KPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU5PREVWOw0KPj4gKw0KPj4gK8KgwqDCoCAvKiBNdWx0aXBsZSB2aWRlbyBjYXJkIHdvcmth
cm91bmQgKi8NCj4+ICvCoMKgwqAgd2hpbGUgKChwZGV2ID0gcGNpX2dldF9jbGFzcyhQQ0lfQ0xB
U1NfRElTUExBWV9WR0EgPDwgOCwgcGRldikpKSB7DQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHBk
ZXYtPnZlbmRvciAhPSBQQ0lfVkVORE9SX0lEX0xPT05HU09OKSB7DQo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwcl9pbmZvKCJEaXNjcmV0ZSBncmFwaGljIGNhcmQgZGV0ZWN0ZWQsIGFib3J0
XG4iKTsNCj4NCj4gV2h5IGlzIGl0IHRoYXQgdGhlIGlHUFUgY2Fubm90IGJlIHVzZWQgdG9nZXRo
ZXIgd2l0aCBhIGRHUFU/IEkgY2FuJ3QgDQo+IHNlZSB3aHkgdGhpcyBpcyB0ZWNobmljYWxseSB0
aGUgY2FzZSBzbyBzb21lIG1vcmUgZXhwbGFuYXRpb25zIGNvdWxkIA0KPiBiZSBiZW5lZmljaWFs
IHRvIG90aGVyIHJlYWRlcnMgYW5kIExvb25nQXJjaCBkZXZzLg0KDQoNCldlIHdpbGwgcmVtb3Rl
IHRoaXMgd29ya2Fyb3VuZCBhdCBuZXh0IHZlcnNpb24uIHdlIGZpbmQgc29tZSB3YXkgdG8ga2Vl
cCANCm11bHRpcGxlIEdQVSBkcml2ZXIgY28tZXhpeHQgaW4gdGhlIHN5c3RlbS4gVGhlIHJlYXNv
biB3ZSBjaG9vc2UgdG8gDQp3b3JrYXJvdW5kIGlzIGJlY2F1c2UgaXTCoCBpcyBib3RoIGVhc3kg
YW5kIGVmZmVjdGl2ZSB0byBzb2x2ZSBidWdzLg0KDQoNCkFmdGVyIHRoZSBkR1BVIGlzIG1vdW50
ZWQgb24gdGhlIG1vdGhlcmJvYXJkLA0KDQoxKSB0aGUgaW50ZWdyYXRlIHJlZ2lzdGVyIGRvbid0
IHJlY2VpdmUgd3JpdGUgb3IgcmVhZCBhY2Nlc3MgYW55bW9yZS7CoCANCnNvbWV0aW1lIGNhdXNl
IGl0cyBjYW4ndCByZWNlaXZlIHZibGFuayBpbnRlcnJ1cHQsIGNhdXNpbmcgdmJsYW5rIA0KdGlt
ZW91dCBldGMuDQoNCkhhdmUgc29tZXRoaW5nIHRvIGRvIHdpdGggdGhlIFBDSSBkcml2ZXIgbGF5
ZXIgYW5kL29yIFBDSS92Z2FhcmIgbGF5ZXIuDQoNCg0KMikgRm9yIGxzN2ExMDAwLCBib3RoIHRo
ZSBkaXNwbGF5IGNvbnRyb2xsZXIgYW5kIGdwdSBpcyBzcGVjaWFsLA0KDQogwqAgwqAgd2hlbiBk
R1BVIGlzIG1vdW50ZWQsIHdlIGFyZSBtdWx0aXBsZSBncHUgc3lzdGVtLg0KDQogwqDCoMKgIHdl
IHNob3VsZCBtYWRlIHRoZSB2Z2FhcmIgd29ya3MgY29ycmVjdCAsIHRoaXMgaXMgcmVsYXkgb24g
ZmlybXdhcmUgDQphbmQgZWZpwqAgc3VwcG9ydCB0byBiZSBjb21wbGV0ZS4NCg0KIMKgwqAgSW4g
dGhlIHBhc3QsIG91ciBzeXN0ZW0gZG9uJ3Qgc3VwcG9ydCBmaXJtd2FyZSBmcmFtZWJ1ZmZlciBl
dmVuLg0KDQozKSBJdCBuZWVkIHVzIHdlIGltcGxlbWVudCBQUklNRSwgZm9yIGNyb3NzIGRyaXZl
ciBidWZmZXIgc2hhcmluZy4NCg0KIMKgwqDCoMKgIGxvb25nc29uIGRpc3BsYXkgZG9uJ3QgaGFz
IHNjYXR0ZXItZ2F0aGVyIGFibGUgRE1BLiBDYW4ndCBhY2Nlc3MgDQpub24gcGh5c2ljYWwgY29u
dGlndW91cyBHVFQgYnVmZmVyLg0KDQogwqDCoMKgIFdlIGNhbiBvbmx5IGV4cGVjdA0KDQogwqDC
oCAxKSB0aGUgQ1BVIGRvIHRoZSBjb3B5Lg0KDQogwqDCoCAyKSBEQyBkcml2ZXIgZXhwb3J0IGR1
bWIgYnVmZmVyLCBhbmQgR1BVIGRyaXZlciBpbXBvcnQgdGhpcyBidWZmZXIsIA0KYW5kIHJlc29s
dmUgdGhlIHRpbGVkIGJ1ZmZlciB0byB0aGUgbGluZWFyLg0KDQogwqDCoCAzKSBzaGFyZWQgYnVm
ZmVyIGhhcyB0byBwaW5uZWQgYXQgR1RUDQoNCg0KNCkgVXNpbmcgc3BhY2UgWCBzZXJ2ZXIgYWxz
byBoYXMgYnVnIGZvciBwYXJzZXIgdGhlIFBDSSBkZXZpY2Ugb24gDQpjb21wbGV4IHBhdGNoLg0K
DQoNCjUpIEV2ZW4gb24gWDg2LCB0aGVyZSBhcmUgbW90aGVyYm9hcmQgdmVuZG9yIGNob29zZSB0
byBibGFjayB0aGUgaUdQVSANCndoZW4gdGhlIGRHUFUgaXMgbW91bnRlZC4NCg0KSXQgcGVyaGFw
cyBiZXR0ZXIgYmxhY2sgdGhlIGlHUFUgYXQgZmlybXdhcmUgbGF5ZXIuDQoNCkJ1dCBvdXIgZmly
bXdhcmUgZW5naW5lZXIgZG9uJ3Qga25vdyBhYm91dCB0aGlzIGZvciBhIHZlcnkgbG9uZyB0aW1l
Lg0KDQoNCkJ1dCBhcyBpdHMgYWxyZWFkeSBhcyBpcywgd2Ugd2lsbCB0cnkgdG8gaW1wcm92ZSB0
aGlzIGF0IHRoZSBuZXh0IHZlcnNpb24uDQoNCi0tIA0KSmluZ2ZlbmcNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
