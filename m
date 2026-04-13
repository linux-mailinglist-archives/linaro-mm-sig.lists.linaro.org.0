Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP1aINza3GlwXgkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 14:00:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D34253EBA7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 14:00:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA4E340475
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Apr 2026 12:00:26 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 5EADB40474
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 12:00:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=OZvCdOy5;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=99x8APGcITMgMBZ7TxiCwbxYjL8CC2EzNIEr5FFICxM=; b=OZvCdOy52D+SChBNdxT+Xxeg5P
	coV5N+5BclZ5rwKcUERfb+JNYhk/9uZglRla4gyJsWTCFb2RBaROmohZuGg+xFRT49ftOVGa/cFE8
	gXIGq4OaPXkhmQ3MT9ytr3QJr2gzgzhxdY/SX3le+spninrTqIcjo/CWV55uqnCcTb7hHx2BYMc+9
	VACfjTUUzIiWAys38+n5cS66ughpr7ykFq1v3nUocqr5Die3WFs5+r2YbAPQaeGHZFm05/r/52kd2
	se7xSMGJ+QuSWSY7V24f4UEUP2JFC+lp0P6VIDkauCBfMgIe+GcOqiiCJ0VvdOtI8OCD6ZrTfmqBL
	GTI2+9XA==;
Received: from gwsc.sc.usp.br ([143.107.225.16] helo=[172.24.27.208])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wCFxb-00FO7r-FB; Mon, 13 Apr 2026 14:00:11 +0200
Message-ID: <a873a7ba-7309-4c80-86c1-2f009365266b@igalia.com>
Date: Mon, 13 Apr 2026 09:00:05 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <ckoenig.leichtzumerken@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20260411185756.1887119-4-mcanal@igalia.com>
 <59759507d4fb89d3726092268f17680998d1b4cf.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xsBNBGcCwywBCADgTji02Sv9zjHo26LXKdCaumcSWglfnJ93rwOCNkHfPIBll85LL9G0J7H8
 /PmEL9y0LPo9/B3fhIpbD8VhSy9Sqz8qVl1oeqSe/rh3M+GceZbFUPpMSk5pNY9wr5raZ63d
 gJc1cs8XBhuj1EzeE8qbP6JAmsL+NMEmtkkNPfjhX14yqzHDVSqmAFEsh4Vmw6oaTMXvwQ40
 SkFjtl3sr20y07cJMDe++tFet2fsfKqQNxwiGBZJsjEMO2T+mW7DuV2pKHr9aifWjABY5EPw
 G7qbrh+hXgfT+njAVg5+BcLz7w9Ju/7iwDMiIY1hx64Ogrpwykj9bXav35GKobicCAwHABEB
 AAHNIE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+wsCRBBMBCAA7FiEE+ORdfQEW
 dwcppnfRP/MOinaI+qoFAmcCwywCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQ
 P/MOinaI+qoUBQgAqz2gzUP7K3EBI24+a5FwFlruQGtim85GAJZXToBtzsfGLLVUSCL3aF/5
 O335Bh6ViSBgxmowIwVJlS/e+L95CkTGzIIMHgyUZfNefR2L3aZA6cgc9z8cfow62Wu8eXnq
 GM/+WWvrFQb/dBKKuohfBlpThqDWXxhozazCcJYYHradIuOM8zyMtCLDYwPW7Vqmewa+w994
 7Lo4CgOhUXVI2jJSBq3sgHEPxiUBOGxvOt1YBg7H9C37BeZYZxFmU8vh7fbOsvhx7Aqu5xV7
 FG+1ZMfDkv+PixCuGtR5yPPaqU2XdjDC/9mlRWWQTPzg74RLEw5sz/tIHQPPm6ROCACFls7A
 TQRnAsMsAQgAxTU8dnqzK6vgODTCW2A6SAzcvKztxae4YjRwN1SuGhJR2isJgQHoOH6oCItW
 Xc1CGAWnci6doh1DJvbbB7uvkQlbeNxeIz0OzHSiB+pb1ssuT31Hz6QZFbX4q+crregPIhr+
 0xeDi6Mtu+paYprI7USGFFjDUvJUf36kK0yuF2XUOBlF0beCQ7Jhc+UoI9Akmvl4sHUrZJzX
 LMeajARnSBXTcig6h6/NFVkr1mi1uuZfIRNCkxCE8QRYebZLSWxBVr3h7dtOUkq2CzL2kRCK
 T2rKkmYrvBJTqSvfK3Ba7QrDg3szEe+fENpL3gHtH6h/XQF92EOulm5S5o0I+ceREwARAQAB
 wsB2BBgBCAAgFiEE+ORdfQEWdwcppnfRP/MOinaI+qoFAmcCwywCGwwACgkQP/MOinaI+qpI
 zQf+NAcNDBXWHGA3lgvYvOU31+ik9bb30xZ7IqK9MIi6TpZqL7cxNwZ+FAK2GbUWhy+/gPkX
 it2gCAJsjo/QEKJi7Zh8IgHN+jfim942QZOkU+p/YEcvqBvXa0zqW0sYfyAxkrf/OZfTnNNE
 Tr+uBKNaQGO2vkn5AX5l8zMl9LCH3/Ieaboni35qEhoD/aM0Kpf93PhCvJGbD4n1DnRhrxm1
 uEdQ6HUjWghEjC+Jh9xUvJco2tUTepw4OwuPxOvtuPTUa1kgixYyG1Jck/67reJzMigeuYFt
 raV3P8t/6cmtawVjurhnCDuURyhUrjpRhgFp+lW8OGr6pepHol/WFIOQEg==
In-Reply-To: <59759507d4fb89d3726092268f17680998d1b4cf.camel@mailbox.org>
X-Spamd-Bar: ---
Message-ID-Hash: X5DQUIIYT43ZVB3MV62T227N43KSQO2V
X-Message-ID-Hash: X5DQUIIYT43ZVB3MV62T227N43KSQO2V
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X5DQUIIYT43ZVB3MV62T227N43KSQO2V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,collabora.com,igalia.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,igalia.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: D34253EBA7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgUGhpbGlwcCwNCg0KT24gNC8xMy8yNiAwMzo0NywgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0K
PiBPbiBTYXQsIDIwMjYtMDQtMTEgYXQgMTU6NDcgLTAzMDAsIE1hw61yYSBDYW5hbCB3cm90ZToN
Cj4+IFRoZSBrZXJuZWxkb2MgY29tbWVudCBvbiBkbWFfZmVuY2VfaW5pdCgpIGFuZCBkbWFfZmVu
Y2VfaW5pdDY0KCkgZGVzY3JpYmUNCj4+IHRoZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0
ZXJuYWwgbG9jayBhcyBhIG5lZWQgdG8gcHJldmVudCBtdWx0aXBsZQ0KPj4gZmVuY2VzICJmcm9t
IHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIiLiBIb3dldmVyLCB0aGlzIHdvcmRpbmcgaXMgYSBiaXQN
Cj4+IG1pc2xlYWRpbmc6IGEgc2hhcmVkIHNwaW5sb2NrIGRvZXMgbm90IChhbmQgY2Fubm90KSBw
cmV2ZW50IHRoZSBzaWduYWxlcg0KPj4gZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWdu
YWxpbmcgb3JkZXIgaXMgdGhlIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5DQo+PiByZWdhcmRsZXNz
IG9mIHdoZXRoZXIgdGhlIGxvY2sgaXMgc2hhcmVkIG9yIHBlci1mZW5jZS4NCj4+DQo+PiBXaGF0
IGEgc2hhcmVkIGxvY2sgYWN0dWFsbHkgcHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWdu
YWxpbmcgYW5kDQo+PiBvYnNlcnZhdGlvbiBhY3Jvc3MgZmVuY2VzIGluIGEgZ2l2ZW4gY29udGV4
dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXINCj4+IHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVk
IHdoaWxlIGFuIGVhcmxpZXIgb25lIGlzIG5vdC4NCj4+DQo+PiBSZXdvcmQgYm90aCBjb21tZW50
cyB0byBkZXNjcmliZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5
OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KPj4gLS0tDQo+Pg0KPj4gSGksDQo+
Pg0KPj4gV2hpbGUgcmVhZGluZyB0aGUgZG9jdW1lbnRhdGlvbiwgSSBmb3VuZCB0aGlzIHBhcnRp
Y3VsYXIgcGFyYWdyYXBoIHF1aXRlDQo+PiBoYXJkIHRvIHVuZGVyc3RhbmQuIEFzIEkgdW5kZXJz
dGFuZCBpdCwgbG9ja3MgZG9uJ3QgZW5mb3JjZSBvcmRlciwgb25seQ0KPj4gc2VyaWFsaXphdGlv
biwgYnV0IHRoZSBwYXJhZ3JhcGggc2VlbXMgdG8gY29tbXVuaWNhdGUgdGhlIG90aGVyIHdheSBh
cm91bmQuDQo+IA0KPiBZZXMsIDEwMCUuDQo+IFRoYXQncyBvbmUgb2YgdGhlIHJlYXNvbnMgd2h5
IENocmlzdGlhbiByZWNlbnRseSBtb3ZlZCB0byB1c2luZyBpbmxpbmUtDQo+IGxvY2tzLg0KPiAN
Cj4gDQo+IA0KPj4gRHVlIHRvIHRoYXQsIEkgaGFkIHRoZSBpbXByZXNzaW9uIHRoYXQgdGhlIGN1
cnJlbnQgd29yZGluZyBjYW4gYmUNCj4+IG1pc2xlYWRpbmcgZm9yIGRyaXZlciBkZXZlbG9wZXJz
Lg0KPj4NCj4+IEknbSBwcm9wb3NpbmcgYSBuZXcgd29yZGluZyB0byBiZXR0ZXIgZGVzY3JpYmUg
dGhlIHVzZSBjYXNlIG9mIHRoZQ0KPj4gZXh0ZXJuYWwgbG9jayBiYXNlZCBvbiBteSB1bmRlcnN0
YW5kaW5nLCBidXQgaXQgd291bGQgYmUgZ3JlYXQgdG8gaGVhcg0KPj4gdGhlIGZlZWRiYWNrIGFu
ZCBzdWdnZXN0aW9ucyBmcm9tIG1vcmUgZXhwZXJpZW5jZWQgZGV2ZWxvcGVycyB3aG8gbWlnaHQN
Cj4+IGhhdmUgbW9yZSBpbnNpZ2h0IGFib3V0IHRoZXNlIGxlZ2FjeSB1c2UgY2FzZXMuDQo+Pg0K
Pj4gQmVzdCByZWdhcmRzLA0KPj4gLSBNYcOtcmENCj4+DQo+PiAgwqBkcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMgfCAxMiArKysrKysrKy0tLS0NCj4+ICDCoDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4gaW5k
ZXggMTgyNmJhNzMwOTRjLi5iZGMyOWQxYzFiNWMgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
Pj4gQEAgLTExMDIsOCArMTEwMiwxMCBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPj4gIMKgICogdG8g
Y2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRl
cigpLg0KPj4gIMKgICoNCj4+ICDCoCAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHBy
b3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KPj4gLSAqIGxvY2sg
YW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2Ug
Y2FzZXMgd2hlbg0KPj4gLSAqIG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBm
cm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuDQo+PiArICogbG9jayBhbmQgZmVuY2UgbGlmZXRp
bWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZA0K
Pj4gKyAqIGEgc2hhcmVkIGxvY2sgdG8gc2VyaWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRp
b24gb2YgZmVuY2VzIHdpdGhpbiBhDQo+PiArICogY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMg
bmV2ZXIgc2VlIGEgbGF0ZXIgZmVuY2Ugc2lnbmFsZWQgd2hpbGUgYW4gZWFybGllcg0KPj4gKyAq
IG9uZSBpc24ndC4NCj4gDQo+IEkgd291bGQgcHJvYmFibHkgZGVsZXRlIHRoZSBleHBsYW5hdGlv
biBhbHRvZ2V0aGVyIGFuZCBqdXN0IHN0YXRlDQo+ICJhbGxvd2VkIGZvciBsZWdhY3kgcmVhc29u
cyIuIFRoZSBsZWdhY3kgcGVvcGxlIGtub3cgd2h5IGl0J3MgYWxsb3dlZCwNCj4gYW5kIG5ldyB1
c2VycyBkb24ndCBuZWVkIHRvIGNhcmUuIFNhbWUgYmVsb3cgb2YgY291cnNlLg0KDQpBY3R1YWxs
eSwgSSBlbmRlZCB1cCBpbiB0aGlzIHBhcnQgb2YgdGhlIGRvY3VtZW50YXRpb24gYXMgSSdtIHRo
aW5raW5nDQphYm91dCBkcm9wcGluZyB0aGUgZXh0ZXJuYWwgbG9jayBpbiB2M2QgZHJpdmVyLiBJ
IHdhcyByZWFkaW5nIHRoZSBkb2NzDQpleGFjdGx5IHRvIGtub3cgaWYgdjNkIGlzIGEgbGVnYWN5
IHVzZSBjYXNlIChzcG9pbGVyOiBpdCBpc24ndCkgYW5kIEkNCmdvdCBjb25mdXNlZCBieSB0aGUg
Y3VycmVudCB3b3JkaW5nLiBTbywgSSB0aGluayB0aGVyZSBpcyB2YWx1ZSBpbg0KZG9jdW1lbnRp
bmcgdGhlIGxlZ2FjeSB1c2UgY2FzZXMgZm9yIHRoZSBleHRlcm5hbCBsb2NrLg0KDQpNYXliZSwg
aW5zdGVhZCBvZiAic3Ryb25nbHkgZGlzY291cmFnZWQiLCB3ZSBjb3VsZCBhZGQgYSBkaXNjbGFp
bWVyDQpsaWtlOiAiTmV3IGRyaXZlcnMgTVVTVCBOT1QgdXNlIGFuIGV4dGVybmFsIGxvY2sgYmVj
YXVzZS4uLiIuIFdoYXQgZG8NCnlvdSB0aGluaz8NCg0KQmVzdCByZWdhcmRzLA0KLSBNYcOtcmEN
Cg0KPiANCj4gDQo+IFRoeA0KPiBQLg0KPiANCj4+ICDCoCAqLw0KPj4gIMKgdm9pZA0KPj4gIMKg
ZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzICpvcHMsDQo+PiBAQCAtMTEyOSw4ICsxMTMxLDEwIEBAIEVYUE9SVF9TWU1CT0wo
ZG1hX2ZlbmNlX2luaXQpOw0KPj4gIMKgICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIg
Ynkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPj4gIMKgICoNCj4+ICDCoCAqIEl0
IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNh
dXNlIHRoaXMgY291cGxlcw0KPj4gLSAqIGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBp
cyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgY2FzZXMgd2hlbg0KPj4gLSAqIG11bHRpcGxl
IGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIu
DQo+PiArICogbG9jayBhbmQgZmVuY2UgbGlmZXRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZv
ciBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVlZA0KPj4gKyAqIGEgc2hhcmVkIGxvY2sgdG8gc2Vy
aWFsaXplIHNpZ25hbGluZyBhbmQgb2JzZXJ2YXRpb24gb2YgZmVuY2VzIHdpdGhpbiBhDQo+PiAr
ICogY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIgc2VlIGEgbGF0ZXIgZmVuY2Ugc2ln
bmFsZWQgd2hpbGUgYW4gZWFybGllcg0KPj4gKyAqIG9uZSBpc24ndC4NCj4+ICDCoCAqLw0KPj4g
IMKgdm9pZA0KPj4gIMKgZG1hX2ZlbmNlX2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
Y29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
