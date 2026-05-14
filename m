Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGlEBzBPBmoaigIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 00:39:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A904B547897
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 00:39:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EE834046A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2026 22:39:42 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 1F8F63F6BD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 22:39:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=Zpu10FYE;
	spf=pass (lists.linaro.org: domain of mcanal@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=mcanal@igalia.com;
	dmarc=pass (policy=none) header.from=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Q/1w/pAVW95WK9YzKUDjOYOarf1ClcHbhkmttHS7cpI=; b=Zpu10FYEqHcf5dK5mAXU7fBhK7
	em6Ejvzaoyy8BTFnqAZIe0SI0dBEUhv4zrzj2VodLouEMeSd00khUXNEMPmi8NgUka83jpK6tSnSk
	wmsJN1XR94bx32Pvk2iO48yv+1G9WzwnrHU1VDsjCAnCGnjqn36M9zRDM/Ps28DYlUMfhQNP6uUck
	GMB4YDpGa7tv4bRmDrOhVrtDqg8qtGFl7ATRwo9N0ShIBkgy7iOlsE+Voz5B0oCbRbQZV6LrSJ0t/
	JFStnW0/Q7SrcF1vjt75mYYxwI0VXvjb0PHzMu02y3cVZmm6jbhZWR9KAD3OZu5iqp2fgKYm8STUt
	3gyNqxvg==;
Received: from [187.43.221.194] (helo=[172.20.10.2])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wNei7-000GaP-BI; Fri, 15 May 2026 00:39:19 +0200
Message-ID: <3c616d25-381e-43a7-af71-73bf0b9ee063@igalia.com>
Date: Thu, 14 May 2026 19:39:10 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
To: phasta@kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <ckoenig.leichtzumerken@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
 <6389c57fd1453b545709c15c5fa74aa76a3d9afa.camel@mailbox.org>
 <d4267251-e113-42ae-b756-ea1ab63f9f7e@igalia.com>
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
In-Reply-To: <d4267251-e113-42ae-b756-ea1ab63f9f7e@igalia.com>
X-Spamd-Bar: ---
Message-ID-Hash: A3HZPOGVX3ZPVA73EAQVO5YCFLMX57VR
X-Message-ID-Hash: A3HZPOGVX3ZPVA73EAQVO5YCFLMX57VR
X-MailFrom: mcanal@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A3HZPOGVX3ZPVA73EAQVO5YCFLMX57VR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: A904B547897
X-Rspamd-Server: lfdr
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
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,collabora.com,igalia.com,amd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.738];
	FROM_NEQ_ENVFROM(0.00)[mcanal@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,igalia.com:mid,linaro.org:email]
X-Rspamd-Action: no action

K2NjIENocmlzdGlhbidzIEFNRCBlLW1haWwNCg0KT24gNS80LzI2IDExOjQ3LCBNYcOtcmEgQ2Fu
YWwgd3JvdGU6DQo+IEhpIENocmlzdGlhbiwNCj4gDQo+IFdoZW4gcG9zc2libGUsIGNvdWxkIHlv
dSB0YWtlIGEgbG9vayBhdCB0aGlzIHBhdGNoPyBJZiB5b3UgYXJlIG9rYXkgd2l0aA0KPiBpdCwg
SSBjYW4gYXBwbHkgaXQgdG8gZHJtLW1pc2MtbmV4dC4NCg0KR2VudGxlIHBpbmcuDQoNCkJlc3Qg
cmVnYXJkcywNCi0gTWHDrXJhDQoNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLSBNYcOtcmENCj4g
DQo+IE9uIDIwLzA0LzI2IDA2OjE4LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+PiBPbiBTdW4s
IDIwMjYtMDQtMTkgYXQgMTA6NDggLTAzMDAsIE1hw61yYSBDYW5hbCB3cm90ZToNCj4+PiBUaGUg
a2VybmVsZG9jIGNvbW1lbnQgb24gZG1hX2ZlbmNlX2luaXQoKSBhbmQgZG1hX2ZlbmNlX2luaXQ2
NCgpIA0KPj4+IGRlc2NyaWJlDQo+Pj4gdGhlIGxlZ2FjeSByZWFzb24gdG8gcGFzcyBhbiBleHRl
cm5hbCBsb2NrIGFzIGEgbmVlZCB0byBwcmV2ZW50IG11bHRpcGxlDQo+Pj4gZmVuY2VzICJmcm9t
IHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIiLiBIb3dldmVyLCB0aGlzIHdvcmRpbmcgaXMgYSBiaXQN
Cj4+PiBtaXNsZWFkaW5nOiBhIHNoYXJlZCBzcGlubG9jayBkb2VzIG5vdCAoYW5kIGNhbm5vdCkg
cHJldmVudCB0aGUgc2lnbmFsZXINCj4+PiBmcm9tIHNpZ25hbGluZyBvdXQgb2Ygb3JkZXIuIFNp
Z25hbGluZyBvcmRlciBpcyB0aGUgZHJpdmVyJ3MgDQo+Pj4gcmVzcG9uc2liaWxpdHkNCj4+PiBy
ZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIGxvY2sgaXMgc2hhcmVkIG9yIHBlci1mZW5jZS4NCj4+
Pg0KPj4+IFdoYXQgYSBzaGFyZWQgbG9jayBhY3R1YWxseSBwcm92aWRlcyBpcyBzZXJpYWxpemF0
aW9uIG9mIHNpZ25hbGluZyBhbmQNCj4+PiBvYnNlcnZhdGlvbiBhY3Jvc3MgZmVuY2VzIGluIGEg
Z2l2ZW4gY29udGV4dCwgc28gdGhhdCBvYnNlcnZlcnMgbmV2ZXINCj4+PiBzZWUgYSBsYXRlciBm
ZW5jZSBzaWduYWxlZCB3aGlsZSBhbiBlYXJsaWVyIG9uZSBpcyBub3QuDQo+Pj4NCj4+PiBSZXdv
cmQgYm90aCBjb21tZW50cyB0byBkZXNjcmliZSB0aGlzIG1vcmUgYWNjdXJhdGVseS4NCj4+Pg0K
Pj4+IFNpZ25lZC1vZmYtYnk6IE1hw61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+DQo+Pg0K
Pj4gUmV2aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+Pg0K
Pj4+DQo+Pj4gLS0tDQo+Pj4NCj4+PiB2MSAtPiB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzIwMjYwNDExMTg1NzU2LjE4ODcxMTktNC0gDQo+Pj4gbWNhbmFsQGlnYWxpYS5j
b20vDQo+Pj4NCj4+PiAtIEJlIG1vcmUgZXhwbGljaXQgYWJvdXQgbm90IGFsbG93aW5nIG5ldyB1
c2VycyB0byB1c2UgYW4gZXh0ZXJuYWwgbG9jay4NCj4+PiAtIERlLWR1cGxpY2F0ZSB0aGUgZXhw
bGFuYXRpb24gaW4gZG1hX2ZlbmNlX2luaXQ2NCgpIGJ5IHBvaW50aW5nIHRvIHRoZQ0KPj4+IMKg
wqAgZG1hX2ZlbmNlX2luaXQoKSBkb2N1bWVudGF0aW9uLg0KPj4+IC0tLQ0KPj4+IMKgwqBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAxMyArKysrKysrLS0tLS0tDQo+Pj4gwqDCoDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+Pj4gaW5kZXggMWMxZWFlY2FmMWIwLi42M2IzNDliYTlhMzQgMTAwNjQ0DQo+
Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gQEAgLTExMDIsOSArMTEwMiwxMSBAQCBfX2RtYV9mZW5j
ZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCANCj4+PiBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyAqb3BzLA0KPj4+IMKgwqAgKiBjb250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBmb3Ig
ZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCANCj4+PiBhbGxvd2luZw0KPj4+IMKgwqAg
KiB0byBjaGVjayB3aGljaCBmZW5jZSBpcyBsYXRlciBieSBzaW1wbHkgdXNpbmcgZG1hX2ZlbmNl
X2xhdGVyKCkuDQo+Pj4gwqDCoCAqDQo+Pj4gLSAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJhZ2Vk
IHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIA0KPj4+IHRoaXMgY291cGxlcw0K
Pj4+IC0gKiBsb2NrIGFuZCBmZW5jZSBsaWZlIHRpbWUuIFRoaXMgaXMgb25seSBhbGxvd2VkIGZv
ciBsZWdhY3kgdXNlIA0KPj4+IGNhc2VzIHdoZW4NCj4+PiAtICogbXVsdGlwbGUgZmVuY2VzIG5l
ZWQgdG8gYmUgcHJldmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4+PiArICog
RXh0ZXJuYWwgbG9ja3MgYXJlIGEgcmVsaWMgZnJvbSBsZWdhY3kgdXNlIGNhc2VzIHRoYXQgbmVl
ZGVkIGEgDQo+Pj4gc2hhcmVkIGxvY2sNCj4+PiArICogdG8gc2VyaWFsaXplIHNpZ25hbGluZyBh
bmQgb2JzZXJ2YXRpb24gb2YgZmVuY2VzIHdpdGhpbiBhIA0KPj4+IGNvbnRleHQsIHNvIHRoYXQN
Cj4+PiArICogb2JzZXJ2ZXJzIG5ldmVyIHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxl
IGFuIGVhcmxpZXIgb25lIA0KPj4+IGlzbid0LiBOZXcNCj4+PiArICogdXNlcnMgTVVTVCBOT1Qg
dXNlIGV4dGVybmFsIGxvY2tzLCBhcyB0aGV5IGZvcmNlIHRoZSBpc3N1ZXIgdG8gDQo+Pj4gb3V0
bGl2ZSBhbGwNCj4+PiArICogZmVuY2VzIHRoYXQgcmVmZXJlbmNlIHRoZSBsb2NrLg0KPj4+IMKg
wqAgKi8NCj4+PiDCoMKgdm9pZA0KPj4+IMKgwqBkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgDQo+Pj4gKm9wcywNCj4+PiBA
QCAtMTEyOSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfaW5pdCk7DQo+Pj4g
wqDCoCAqIENvbnRleHQgYW5kIHNlcW5vIGFyZSB1c2VkIGZvciBlYXN5IGNvbXBhcmlzb24gYmV0
d2VlbiBmZW5jZXMsIA0KPj4+IGFsbG93aW5nDQo+Pj4gwqDCoCAqIHRvIGNoZWNrIHdoaWNoIGZl
bmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2luZyBkbWFfZmVuY2VfbGF0ZXIoKS4NCj4+PiDCoMKg
ICoNCj4+PiAtICogSXQgaXMgc3Ryb25nbHkgZGlzY291cmFnZWQgdG8gcHJvdmlkZSBhbiBleHRl
cm5hbCBsb2NrIGJlY2F1c2UgDQo+Pj4gdGhpcyBjb3VwbGVzDQo+Pj4gLSAqIGxvY2sgYW5kIGZl
bmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2FjeSB1c2UgDQo+Pj4g
Y2FzZXMgd2hlbg0KPj4+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBiZSBwcmV2ZW50ZWQg
ZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4+ICsgKiBOZXcgdXNlcnMgTVVTVCBOT1Qg
dXNlIGV4dGVybmFsIGxvY2tzLiBDaGVjayB0aGUgZG9jdW1lbnRhdGlvbiBpbg0KPj4+ICsgKiBk
bWFfZmVuY2VfaW5pdCgpIHRvIHVuZGVyc3RhbmQgdGhlIG1vdGl2ZXMgYmVoaW5kIHRoZSBsZWdh
Y3kgdXNlIA0KPj4+IGNhc2VzLg0KPj4+IMKgwqAgKi8NCj4+PiDCoMKgdm9pZA0KPj4+IMKgwqBk
bWFfZmVuY2VfaW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgDQo+
Pj4gZG1hX2ZlbmNlX29wcyAqb3BzLA0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
