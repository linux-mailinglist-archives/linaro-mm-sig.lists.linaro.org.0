Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOtfEo6x+GkdzAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 16:47:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2614C0052
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 16:47:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB750409AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2026 14:47:40 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id A8EF43F725
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 14:47:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=n1dcg+Z3;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bF093xAPwSthM1dr3VtL1tG7V51VIWOVIPRGgKsB52M=; b=n1dcg+Z3AQtAw5a3tDALjkKsLp
	5G5nxfN7FLUV2jz2OciuekkLEXDvLNwFyL+OWufulMRuixmMBDNWutJvMPDefVqaiyHre2iOPxET4
	6976q7P/JlLUY+bYZ+V6Msl2sHcH2NVf/4eUZ2noBV+0aQ4e1zR4qmHDVkEkIwBNAzs9rNEXcS4CL
	UaBcUxwWI70k9XLRqbDxubqveH5OvX5qNmqebPIqPj1/IsvAgF1AeBCHQ0ry62TqQKILrVGZnlLz4
	koW/5FjhAeWSjeqlYtV1+mexaJM8y3SYDnhN5oXMDyX07s7cTO0dVhCVSQXIMkTjnLqEgo6k0CIJO
	uMUzk2Tw==;
Received: from [189.7.87.137] (helo=[192.168.0.5])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wJuZu-005zRP-MK; Mon, 04 May 2026 16:47:22 +0200
Message-ID: <d4267251-e113-42ae-b756-ea1ab63f9f7e@igalia.com>
Date: Mon, 4 May 2026 11:47:14 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <ckoenig.leichtzumerken@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
 <6389c57fd1453b545709c15c5fa74aa76a3d9afa.camel@mailbox.org>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Content-Language: en-US
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
In-Reply-To: <6389c57fd1453b545709c15c5fa74aa76a3d9afa.camel@mailbox.org>
X-Spamd-Bar: ---
Message-ID-Hash: 6PNL4LEF2SXXND5KMCX45QAE5VJRGVRV
X-Message-ID-Hash: 6PNL4LEF2SXXND5KMCX45QAE5VJRGVRV
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6PNL4LEF2SXXND5KMCX45QAE5VJRGVRV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: DD2614C0052
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.698];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

SGkgQ2hyaXN0aWFuLA0KDQpXaGVuIHBvc3NpYmxlLCBjb3VsZCB5b3UgdGFrZSBhIGxvb2sgYXQg
dGhpcyBwYXRjaD8gSWYgeW91IGFyZSBva2F5IHdpdGgNCml0LCBJIGNhbiBhcHBseSBpdCB0byBk
cm0tbWlzYy1uZXh0Lg0KDQpCZXN0IHJlZ2FyZHMsDQotIE1hw61yYQ0KDQpPbiAyMC8wNC8yNiAw
NjoxOCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBTdW4sIDIwMjYtMDQtMTkgYXQgMTA6
NDggLTAzMDAsIE1hw61yYSBDYW5hbCB3cm90ZToNCj4+IFRoZSBrZXJuZWxkb2MgY29tbWVudCBv
biBkbWFfZmVuY2VfaW5pdCgpIGFuZCBkbWFfZmVuY2VfaW5pdDY0KCkgZGVzY3JpYmUNCj4+IHRo
ZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0ZXJuYWwgbG9jayBhcyBhIG5lZWQgdG8gcHJl
dmVudCBtdWx0aXBsZQ0KPj4gZmVuY2VzICJmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIiLiBI
b3dldmVyLCB0aGlzIHdvcmRpbmcgaXMgYSBiaXQNCj4+IG1pc2xlYWRpbmc6IGEgc2hhcmVkIHNw
aW5sb2NrIGRvZXMgbm90IChhbmQgY2Fubm90KSBwcmV2ZW50IHRoZSBzaWduYWxlcg0KPj4gZnJv
bSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWduYWxpbmcgb3JkZXIgaXMgdGhlIGRyaXZlcidz
IHJlc3BvbnNpYmlsaXR5DQo+PiByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIGxvY2sgaXMgc2hh
cmVkIG9yIHBlci1mZW5jZS4NCj4+DQo+PiBXaGF0IGEgc2hhcmVkIGxvY2sgYWN0dWFsbHkgcHJv
dmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxpbmcgYW5kDQo+PiBvYnNlcnZhdGlvbiBh
Y3Jvc3MgZmVuY2VzIGluIGEgZ2l2ZW4gY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXIN
Cj4+IHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxlIGFuIGVhcmxpZXIgb25lIGlzIG5v
dC4NCj4+DQo+PiBSZXdvcmQgYm90aCBjb21tZW50cyB0byBkZXNjcmliZSB0aGlzIG1vcmUgYWNj
dXJhdGVseS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2Fs
aWEuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5l
bC5vcmc+DQo+IA0KPj4NCj4+IC0tLQ0KPj4NCj4+IHYxIC0+IHYyOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA0MTExODU3NTYuMTg4NzExOS00LW1jYW5hbEBpZ2FsaWEu
Y29tLw0KPj4NCj4+IC0gQmUgbW9yZSBleHBsaWNpdCBhYm91dCBub3QgYWxsb3dpbmcgbmV3IHVz
ZXJzIHRvIHVzZSBhbiBleHRlcm5hbCBsb2NrLg0KPj4gLSBEZS1kdXBsaWNhdGUgdGhlIGV4cGxh
bmF0aW9uIGluIGRtYV9mZW5jZV9pbml0NjQoKSBieSBwb2ludGluZyB0byB0aGUNCj4+ICDCoCBk
bWFfZmVuY2VfaW5pdCgpIGRvY3VtZW50YXRpb24uDQo+PiAtLS0NCj4+ICDCoGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYyB8IDEzICsrKysrKystLS0tLS0NCj4+ICDCoDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0K
Pj4gaW5kZXggMWMxZWFlY2FmMWIwLi42M2IzNDliYTlhMzQgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KPj4gQEAgLTExMDIsOSArMTEwMiwxMSBAQCBfX2RtYV9mZW5jZV9pbml0KHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPj4gIMKg
ICogY29udGV4dCBhbmQgc2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVu
IGZlbmNlcywgYWxsb3dpbmcNCj4+ICDCoCAqIHRvIGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVy
IGJ5IHNpbXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4+ICDCoCAqDQo+PiAtICogSXQg
aXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJvdmlkZSBhbiBleHRlcm5hbCBsb2NrIGJlY2F1
c2UgdGhpcyBjb3VwbGVzDQo+PiAtICogbG9jayBhbmQgZmVuY2UgbGlmZSB0aW1lLiBUaGlzIGlz
IG9ubHkgYWxsb3dlZCBmb3IgbGVnYWN5IHVzZSBjYXNlcyB3aGVuDQo+PiAtICogbXVsdGlwbGUg
ZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4N
Cj4+ICsgKiBFeHRlcm5hbCBsb2NrcyBhcmUgYSByZWxpYyBmcm9tIGxlZ2FjeSB1c2UgY2FzZXMg
dGhhdCBuZWVkZWQgYSBzaGFyZWQgbG9jaw0KPj4gKyAqIHRvIHNlcmlhbGl6ZSBzaWduYWxpbmcg
YW5kIG9ic2VydmF0aW9uIG9mIGZlbmNlcyB3aXRoaW4gYSBjb250ZXh0LCBzbyB0aGF0DQo+PiAr
ICogb2JzZXJ2ZXJzIG5ldmVyIHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxlIGFuIGVh
cmxpZXIgb25lIGlzbid0LiBOZXcNCj4+ICsgKiB1c2VycyBNVVNUIE5PVCB1c2UgZXh0ZXJuYWwg
bG9ja3MsIGFzIHRoZXkgZm9yY2UgdGhlIGlzc3VlciB0byBvdXRsaXZlIGFsbA0KPj4gKyAqIGZl
bmNlcyB0aGF0IHJlZmVyZW5jZSB0aGUgbG9jay4NCj4+ICDCoCAqLw0KPj4gIMKgdm9pZA0KPj4g
IMKgZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzICpvcHMsDQo+PiBAQCAtMTEyOSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZTUJP
TChkbWFfZmVuY2VfaW5pdCk7DQo+PiAgwqAgKiBDb250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBm
b3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KPj4gIMKgICogdG8g
Y2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRl
cigpLg0KPj4gIMKgICoNCj4+IC0gKiBJdCBpcyBzdHJvbmdseSBkaXNjb3VyYWdlZCB0byBwcm92
aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0aGlzIGNvdXBsZXMNCj4+IC0gKiBsb2NrIGFu
ZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZvciBsZWdhY3kgdXNlIGNh
c2VzIHdoZW4NCj4+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50ZWQgZnJv
bSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4gKyAqIE5ldyB1c2VycyBNVVNUIE5PVCB1c2Ug
ZXh0ZXJuYWwgbG9ja3MuIENoZWNrIHRoZSBkb2N1bWVudGF0aW9uIGluDQo+PiArICogZG1hX2Zl
bmNlX2luaXQoKSB0byB1bmRlcnN0YW5kIHRoZSBtb3RpdmVzIGJlaGluZCB0aGUgbGVnYWN5IHVz
ZSBjYXNlcy4NCj4+ICDCoCAqLw0KPj4gIMKgdm9pZA0KPj4gIMKgZG1hX2ZlbmNlX2luaXQ2NChz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywN
Cj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
