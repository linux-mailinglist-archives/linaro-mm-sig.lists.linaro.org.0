Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FAE4B6436
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 004BA3EE2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:59 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se [213.80.101.70])
	by lists.linaro.org (Postfix) with ESMTPS id BEDE63EE0C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 07:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 74DAC3F52F;
	Fri, 21 Jan 2022 08:41:16 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
	URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
	dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
	by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ztpjkw7MC_nI; Fri, 21 Jan 2022 08:41:15 +0100 (CET)
Received: 
	by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 911D73F36E;
	Fri, 21 Jan 2022 08:41:13 +0100 (CET)
Received: from [192.168.0.209] (unknown [192.55.55.53])
	by mail1.shipmail.org (Postfix) with ESMTPSA id EF55B36021F;
	Fri, 21 Jan 2022 08:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
	t=1642750873; bh=J7x+B28uN49SMZuI8wIJMtVPVYV8cmBtaTSP49CgU8E=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Eq4Y1IVj9UYOnrhtdi2e8lLF6MPhqGF+hPWmTPfZBnV3zX0ibuSqtZNeFkIqJrJ0+
	 jgFZ0b0cM4SLYurhMy77RlYA+uvfMI5Pw5vG2Bc3x4bMiLZlhroI3feoN5FU0YOcWo
	 SEIrAYTKUMjED9moHyHSCsQxVxnqiGYglb4giZiE=
Message-ID: <93c4213e-41ff-1afa-be40-7ec6789c63da@shipmail.org>
Date: Fri, 21 Jan 2022 08:41:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, gustavo@padovan.org, daniel.vetter@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20220120132747.2348-1-christian.koenig@amd.com>
 <20220120132747.2348-2-christian.koenig@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20220120132747.2348-2-christian.koenig@amd.com>
X-MailFrom: thomas_os@shipmail.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: BG63OMMRP4CSMTN35FSRCAPW4DL6TJJF
X-Message-ID-Hash: BG63OMMRP4CSMTN35FSRCAPW4DL6TJJF
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:22 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: consolidate dma_fence subclass checking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BG63OMMRP4CSMTN35FSRCAPW4DL6TJJF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAxLzIwLzIyIDE0OjI3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBDb25zb2xpZGF0
ZSB0aGUgd3JhcHBlciBmdW5jdGlvbnMgdG8gY2hlY2sgZm9yIGRtYV9mZW5jZQ0KPiBzdWJjbGFz
c2VzIGluIHRoZSBkbWFfZmVuY2UgaGVhZGVyLg0KPg0KPiBUaGlzIG1ha2VzIGl0IGVhc2llciB0
byBkb2N1bWVudCBhbmQgYWxzbyBjaGVjayB0aGUgZGlmZmVyZW50DQo+IHJlcXVpcmVtZW50cyBm
b3IgZmVuY2UgY29udGFpbmVycyBpbiB0aGUgc3ViY2xhc3Nlcy4NCj4NCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4g
ICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIHwgMTUgKy0tLS0tLS0tLS0tLQ0KPiAg
IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmggfCAgMyArLS0NCj4gICBpbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oICAgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMo
LSkNCj4NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oDQo+IGluZGV4IDMwM2RkNzEyMjIwZi4uZmVj
Mzc0ZjY5ZTEyIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5o
DQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCj4gQEAgLTQ1LDE5ICs0
NSw2IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgew0KPiAgIAlzdHJ1Y3QgaXJxX3dvcmsgd29y
azsNCj4gICB9Ow0KPiAgIA0KPiAtZXh0ZXJuIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRt
YV9mZW5jZV9hcnJheV9vcHM7DQo+IC0NCj4gLS8qKg0KPiAtICogZG1hX2ZlbmNlX2lzX2FycmF5
IC0gY2hlY2sgaWYgYSBmZW5jZSBpcyBmcm9tIHRoZSBhcnJheSBzdWJzY2xhc3MNCj4gLSAqIEBm
ZW5jZTogZmVuY2UgdG8gdGVzdA0KPiAtICoNCj4gLSAqIFJldHVybiB0cnVlIGlmIGl0IGlzIGEg
ZG1hX2ZlbmNlX2FycmF5IGFuZCBmYWxzZSBvdGhlcndpc2UuDQo+IC0gKi8NCj4gLXN0YXRpYyBp
bmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+
IC17DQo+IC0JcmV0dXJuIGZlbmNlLT5vcHMgPT0gJmRtYV9mZW5jZV9hcnJheV9vcHM7DQo+IC19
DQo+IC0NCj4gICAvKioNCj4gICAgKiB0b19kbWFfZmVuY2VfYXJyYXkgLSBjYXN0IGEgZmVuY2Ug
dG8gYSBkbWFfZmVuY2VfYXJyYXkNCj4gICAgKiBAZmVuY2U6IGZlbmNlIHRvIGNhc3QgdG8gYSBk
bWFfZmVuY2VfYXJyYXkNCj4gQEAgLTY4LDcgKzU1LDcgQEAgc3RhdGljIGlubGluZSBib29sIGRt
YV9mZW5jZV9pc19hcnJheShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICBzdGF0aWMgaW5s
aW5lIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKg0KPiAgIHRvX2RtYV9mZW5jZV9hcnJheShzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICB7DQo+IC0JaWYgKGZlbmNlLT5vcHMgIT0gJmRtYV9m
ZW5jZV9hcnJheV9vcHMpDQo+ICsJaWYgKCFmZW5jZSB8fCAhZG1hX2ZlbmNlX2lzX2FycmF5KGZl
bmNlKSkNCj4gICAJCXJldHVybiBOVUxMOw0KPiAgIA0KPiAgIAlyZXR1cm4gY29udGFpbmVyX29m
KGZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5LCBiYXNlKTsNCj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1j
aGFpbi5oDQo+IGluZGV4IDU0ZmUzNDQzZmQyYy4uZWU5MDZiNjU5Njk0IDEwMDY0NA0KPiAtLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLWNoYWluLmgNCj4gQEAgLTQ5LDcgKzQ5LDYgQEAgc3RydWN0IGRtYV9mZW5jZV9j
aGFpbiB7DQo+ICAgCXNwaW5sb2NrX3QgbG9jazsNCj4gICB9Ow0KPiAgIA0KPiAtZXh0ZXJuIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+ICAgDQo+ICAg
LyoqDQo+ICAgICogdG9fZG1hX2ZlbmNlX2NoYWluIC0gY2FzdCBhIGZlbmNlIHRvIGEgZG1hX2Zl
bmNlX2NoYWluDQo+IEBAIC02MSw3ICs2MCw3IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzOw0KPiAgIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRt
YV9mZW5jZV9jaGFpbiAqDQo+ICAgdG9fZG1hX2ZlbmNlX2NoYWluKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQ0KPiAgIHsNCj4gLQlpZiAoIWZlbmNlIHx8IGZlbmNlLT5vcHMgIT0gJmRtYV9mZW5j
ZV9jaGFpbl9vcHMpDQo+ICsJaWYgKCFmZW5jZSB8fCAhZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNl
KSkNCj4gICAJCXJldHVybiBOVUxMOw0KPiAgIA0KPiAgIAlyZXR1cm4gY29udGFpbmVyX29mKGZl
bmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluLCBiYXNlKTsNCj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4
IDFlYTY5MTc1M2JkMy4uNzc1Y2RjMGI0ZjI0IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTU4
Nyw0ICs1ODcsNDIgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2dldF9zdHViKHZvaWQp
Ow0KPiAgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIo
dm9pZCk7DQo+ICAgdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7DQo+
ICAgDQo+ICtleHRlcm4gY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2FycmF5
X29wczsNCj4gK2V4dGVybiBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfY2hh
aW5fb3BzOw0KPiArDQo+ICsvKioNCj4gKyAqIGRtYV9mZW5jZV9pc19hcnJheSAtIGNoZWNrIGlm
IGEgZmVuY2UgaXMgZnJvbSB0aGUgYXJyYXkgc3ViY2xhc3MNCj4gKyAqIEBmZW5jZTogdGhlIGZl
bmNlIHRvIHRlc3QNCj4gKyAqDQo+ICsgKiBSZXR1cm4gdHJ1ZSBpZiBpdCBpcyBhIGRtYV9mZW5j
ZV9hcnJheSBhbmQgZmFsc2Ugb3RoZXJ3aXNlLg0KPiArICovDQo+ICtzdGF0aWMgaW5saW5lIGJv
b2wgZG1hX2ZlbmNlX2lzX2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiArew0KPiAr
CXJldHVybiBmZW5jZS0+b3BzID09ICZkbWFfZmVuY2VfYXJyYXlfb3BzOw0KPiArfQ0KPiArDQo+
ICsvKioNCj4gKyAqIGRtYV9mZW5jZV9pc19jaGFpbiAtIGNoZWNrIGlmIGEgZmVuY2UgaXMgZnJv
bSB0aGUgY2hhaW4gc3ViY2xhc3MNCj4gKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHRlc3QNCj4g
KyAqDQo+ICsgKiBSZXR1cm4gdHJ1ZSBpZiBpdCBpcyBhIGRtYV9mZW5jZV9jaGFpbiBhbmQgZmFs
c2Ugb3RoZXJ3aXNlLg0KPiArICovDQo+ICtzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNlX2lz
X2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiArew0KPiArCXJldHVybiBmZW5jZS0+
b3BzID09ICZkbWFfZmVuY2VfY2hhaW5fb3BzOw0KPiArfQ0KPiArDQo+ICsvKioNCj4gKyAqIGRt
YV9mZW5jZV9pc19jb250YWluZXIgLSBjaGVjayBpZiBhIGZlbmNlIGlzIGEgY29udGFpbmVyIGZv
ciBvdGhlciBmZW5jZXMNCj4gKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHRlc3QNCj4gKyAqDQo+
ICsgKiBSZXR1cm4gdHJ1ZSBpZiB0aGlzIGZlbmNlIGlzIGEgY29udGFpbmVyIGZvciBvdGhlciBm
ZW5jZXMsIGZhbHNlIG90aGVyd2lzZS4NCj4gKyAqIFRoaXMgaXMgaW1wb3J0YW50IHNpbmNlIHdl
IGNhbid0IGJ1aWxkIHVwIGxhcmdlIGZlbmNlIHN0cnVjdHVyZSBvciBvdGhlcndpc2UNCj4gKyAq
IHdlIHJ1biBpbnRvIHJlY3Vyc2lvbiBkdXJpbmcgb3BlcmF0aW9uIG9uIHRob3NlIGZlbmNlcy4N
Cj4gKyAqLw0KPiArc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19jb250YWluZXIoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICt7DQo+ICsJcmV0dXJuIGRtYV9mZW5jZV9pc19hcnJh
eShmZW5jZSkgfHwgZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNlKTsNCj4gK30NCg0KV2hhdCdzIHRo
ZSBzdHJhdGVneSBoZXJlIG1vdmluZyBmb3J3YXJkIGlmIHdlIGFkZCBtb3JlIGRtYV9yZXN2IA0K
Y29udGFpbmVycywgb3IgaWYgYSBkcml2ZXIgYWRkcyBhIGNvbnRhaW5lciB0aGF0IHNpbWlsYXJs
eSBoYXMgcmlzYyBvZiANCnJlY3Vyc2lvbj8gU2hvdWxkIHdlIHBlcmhhcHMgYWRkIGFuIG9wcyBi
b29sIGZvciB0aGlzLCBvciByZXF1aXJlIHRoYXQgDQphbGwgZG1hX3Jlc3YgY29udGFpbmVycyB0
aGF0IGhhcyB0aGlzIGxpbWl0YXRpb24gYmUgcGFydCBvZiB0aGUgZG1hLWJ1ZiANCnN1YnN5c3Rl
bSByYXRoZXIgdGhhbiBkcml2ZXItc3BlY2lmaWM/DQoNClRoYW5rcywNCi9UaG9tYXMNCg0KDQo+
ICsNCj4gICAjZW5kaWYgLyogX19MSU5VWF9ETUFfRkVOQ0VfSCAqLw0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
