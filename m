Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHoLOzQtA2oR1QEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 15:37:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8284B5215B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 15:37:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D79FB401F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2026 13:37:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 8DD3B3EC66
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 13:37:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=ftN0AZyI;
	spf=pass (lists.linaro.org: domain of liviu.dudau@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=liviu.dudau@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B699B302C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 06:37:41 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C68873FA1F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2026 06:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1778593067; bh=Gvl4cEd1ZiXBIpJHrKLmqu+T8vzwYIr7JhCY27iDUns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ftN0AZyItJ2dngm0G9zTHupB9W6i+mrlIXjCL6WA41Wr4qH1StPZ4WQTM2p3g/if+
	 FnYfTnOgjzj5I7o5dp8HJWb5li18DcIIr/2GsyKXgIUeb4R72OLlHIzam3R7CiWHrw
	 4JwmpfgnUxm1RSarlRnFVDT5oOGCdkRtVylF4kmM=
Date: Tue, 12 May 2026 14:37:21 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Ketil Johnsen <ketil.johnsen@arm.com>
Message-ID: <agMtEXOqPGEwKuwt@e142607>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-4-ketil.johnsen@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260505140516.1372388-4-ketil.johnsen@arm.com>
X-Spamd-Bar: ---
Message-ID-Hash: 67YOVGD65C5X6HYTNC2NMEZ4BJEZ3KAH
X-Message-ID-Hash: 67YOVGD65C5X6HYTNC2NMEZ4BJEZ3KAH
X-MailFrom: liviu.dudau@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.in
 fradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/8] drm/panthor: De-duplicate FW memory section sync
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/67YOVGD65C5X6HYTNC2NMEZ4BJEZ3KAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 8284B5215B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,arm.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.in,lists.infradead.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gVHVlLCBNYXkgMDUsIDIwMjYgYXQgMDQ6MDU6MDlQTSArMDIwMCwgS2V0aWwgSm9obnNlbiB3
cm90ZToNCj4gSGFuZGxlIHRoZSBzeW5jIHRvIGRldmljZSBvZiBGVyBtZW1vcnkgc2VjdGlvbnMg
aW5zaWRlDQo+IHBhbnRob3JfZndfaW5pdF9zZWN0aW9uX21lbSgpIHNvIHRoYXQgdGhlIGNhbGxl
cnMgZG8gbm90IGhhdmUgdG8uDQo+IA0KPiBUaGlzIHNtYWxsIGltcHJvdmVtZW50IGlzIGFsc28g
Y3JpdGljYWwgZm9yIHByb3RlY3RlZCBGVyBzZWN0aW9ucywNCj4gc28gd2UgYXZvaWQgaXNzdWlu
ZyBtZW1vcnkgdHJhbnNhY3Rpb25zIHRvIHByb3RlY3RlZCBtZW1vcnkgZnJvbQ0KPiBDUFUgcnVu
bmluZyBpbiBub3JtYWwgbW9kZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEtldGlsIEpvaG5zZW4g
PGtldGlsLmpvaG5zZW5AYXJtLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IExpdml1IER1ZGF1IDxsaXZp
dS5kdWRhdUBhcm0uY29tPg0KDQpCZXN0IHJlZ2FyZHMsDQpMaXZpdQ0KDQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9mdy5jIHwgMjIgKysrKysrLS0tLS0tLS0tLS0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9mdy5j
IGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9mdy5jDQo+IGluZGV4IGJlMGRhNWIx
ZjNhYmYuLjBkMDdhMTMzZGMzYWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW50
aG9yL3BhbnRob3JfZncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9y
X2Z3LmMNCj4gQEAgLTQ0Niw2ICs0NDYsNyBAQCBzdGF0aWMgdm9pZCBwYW50aG9yX2Z3X2luaXRf
c2VjdGlvbl9tZW0oc3RydWN0IHBhbnRob3JfZGV2aWNlICpwdGRldiwNCj4gIAkJCQkJc3RydWN0
IHBhbnRob3JfZndfc2VjdGlvbiAqc2VjdGlvbikNCj4gIHsNCj4gIAlib29sIHdhc19tYXBwZWQg
PSAhIXNlY3Rpb24tPm1lbS0+a21hcDsNCj4gKwlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsNCj4gIAlp
bnQgcmV0Ow0KPiAgDQo+ICAJaWYgKCFzZWN0aW9uLT5kYXRhLnNpemUgJiYNCj4gQEAgLTQ2NCw2
ICs0NjUsMTEgQEAgc3RhdGljIHZvaWQgcGFudGhvcl9md19pbml0X3NlY3Rpb25fbWVtKHN0cnVj
dCBwYW50aG9yX2RldmljZSAqcHRkZXYsDQo+ICANCj4gIAlpZiAoIXdhc19tYXBwZWQpDQo+ICAJ
CXBhbnRob3Jfa2VybmVsX2JvX3Z1bm1hcChzZWN0aW9uLT5tZW0pOw0KPiArDQo+ICsJLyogQW4g
c2d0IHNob3VsZCBoYXZlIGJlZW4gcmVxdWVzdGVkIHdoZW4gdGhlIGtlcm5lbCBCTyB3YXMgR1BV
LW1hcHBlZC4gKi8NCj4gKwlzZ3QgPSB0b19wYW50aG9yX2JvKHNlY3Rpb24tPm1lbS0+b2JqKS0+
ZG1hcC5zZ3Q7DQo+ICsJaWYgKCFkcm1fV0FSTl9PTl9PTkNFKCZwdGRldi0+YmFzZSwgIXNndCkp
DQo+ICsJCWRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShwdGRldi0+YmFzZS5kZXYsIHNndCwg
RE1BX1RPX0RFVklDRSk7DQo+ICB9DQo+ICANCj4gIC8qKg0KPiBAQCAtNjI2LDcgKzYzMiw2IEBA
IHN0YXRpYyBpbnQgcGFudGhvcl9md19sb2FkX3NlY3Rpb25fZW50cnkoc3RydWN0IHBhbnRob3Jf
ZGV2aWNlICpwdGRldiwNCj4gIAlzZWN0aW9uX3NpemUgPSBoZHIudmEuZW5kIC0gaGRyLnZhLnN0
YXJ0Ow0KPiAgCWlmIChzZWN0aW9uX3NpemUpIHsNCj4gIAkJdTMyIGNhY2hlX21vZGUgPSBoZHIu
ZmxhZ3MgJiBDU0ZfRldfQklOQVJZX0lGQUNFX0VOVFJZX0NBQ0hFX01PREVfTUFTSzsNCj4gLQkJ
c3RydWN0IHBhbnRob3JfZ2VtX29iamVjdCAqYm87DQo+ICAJCXUzMiB2bV9tYXBfZmxhZ3MgPSAw
Ow0KPiAgCQl1NjQgdmEgPSBoZHIudmEuc3RhcnQ7DQo+ICANCj4gQEAgLTY2MywxNCArNjY4LDYg
QEAgc3RhdGljIGludCBwYW50aG9yX2Z3X2xvYWRfc2VjdGlvbl9lbnRyeShzdHJ1Y3QgcGFudGhv
cl9kZXZpY2UgKnB0ZGV2LA0KPiAgCQl9DQo+ICANCj4gIAkJcGFudGhvcl9md19pbml0X3NlY3Rp
b25fbWVtKHB0ZGV2LCBzZWN0aW9uKTsNCj4gLQ0KPiAtCQlibyA9IHRvX3BhbnRob3JfYm8oc2Vj
dGlvbi0+bWVtLT5vYmopOw0KPiAtDQo+IC0JCS8qIEFuIHNndCBzaG91bGQgaGF2ZSBiZWVuIHJl
cXVlc3RlZCB3aGVuIHRoZSBrZXJuZWwgQk8gd2FzIEdQVS1tYXBwZWQuICovDQo+IC0JCWlmIChk
cm1fV0FSTl9PTl9PTkNFKCZwdGRldi0+YmFzZSwgIWJvLT5kbWFwLnNndCkpDQo+IC0JCQlyZXR1
cm4gLUVJTlZBTDsNCj4gLQ0KPiAtCQlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UocHRkZXYt
PmJhc2UuZGV2LCBiby0+ZG1hcC5zZ3QsIERNQV9UT19ERVZJQ0UpOw0KPiAgCX0NCj4gIA0KPiAg
CWlmIChoZHIudmEuc3RhcnQgPT0gQ1NGX01DVV9TSEFSRURfUkVHSU9OX1NUQVJUKQ0KPiBAQCAt
NzI0LDE3ICs3MjEsMTAgQEAgcGFudGhvcl9yZWxvYWRfZndfc2VjdGlvbnMoc3RydWN0IHBhbnRo
b3JfZGV2aWNlICpwdGRldiwgYm9vbCBmdWxsX3JlbG9hZCkNCj4gIAlzdHJ1Y3QgcGFudGhvcl9m
d19zZWN0aW9uICpzZWN0aW9uOw0KPiAgDQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShzZWN0aW9u
LCAmcHRkZXYtPmZ3LT5zZWN0aW9ucywgbm9kZSkgew0KPiAtCQlzdHJ1Y3Qgc2dfdGFibGUgKnNn
dDsNCj4gLQ0KPiAgCQlpZiAoIWZ1bGxfcmVsb2FkICYmICEoc2VjdGlvbi0+ZmxhZ3MgJiBDU0Zf
RldfQklOQVJZX0lGQUNFX0VOVFJZX1dSKSkNCj4gIAkJCWNvbnRpbnVlOw0KPiAgDQo+ICAJCXBh
bnRob3JfZndfaW5pdF9zZWN0aW9uX21lbShwdGRldiwgc2VjdGlvbik7DQo+IC0NCj4gLQkJLyog
QW4gc2d0IHNob3VsZCBoYXZlIGJlZW4gcmVxdWVzdGVkIHdoZW4gdGhlIGtlcm5lbCBCTyB3YXMg
R1BVLW1hcHBlZC4gKi8NCj4gLQkJc2d0ID0gdG9fcGFudGhvcl9ibyhzZWN0aW9uLT5tZW0tPm9i
aiktPmRtYXAuc2d0Ow0KPiAtCQlpZiAoIWRybV9XQVJOX09OX09OQ0UoJnB0ZGV2LT5iYXNlLCAh
c2d0KSkNCj4gLQkJCWRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShwdGRldi0+YmFzZS5kZXYs
IHNndCwgRE1BX1RPX0RFVklDRSk7DQo+ICAJfQ0KPiAgfQ0KPiAgDQo+IC0tIA0KPiAyLjQzLjAN
Cj4gDQoNCi0tIA0KPT09PT09PT09PT09PT09PT09PT0NCnwgSSB3b3VsZCBsaWtlIHRvIHwNCnwg
Zml4IHRoZSB3b3JsZCwgIHwNCnwgYnV0IHRoZXkncmUgbm90IHwNCnwgZ2l2aW5nIG1lIHRoZSAg
IHwNCiBcIHNvdXJjZSBjb2RlISAgLw0KICAtLS0tLS0tLS0tLS0tLS0NCiAgICDCr1xfKOODhClf
L8KvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
