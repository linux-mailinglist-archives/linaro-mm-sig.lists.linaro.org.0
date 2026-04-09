Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KC8zDO5k5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C6643431BB7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C155140501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:56 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 679863F763
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2026 13:59:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=MSFlSKBh;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cQyv2LnxUKMjBM+EOj064AVlbTpkbGhSbXBnBwtzWn0=; b=MSFlSKBh67kJ1UZ+jodufZmqM6
	ZRnMe7w4LtvMYi0/X4UYlmxBF11TKCKCpLGEdAw8azbovuId5HdABuuSoEEZ2sM2h4fCDKLwv3Ua0
	wClCrzN3+rQU1YwFUANnIu5Bk6qReZOvEvEKQ0xwx0iL0D4puHQgc4NQAByIOtLpIrCMdynQgcLru
	Kqtj0O4uaNEUG0Sf1fDtgFMyV8RviToihKGvmgDws89WpB5Rn8qYoJrxEHKWCWVFffq1Z/kTVtqL1
	kP10+umJ/hdDdIr9SQOrHKWs7JVHGLf05OMuWbxqZVovZuFPukMFxJJImIuwlu7OGivIN8mUWoldo
	YC+lFOng==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wApuB-00Dxtg-Um; Thu, 09 Apr 2026 15:58:47 +0200
Message-ID: <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
Date: Thu, 9 Apr 2026 14:58:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
 <20260331094944.772833c0@fedora>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <20260331094944.772833c0@fedora>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YX3IBFF3MZXJO6EK3TM5HNHKKKXJEFQ4
X-Message-ID-Hash: YX3IBFF3MZXJO6EK3TM5HNHKKKXJEFQ4
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:59 +0000
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YX3IBFF3MZXJO6EK3TM5HNHKKKXJEFQ4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[267];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email,collabora.com:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: C6643431BB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAzMS8wMy8yMDI2IDA4OjQ5LCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+IE9uIE1vbiwg
MzAgTWFyIDIwMjYgMTQ6MzY6MjMgKzAxMDANCj4gVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGlnYWxpYS5jb20+IHdyb3RlOg0KPiANCj4+IE1vdmUgdGhlIHNpZ25hbGxpbmcgdHJhY2Vw
b2ludCB0byBiZWZvcmUgZmVuY2UtPm9wcyBhcmUgcmVzZXQgb3RoZXJ3aXNlDQo+PiB0cmFjZXBv
aW50IHdpbGwgZGVyZWZlcmVuY2UgYSBudWxsIHBvaW50ZXIuDQo+IA0KPiBJIHN1c3BlY3Qgb3Ro
ZXIgdHJhY2UgcG9pbnRzIGFyZSBpbXBhY3RlZCB0b28NCj4gKHRyYWNlX2RtYV9mZW5jZV9kZXN0
cm95KCkgaXMsIGF0IHRoZSB2ZXJ5IGxlYXN0KS4NCg0KSW5kZWVkLiBJIHdvbmRlciB3aHkgdGhh
dCBkaWQgbm90IHRyaWdnZXIgZm9yIG1lLCB3aGlsZSB0aGUgb25lIEkgZml4IA0KaGVyZSB3YXMg
YW4gaW5zdGEtY3Jhc2guLi4NCg0KVG8gZml4IHRyYWNlX2RtYV9mZW5jZV9kZXN0cm95IEkgdGhp
bmsgd2UgbmVlZCBhIG5ldyB0cmFjZXBvaW50IA0KZGVmaW5pdGlvbiBpZS4gbW92ZSBpdCBhd2F5
IGZyb20gdGhlIGV4aXN0aW5nIGV2ZW50IGNsYXNzIC0gbWFrZSBpdCBqdXN0IA0KbG9nIHRoZSBj
b250ZXh0IGFuZCBzZXFuby4NCg0KQW55b25lIGhhcyBhIGJldHRlciBpZGVhPw0KDQpSZWdhcmRz
LA0KDQpUdnJ0a28NCg0KPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGlnYWxpYS5jb20+DQo+PiBGaXhlczogNTQxYzhmMjQ2OGI5ICgiZG1hLWJ1ZjogZGV0
YWNoIGZlbmNlIG9wcyBvbiBzaWduYWwgdjMiKQ0KPj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IENjOiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBr
ZXJuZWwub3JnPg0KPj4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxh
Ym9yYS5jb20+DQo+PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+PiBDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+PiAtLS0NCj4+ICAgZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIHwgMyArKy0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IGluZGV4IDE4MjZiYTcz
MDk0Yy4uMWMxZWFlY2FmMWIwIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IEBAIC0zNjMs
NiArMzYzLDggQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsDQo+PiAgIAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQo+PiAg
IAkJcmV0dXJuOw0KPj4gICANCj4+ICsJdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsN
Cj4+ICsNCj4+ICAgCS8qDQo+PiAgIAkgKiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdh
aXQgb3BlcmF0aW9uIGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0KPj4gICAJICogcG9pbnRlciB0
byBOVUxMIHRvIGFsbG93IHRoZSBmZW5jZSBzdHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50
DQo+PiBAQCAtMzc3LDcgKzM3OSw2IEBAIHZvaWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBf
bG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4gICANCj4+ICAgCWZlbmNlLT50aW1l
c3RhbXAgPSB0aW1lc3RhbXA7DQo+PiAgIAlzZXRfYml0KERNQV9GRU5DRV9GTEFHX1RJTUVTVEFN
UF9CSVQsICZmZW5jZS0+ZmxhZ3MpOw0KPj4gLQl0cmFjZV9kbWFfZmVuY2Vfc2lnbmFsZWQoZmVu
Y2UpOw0KPj4gICANCj4+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShjdXIsIHRtcCwgJmNi
X2xpc3QsIG5vZGUpIHsNCj4+ICAgCQlJTklUX0xJU1RfSEVBRCgmY3VyLT5ub2RlKTsNCj4gDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
