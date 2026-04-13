Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDQSM6dl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C48431E34
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:43:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B08F4046B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:43:02 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id C8C2C402AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 12:26:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b="PJbnMBF/";
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ag/JUOaFdk9sxg+FZ/AmkquyB95znwr7N44nZeGTJSk=; b=PJbnMBF/sXGtPXVyWelfbjUF4u
	X/J2OnzphWXfM8zuP2BR/k4o0/tKQLU8eMROPE5ikA7yL7Qby9FKmB/aXpb2jgjx2EgkxrgMe6E9o
	GQJ8ClwGMQmXgnL4GUYtNQJNimx0CxE7Oi2eUEPZyb9Z4q8rZT+hn3moVJvYy4Cex2uf4Vo4T103j
	wg1HP88D1MSNHCXxU6CWoZmPjkPuDKJrgv0VIhTvOe1H4GUEiJTmrYBZqe2WyIXHe+u8/rxgyNkRK
	7Hw4cbz4Pb71huHwX3LxxsTXNBMizyfd5kXxuHCiolooRFqxEi/5Xv/TkoT/L1qCXIhbJPd8y0OBN
	63S/bhZQ==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wCGMh-00FOjp-7M; Mon, 13 Apr 2026 14:26:07 +0200
Message-ID: <7efae858-c074-4027-93df-d6efaeba236e@igalia.com>
Date: Mon, 13 Apr 2026 13:26:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
References: <20260413100526.15729-1-tvrtko.ursulin@igalia.com>
 <20260413100526.15729-2-tvrtko.ursulin@igalia.com>
 <db5342f2-c098-4b27-9522-8b1f78fdc43a@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <db5342f2-c098-4b27-9522-8b1f78fdc43a@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NKMMSB7MHQZXC5TITDFCAQYCXB7LEFYH
X-Message-ID-Hash: NKMMSB7MHQZXC5TITDFCAQYCXB7LEFYH
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:26 +0000
CC: kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-fence: Fix potential tracepoint null pointer dereferences
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKMMSB7MHQZXC5TITDFCAQYCXB7LEFYH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[173];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email,igalia.com:mid,igalia.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 88C48431E34
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8wNC8yMDI2IDEyOjMyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA0LzEz
LzI2IDEyOjA1LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+IFRyYWNlX2RtYV9mZW5jZV9zaWdu
YWxlZCwgdHJhY2VfZG1hX2ZlbmNlX3dhaXRfZW5kIGFuZA0KPj4gdHJhY2VfZG1hX2ZlbmNlX2Rl
c3Ryb3kgY2FuIGFsbCBkZXJlZmVyZW5jZSBhIG51bGwgZmVuY2UtPm9wcyBwb2ludGVyDQo+PiBh
ZnRlciBpdCBoYXMgYmVlbiByZXNldCBvbiBmZW5jZSBzaWduYWxsaW5nLg0KPj4NCj4+IExldHMg
dXNlIHRoZSBzYWZlIHN0cmluZyBnZXR0ZXJzIGZvciBtb3N0IHRyYWNlcG9pbnRzIHRvIGEgdm9p
ZCB0aGlzLg0KPj4NCj4+IEJ1dCBmb3IgdGhlIHNpZ25hbGxpbmcgdHJhY2Vwb2ludCwgd2UgbW92
ZSBpdCB0byBiZWZvcmUgdGhlIGZlbmNlLT5vcHMNCj4+IGlzIHJlc2V0IGFuZCBzcGVjaWFsIGNh
c2UgaXRzIGRlZmluaXRpb24gaW4gb3JkZXIgdG8gYXZvaWQgbG9zaW5nIHRoZQ0KPj4gZHJpdmVy
IGFuZCB0aW1lbGluZSBpbmZvcm1hdGlvbi4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4+IEZpeGVzOiA1NDFjOGYyNDY4
YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3BzIG9uIHNpZ25hbCB2MyIpDQo+PiBDYzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gQ2M6IFBoaWxpcHAg
U3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcNCj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4+IC0tLQ0KPj4g
ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICB8ICAzICsrLQ0KPj4gICBpbmNsdWRl
L3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tDQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBpbmRleCBhMmFhODJmNGVlZGQuLmIzYmZhNjk0
M2E4ZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+PiBAQCAtMzYzLDYgKzM2Myw4IEBAIHZv
aWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLA0KPj4gICAJCQkJICAgICAgJmZlbmNlLT5mbGFncykpKQ0KPj4gICAJCXJldHVybjsNCj4+
ICAgDQo+PiArCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7DQo+PiArDQo+PiAgIAkv
Kg0KPj4gICAJICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBp
cyBzcGVjaWZpZWQgc2V0IHRoZSBvcHMNCj4+ICAgCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxv
dyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KPj4gQEAgLTM3Nyw3
ICszNzksNiBAQCB2b2lkIGRtYV9mZW5jZV9zaWduYWxfdGltZXN0YW1wX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCj4+ICAgDQo+PiAgIAlmZW5jZS0+dGltZXN0YW1wID0gdGltZXN0
YW1wOw0KPj4gICAJc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULCAmZmVuY2Ut
PmZsYWdzKTsNCj4+IC0JdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsNCj4+ICAgDQo+
PiAgIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAsICZjYl9saXN0LCBub2RlKSB7
DQo+PiAgIAkJSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7DQo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS90cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmggYi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFf
ZmVuY2UuaA0KPj4gaW5kZXggM2FiYmE0NWMwNjAxLi4yMjBiZjcxNDQ2ZTggMTAwNjQ0DQo+PiAt
LS0gYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KPj4gKysrIGIvaW5jbHVkZS90
cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmgNCj4+IEBAIC05LDEyICs5LDM3IEBADQo+PiAgIA0KPj4g
ICBzdHJ1Y3QgZG1hX2ZlbmNlOw0KPj4gICANCj4+ICtERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9m
ZW5jZSwNCj4+ICsNCj4+ICsJVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPj4g
Kw0KPj4gKwlUUF9BUkdTKGZlbmNlKSwNCj4+ICsNCj4+ICsJVFBfU1RSVUNUX19lbnRyeSgNCj4+
ICsJCV9fc3RyaW5nKGRyaXZlciwgZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZlbmNlKSkNCj4+ICsJ
CV9fc3RyaW5nKHRpbWVsaW5lLCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmZW5jZSkpDQo+IA0K
PiANCj4gVGhhdCByZXF1aXJlcyB0aGF0IHdlIGhvbGQgdGhlIFJDVSByZWFkIHNpZGUgbG9jayB3
aGlsZSBkb2luZyB0aGUgdHJhY2UuDQoNClRydWUsIGFuZCBhY3R1YWxseSAzLzMgbmVlZHMgdG8g
YmUgc3F1YXNoZWQgaW4gMi8zIGFuZCB0aGVuIGl0IGlzIGFsbCANCmZpbmUuIFRoZW4gYWxsIHRy
YWNlcG9pbnRzIHdoaWNoIHVzZSBkbWFfZmVuY2VfKl9uYW1lKCkgaGVscGVycyBhcmUgDQppbnNp
ZGUgcmN1X3JlYWRfbG9jaywgYW5kIG9uZXMgd2hpY2ggZG8gbm90IHVzZSB0aGUgZG1hX2ZlbmNl
X29wcyBjbGFzcyANCndoZXJlIHRoZXkgYXJlIGd1YXJhbnRlZWQgdG8gYmUgYmUgc2FmZS4NCg0K
PiBOb3Qgc3VyZSBpZiB0aGF0IGNhbiBiZSBkb25lIGluc2lkZSB0aGUgREVDTEFSRV9FVkVOVF9D
TEFTUygpIG1hY3JvLg0KDQpObyBpZGVhLg0KDQo+PiArCQlfX2ZpZWxkKHVuc2lnbmVkIGludCwg
Y29udGV4dCkNCj4+ICsJCV9fZmllbGQodW5zaWduZWQgaW50LCBzZXFubykNCj4+ICsJKSwNCj4+
ICsNCj4+ICsJVFBfZmFzdF9hc3NpZ24oDQo+PiArCQlfX2Fzc2lnbl9zdHIoZHJpdmVyKTsNCj4+
ICsJCV9fYXNzaWduX3N0cih0aW1lbGluZSk7DQo+PiArCQlfX2VudHJ5LT5jb250ZXh0ID0gZmVu
Y2UtPmNvbnRleHQ7DQo+PiArCQlfX2VudHJ5LT5zZXFubyA9IGZlbmNlLT5zZXFubzsNCj4+ICsJ
KSwNCj4+ICsNCj4+ICsJVFBfcHJpbnRrKCJkcml2ZXI9JXMgdGltZWxpbmU9JXMgY29udGV4dD0l
dSBzZXFubz0ldSIsDQo+PiArCQkgIF9fZ2V0X3N0cihkcml2ZXIpLCBfX2dldF9zdHIodGltZWxp
bmUpLCBfX2VudHJ5LT5jb250ZXh0LA0KPj4gKwkJICBfX2VudHJ5LT5zZXFubykNCj4+ICspOw0K
Pj4gKw0KPj4gICAvKg0KPj4gICAgKiBTYWZlIG9ubHkgZm9yIGNhbGwgc2l0ZXMgd2hpY2ggYXJl
IGd1YXJhbnRlZWQgdG8gbm90IHJhY2Ugd2l0aCBmZW5jZQ0KPj4gICAgKiBzaWduYWxpbmcsaG9s
ZGluZyB0aGUgZmVuY2UtPmxvY2sgYW5kIGhhdmluZyBjaGVja2VkIGZvciBub3Qgc2lnbmFsZWQs
IG9yIHRoZQ0KPj4gICAgKiBzaWduYWxpbmcgcGF0aCBpdHNlbGYuDQo+PiAgICAqLw0KPj4gLURF
Q0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlLA0KPj4gK0RFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1h
X2ZlbmNlX29wcywNCj4+ICAgDQo+PiAgIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSksDQo+PiAgIA0KPj4gQEAgLTY3LDcgKzkyLDcgQEAgREVGSU5FX0VWRU5UKGRtYV9mZW5jZSwg
ZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWwsDQo+PiAgIAlUUF9BUkdTKGZlbmNlKQ0KPj4gICApOw0K
Pj4gICANCj4+IC1ERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vfc2lnbmFsZWQsDQo+
PiArREVGSU5FX0VWRU5UKGRtYV9mZW5jZV9vcHMsIGRtYV9mZW5jZV9zaWduYWxlZCwNCj4gDQo+
IFRoZSBzaWduYWwgdHJhY2UgZXZlbnQgaXMgYWN0dWFsbHkgdW5wcm9ibGVtYXRpYy4gVGhlIHF1
ZXN0aW9uIGlzIG1vcmUgd2hhdCB0byBkbyB3aXRoIHRoZSByZWxlYXNlIGV2ZW50Lg0KDQpZZXMs
IHVucHJvYmxlbWF0aWMgYWZ0ZXIgZml4ZWQgaW4gdGhpcyBwYXRjaCwgb3IgeW91IG1lYW4gc29t
ZXRoaW5nIGVsc2U/DQoNCnRyYWNlX2RtYV9mZW5jZV9kZXN0cm95IGlzIGZpbmUgYWZ0ZXIgdGhp
cyBwYXRjaCBBRkFJQ1MgYW5kIEkgZGlkIHRlc3QgaXQuDQoNClJlZ2FyZHMsDQoNClR2cnRrbw0K
DQo+PiAgIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQo+PiAgIA0KPiANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
