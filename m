Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B399434C8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 19:11:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B34D3F94A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2024 17:11:55 +0000 (UTC)
Received: from msa.smtpout.orange.fr (smtp-80.smtpout.orange.fr [80.12.242.80])
	by lists.linaro.org (Postfix) with ESMTPS id 6FD6C3F94A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2024 17:11:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b=dvTxmvOJ;
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.80 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=quarantine) header.from=wanadoo.fr
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id ZCrRsJemgWPKVZCrRsG3Ul; Wed, 31 Jul 2024 19:11:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1722445898;
	bh=l/N7BL6uXIDoiEcTV0sQ9X+6QKDbvzDQWB0h4bM+lFE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=dvTxmvOJZbGhRxoANl70qmf7S2ZSEKLOcNeA9hLaqEFBvPQUcsA6f9iuxkqiSgiAu
	 MJOoqNaHkAis3+RugHTH6u2kXY+UKzaEFLzfPZwMxF3sTZAm+DeHEmp8yjO3uU9F4/
	 HSwpkttWi+aUh05ALFIE3fLkL1l2S7CFYAmCcXxBYnZ6RRTnafAawtCfja3mIbTWEZ
	 6A2+ULcm7D39ArVc/5GdclhHK+BrJw5SBb9cp1nSTKfIHbxlA3sxI7pVOwjp+D37d2
	 mKUR4ccBalvZNLsOncet2VLSiWwX5OYVyTA1j2PZVVbsSrR8/EMAhCmdjzjd2Nq9wr
	 Xqk1uLNDRGQzA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Wed, 31 Jul 2024 19:11:38 +0200
X-ME-IP: 90.11.132.44
Message-ID: <0fbca32a-d0e9-4884-9839-be1714543398@wanadoo.fr>
Date: Wed, 31 Jul 2024 19:11:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Huan Yang <link@vivo.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20240731073752.1225177-1-link@vivo.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240731073752.1225177-1-link@vivo.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6FD6C3F94A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.242.0/25];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[80.12.242.80:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.960];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[wanadoo.fr:+]
X-Rspamd-Action: no action
Message-ID-Hash: ONSKKQ2KWNTLZMJWU4C4AWBQBYJ5HWOO
X-Message-ID-Hash: ONSKKQ2KWNTLZMJWU4C4AWBQBYJ5HWOO
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] udmabuf: use kmem_cache to alloc udmabuf folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ONSKKQ2KWNTLZMJWU4C4AWBQBYJ5HWOO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

TGUgMzEvMDcvMjAyNCDDoCAwOTozNywgSHVhbiBZYW5nIGEgw6ljcml0wqA6DQo+IFRoZSBjdXJy
ZW50IHVkbWFidWZfZm9saW8gY29udGFpbnMgYSBsaXN0X2hlYWQgYW5kIHRoZSBjb3JyZXNwb25k
aW5nDQo+IGZvbGlvIHBvaW50ZXIsIHdpdGggYSBzaXplIG9mIDI0IGJ5dGVzLiB1ZG1hYnVmX2Zv
bGlvIHVzZXMga21hbGxvYyB0bw0KPiBhbGxvY2F0ZSBtZW1vcnkuDQo+IA0KPiBIb3dldmVyLCBr
bWFsbG9jIGlzIGEgcHVibGljIHBvb2wsIHN0YXJ0aW5nIGZyb20gOCwxNiwzMiBieXRlcy4NCj4g
QWRkaXRpb25hbGx5LCBpZiB0aGUgc2l6ZSBpcyBub3QgYWxpZ25lZCB3aXRoIHRoZSBrbWFsbG9j
IHNpemUsIGl0IHdpbGwNCj4gYmUgcm91bmRlZCB1cCB0byB0aGUgY29ycmVzcG9uZGluZyBzaXpl
Lg0KPiBUaGlzIG1lYW5zIHRoYXQgZWFjaCB1ZG1hYnVmX2ZvbGlvIGFsbG9jYXRpb24gd2lsbCBn
ZXQgMzIgYnl0ZXMsIGFuZA0KPiB3YXN0ZSA4IGJ5dGVzLg0KPiANCj4gQ29uc2lkZXJpbmcgdGhh
dCBlYWNoIHVkbWFidWYgY3JlYXRlcyBhIGZvbGlvIGNvcnJlc3BvbmRpbmcgdG8gYQ0KPiB1ZG1h
YnVmX2ZvbGlvLCB0aGUgd2FzdGVkIG1lbW9yeSBjYW4gYmUgc2lnbmlmaWNhbnQgaW4gdGhlIGNh
c2Ugb2YNCj4gbWVtb3J5IGZyYWdtZW50YXRpb24uDQo+IA0KPiBGdXJ0aGVybW9yZSwgaWYgdWRt
YWJ1ZiBpcyBmcmVxdWVudGx5IHVzZWQsIHRoZSBhbGxvY2F0aW9uIGFuZA0KPiBkZWFsbG9jYXRp
b24gb2YgdWRtYWJ1Zl9mb2xpbyB3aWxsIGFsc28gYmUgZnJlcXVlbnQuDQo+IA0KPiBUaGVyZWZv
cmUsIHRoaXMgcGF0Y2ggYWRkcyBhIGttZW1fY2FjaGUgZGVkaWNhdGVkIHRvIHRoZSBhbGxvY2F0
aW9uIGFuZA0KPiBkZWFsbG9jYXRpb24gb2YgdWRtYWJ1Zl9mb2xpby5UaGlzIGlzIGV4cGVjdGVk
IHRvIGltcHJvdmUgdGhlDQo+IHBlcmZvcm1hbmNlIG9mIGFsbG9jYXRpb24gYW5kIGRlYWxsb2Nh
dGlvbiB3aXRoaW4gdGhlIGV4cGVjdGVkIHJhbmdlLA0KPiB3aGlsZSBhbHNvIGF2b2lkaW5nIG1l
bW9yeSB3YXN0ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEh1YW4gWWFuZyA8bGlua0B2aXZvLmNv
bT4NCj4gLS0tDQo+IHYzIC0+IHYyOiBmaXggZXJyb3IgZGVzY3JpcHRpb24uDQo+IHYyIC0+IHYx
OiBmaXggZG91YmxlIHVucmVnaXN0ZXIsIHJlbW92ZSB1bmxpa2VseS4NCj4gICBkcml2ZXJzL2Rt
YS1idWYvdWRtYWJ1Zi5jIHwgMTkgKysrKysrKysrKysrKysrLS0tLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+
IGluZGV4IDA0N2MzY2QyY2VmZi4uYzExMmM1OGVmMDlhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2RtYS1idWYvdWRtYWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4g
QEAgLTI0LDYgKzI0LDggQEAgc3RhdGljIGludCBzaXplX2xpbWl0X21iID0gNjQ7DQo+ICAgbW9k
dWxlX3BhcmFtKHNpemVfbGltaXRfbWIsIGludCwgMDY0NCk7DQo+ICAgTU9EVUxFX1BBUk1fREVT
QyhzaXplX2xpbWl0X21iLCAiTWF4IHNpemUgb2YgYSBkbWFidWYsIGluIG1lZ2FieXRlcy4gRGVm
YXVsdCBpcyA2NC4iKTsNCj4gICANCj4gK3N0YXRpYyBzdHJ1Y3Qga21lbV9jYWNoZSAqdWRtYWJ1
Zl9mb2xpb19jYWNoZXA7DQo+ICsNCj4gICBzdHJ1Y3QgdWRtYWJ1ZiB7DQo+ICAgCXBnb2ZmX3Qg
cGFnZWNvdW50Ow0KPiAgIAlzdHJ1Y3QgZm9saW8gKipmb2xpb3M7DQo+IEBAIC0xNjksNyArMTcx
LDcgQEAgc3RhdGljIHZvaWQgdW5waW5fYWxsX2ZvbGlvcyhzdHJ1Y3QgbGlzdF9oZWFkICp1bnBp
bl9saXN0KQ0KPiAgIAkJdW5waW5fZm9saW8odWJ1Zl9mb2xpby0+Zm9saW8pOw0KPiAgIA0KPiAg
IAkJbGlzdF9kZWwoJnVidWZfZm9saW8tPmxpc3QpOw0KPiAtCQlrZnJlZSh1YnVmX2ZvbGlvKTsN
Cj4gKwkJa21lbV9jYWNoZV9mcmVlKHVkbWFidWZfZm9saW9fY2FjaGVwLCB1YnVmX2ZvbGlvKTsN
Cj4gICAJfQ0KPiAgIH0NCj4gICANCj4gQEAgLTE3OCw3ICsxODAsNyBAQCBzdGF0aWMgaW50IGFk
ZF90b191bnBpbl9saXN0KHN0cnVjdCBsaXN0X2hlYWQgKnVucGluX2xpc3QsDQo+ICAgew0KPiAg
IAlzdHJ1Y3QgdWRtYWJ1Zl9mb2xpbyAqdWJ1Zl9mb2xpbzsNCj4gICANCj4gLQl1YnVmX2ZvbGlv
ID0ga3phbGxvYyhzaXplb2YoKnVidWZfZm9saW8pLCBHRlBfS0VSTkVMKTsNCj4gKwl1YnVmX2Zv
bGlvID0ga21lbV9jYWNoZV9hbGxvYyh1ZG1hYnVmX2ZvbGlvX2NhY2hlcCwgR0ZQX0tFUk5FTCk7
DQo+ICAgCWlmICghdWJ1Zl9mb2xpbykNCj4gICAJCXJldHVybiAtRU5PTUVNOw0KPiAgIA0KPiBA
QCAtNDkxLDExICs0OTMsMjAgQEAgc3RhdGljIGludCBfX2luaXQgdWRtYWJ1Zl9kZXZfaW5pdCh2
b2lkKQ0KPiAgIAkJCQkJICAgRE1BX0JJVF9NQVNLKDY0KSk7DQo+ICAgCWlmIChyZXQgPCAwKSB7
DQo+ICAgCQlwcl9lcnIoIkNvdWxkIG5vdCBzZXR1cCBETUEgbWFzayBmb3IgdWRtYWJ1ZiBkZXZp
Y2VcbiIpOw0KPiAtCQltaXNjX2RlcmVnaXN0ZXIoJnVkbWFidWZfbWlzYyk7DQo+IC0JCXJldHVy
biByZXQ7DQo+ICsJCWdvdG8gZXJyOw0KPiArCX0NCj4gKw0KPiArCXVkbWFidWZfZm9saW9fY2Fj
aGVwID0gS01FTV9DQUNIRSh1ZG1hYnVmX2ZvbGlvLCAwKTsNCj4gKwlpZiAoIXVkbWFidWZfZm9s
aW9fY2FjaGVwKSB7DQo+ICsJCXJldCA9IC1FTk9NRU07DQo+ICsJCWdvdG8gZXJyOw0KPiAgIAl9
DQo+ICAgDQo+ICAgCXJldHVybiAwOw0KPiArDQo+ICtlcnI6DQo+ICsJbWlzY19kZXJlZ2lzdGVy
KCZ1ZG1hYnVmX21pc2MpOw0KPiArCXJldHVybiByZXQ7DQo+ICAgfQ0KPiAgIA0KPiAgIHN0YXRp
YyB2b2lkIF9fZXhpdCB1ZG1hYnVmX2Rldl9leGl0KHZvaWQpDQoNCkhpLA0KDQpzaG91bGQgYSBr
bWVtX2NhY2hlX2Rlc3Ryb3koKSBiZSBhbHNvIGFkZGVkIGluIHVkbWFidWZfZGV2X2V4aXQoKT8N
Cg0KQ0oNCg0KPiANCj4gYmFzZS1jb21taXQ6IGNkMTlhYzJmOTAzMjc2YjgyMGY1ZDBkODlkZTBj
ODk2YzI3MDM2ZWQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
