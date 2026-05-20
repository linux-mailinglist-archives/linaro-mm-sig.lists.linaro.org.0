Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKK2JMbSDWpP3gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:27:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D83C590CB4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:27:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2ED864097E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:27:01 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 684AB40976
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:26:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=arm.com header.s=foss header.b=quuL0OnN;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B668416A3;
	Wed, 20 May 2026 08:26:44 -0700 (PDT)
Received: from [10.57.33.178] (unknown [10.57.33.178])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B9BF3F632;
	Wed, 20 May 2026 08:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1779290809; bh=7n6+w/JNJIy9JBoZEpq6DMA9zKTx48lQeLJC8YLMxp4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=quuL0OnNg2zLJ2BDZ1cDhvpe34hP8cBpi4dNiIS7uWI9QJj/QpjNuoupzxo27MkGx
	 7LeMTtSADUfabpkVQChWMdtc+4mKpoJRgcnVPE6zou0KA1WiuebrMJEOWWZYcDDf6+
	 kwMaqTeo6QGyfMGTBU6A0OGpW+xw8UfHYagH5+v8=
Message-ID: <6923c228-b81e-4d02-b59c-a21b2212318e@arm.com>
Date: Wed, 20 May 2026 16:26:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Chia-I Wu <olvaffe@gmail.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
 <5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
 <CAPaKu7S9WMbJERrWa=bj5qyQg72no9MPex6S1MY6t8nXoMbB-Q@mail.gmail.com>
 <20260518104356.71827224@fedora>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20260518104356.71827224@fedora>
X-Spamd-Bar: ---
Message-ID-Hash: X3SC6JTYFE3XMSZQSWY6YQ567XSFTL4U
X-Message-ID-Hash: X3SC6JTYFE3XMSZQSWY6YQ567XSFTL4U
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3SC6JTYFE3XMSZQSWY6YQ567XSFTL4U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[steven.price@arm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2D83C590CB4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTgvMDUvMjAyNiAwOTo0MywgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBUaHUsIDE0
IE1heSAyMDI2IDEwOjA5OjEwIC0wNzAwDQo+IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+
IHdyb3RlOg0KPiANCj4+IE9uIFRodSwgTWF5IDE0LCAyMDI2IGF0IDY6MjTigK9BTSBTdGV2ZW4g
UHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPiB3cm90ZToNCj4+Pg0KPj4+IE9uIDEzLzA1LzIw
MjYgMTc6NTgsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPj4+PiBSaWdodCBub3cgcGFudGhv
ciBpcyBtaXhlZCBiYWcgb2YgbWFudWFsIGxvY2tzIGFuZCBndWFyZHMuIExldCdzDQo+Pj4+IG1h
a2UgdGhhdCBtb3JlIGNvbnNpdGVudCBhbmQgdGh1cyBlbmNvdXJhZ2UgbmV3IHN1Ym1pc3Npb25z
IHRvIGdvDQo+Pj4+IGZvciBndWFyZHMuICANCj4+Pg0KPj4+IEknbSBmaW5lIHdpdGggZW5jb3Vy
YWdpbmcgZ3VhcmRzIGZvciBmdXR1cmUgY29kZSAtIGJ1dCBJJ20gYSBsaXR0bGUgd2FyeQ0KPj4+
IG9mIGEgYmlnIGNoYW5nZSBsaWtlIHRoaXMgLSBpdCdzIGhhcmQgdG8gcmV2aWV3IGl0IGFuZCBj
aGVjayB0aGF0DQo+Pj4gZXZlcnl0aGluZyB3b3JrcyB0aGUgc2FtZS4gQW5kIGl0J3MgYSBsaXR0
bGUgZHViaW91cyB0aGF0IHRoZSBtZWNoYW5pY2FsDQo+Pj4gcmVmYWN0b3JpbmcgcHJvZHVjZXMg
bW9yZSByZWFkYWJsZSBjb2RlIGluIHNvbWUgY2FzZXMuICANCj4+IEkgYWdyZWUgd2l0aCBTdGV2
ZW4gaW4gZ2VuZXJhbCwgYWx0aG91Z2ggSSBhbSBpbiBmYXZvciBvZiBsYW5kaW5nIG5vdw0KPj4g
dGhhdCB5b3UndmUgZ29uZSB0aHJvdWdoIHRoZSB0cm91YmxlLg0KPiANCj4gSG9uZXN0bHksIEkg
YWdyZWUgd2l0aCB5b3UuIFRoZSBvbmx5IHJlYXNvbiBJIHdlbnQgZm9yIGl0IGlzDQo+IGJlY2F1
c2UgdGhlIG1peCB3ZSBoYXZlIHJpZ2h0IG5vdyBpcyBwcmV0dHkgY29uZnVzaW5nLiBUaGlzIGhh
cyB0byBkbw0KPiB3aXRoIHRoZSBmYWN0IHRoZSBzY29wZXMgYXJlIG9mdGVuIGxvb3NlbHkgZGVm
aW5lZCB1bmxlc3MgeW91IHVzZWQNCj4gc2NvcGVkX2d1YXJkKCksIHNvIGl0J3MgcHJldHR5IGVh
c3kgdG8gbWVzcyB1cCB0aGUgbG9jay91bmxvY2sNCj4gb3JkZXJpbmcuIEZvciBpbnN0YW5jZSwN
Cj4gDQo+IAltdXRleF9sb2NrKGxvY2thKTsNCj4gCWd1YXJkKGxvY2tiKTsNCj4gCW11dGV4X3Vu
bG9jayhsb2NrYSk7DQo+IA0KPiAJLi4uDQo+IA0KPiBvbmNlIGV4cGFuZGVkLCB0dXJucyBpbnRv
IGluY29uc2lzdGVudCBsb2NrZWQgc2VjdGlvbnMsIHdoZXJlIHRoZSBpbm5lcg0KPiBsb2NrIChs
b2NrYikgaXMgcmVsZWFzZWQgYWZ0ZXIgdGhlIG91dGVyIG9uZSAobG9ja2EpLg0KDQpJIHRoaW5r
IHRoYXQncyBhIGdvb2QgYXJndW1lbnQgZm9yIGdldHRpbmcgYWxsIHRoZSBndWFyZCBmb3JtcyBh
dmFpbGFibGUNCmJlZm9yZSB0YWNrbGluZyB0aGUgY29udmVyc2lvbi4gTW9zdGx5IEkgZmVlbCBs
aWtlIGl0IHdvdWxkIGJlIGJlbmVmaXQNCmZyb20gYmVpbmcgc3BsaXQgdXAgaW50byBtdWx0aXBs
ZSBwYXRjaGVzIChtYXliZSBvbmUgcGVyIGZpbGU/KSBzbyB0aGF0DQp0aGVyZSBhcmUgc21hbGxl
ciB1bml0cyB0byByZXZpZXcuDQoNCj4+DQo+PiBJIGFsc28gaGF2ZSBtaXhlZCBmZWVsaW5ncyBh
Ym91dCBzb21lIG9mIHRoZSBub24tc2NvcGVkIGd1YXJkcy4gVGhlaXINCj4+IHNjb3BlcyBhcmUg
ZXh0ZW5kZWQgc2xpZ2h0bHkgdGhhbiBiZWZvcmUsIHN1cHBvc2VkbHkgdG8gYXZvaWQgYWRkaW5n
DQo+PiBhbm90aGVyIGxldmVsIG9mIGluZGVudGF0aW9uLiBCdXQgb3RoZXIgdGhhbiBzbGlnaHRs
eSBzbG93ZXIsDQo+IA0KPiBJIHRyaWVkIHRvIHVzZWQgc2NvcGVkX2d1YXJkKClzIGV2ZXJ5IHdo
ZXJlIHRoZSBleHRyYSBub24tZ3VhcmRlZA0KPiBzZWN0aW9uIGNvdWxkIGJlIENQVSBoZWF2eSAo
dGhlIG9ubHkgYml0cyBsZWZ0IGFyZSBzb21lIHZlcnkgc2ltcGxlDQo+IGJpdC9hcml0aG1ldGlj
IG9wcywgYW5kIGEgY291cGxlIHF1ZXVlX3dvcmsoKSBJSVJDKS4NCj4gDQo+PiBpdCBhbHNvDQo+
PiBiZWNvbWVzIGxlc3MgY2xlYXIgd2hhdCBleGFjdGx5IGRvIHRoZSBndWFyZHMgcHJvdGVjdC4N
Cj4gDQo+IEkga25vdywgYW5kIEkgaGF2ZSBwcmV0dHkgbXVjaCB0aGUgc2FtZSBmZWVsaW5nLCBi
dXQgd2UndmUgY3Jvc3NlZCB0aGF0DQo+IGJyaWRnZSB3aGVuIHdlIHN0YXJ0ZWQgYWNjZXB0aW5n
IG5vbi1zY29wZWQgZ3VhcmQoKXMsIHVuZm9ydHVuYXRlbHkuDQoNClRoZSBwcm9ibGVtIHdpdGgg
c2NvcGVkIGd1YXJkcyBpcyB0aGUgZXh0cmEgbGV2ZWwgb2YgaW5kZW50YXRpb24uDQpQZXJzb25h
bGx5IEkgZmluZCBhIG1peHR1cmUgb2YgYWxsIHRocmVlIGlzIGFwcHJvcHJpYXRlIGRlcGVuZGlu
ZyBvbiB0aGUNCmNhc2UuDQoNCkUuZy4NCg0KaW50IHNtYWxsX3NpbXBsZV9mdW5jdGlvbigpIHsN
CglpZiAoc2ltcGxlX2NvbmRpdGlvbikNCgkJcmV0dXJuIGVhcmx5Ow0KDQoJZ3VhcmQobG9jayk7
DQoNCglpZiAoY29uZGl0aW9uX3RoYXRfbmVlZHNfbG9jaykNCgkJcmV0dXJuIGVhcmx5Ow0KCS8q
IG1vcmUgd29yayAqLw0KCXJldHVybiBsYXRlOw0KfQ0KDQpIZXJlIGl0J3MgZWFzeSB0byByZWFz
b24gYmVjYXVzZSB0aGUgbG9jayBpcyBqdXN0IGhlbGQgZm9yIHRoZSBkdXJhdGlvbg0Kb2YgdGhl
IGZ1bmN0aW9uIGFmdGVyIHRoZSBpbml0aWFsIGVhcmx5LW91dCBjb25kaXRpb24gaXMgY2hlY2tl
ZC4NCg0KaW50IHNob3J0X2xvY2soKSB7DQoJLyogYnVuY2ggb2Ygd29yayAqLw0KDQoJc2NvcGVk
X2d1YXJkKGxvY2spIHsNCgkJdG1wID0gcmVhZF92YWx1ZSgpOw0KCQlpZiAodG1wID09IDQyKQ0K
CQkJcmV0dXJuIC1FU09MT05HQU5EVEhBTktTRk9SQUxMVEhFRklTSDsNCgkJdG1wKys7DQoJCXdy
aXRlX3ZhbHVlKHRtcCk7DQoJfQ0KDQoJLyogbW9yZSB3b3JrICovDQp9DQoNCkhlcmUgdGhlcmUn
cyBhIHNtYWxsIHNlY3Rpb24gb2YgY29kZSB3aGljaCBpcyB3b3JraW5nIG9uIHRoZSBsb2NrLCBz
byBpdA0KbWFrZXMgc2Vuc2UgdG8gaW5kZW50IGl0IHRvIHNob3cgdGhlIGJvdW5kYXJpZXMgb2Yg
aXQuIFRoZSBvdGhlciBuaWNlDQp0aGluZyBpcyB0aGF0IHRoZSBlcnJvciByZXR1cm4gaGFuZGxl
cyB0aGUgbG9ja3MgZm9yIHVzLg0KDQppbnQgb2xkX2Zhc2hpb25lZCgpIHsNCglpZiAobG9ja19y
ZXF1aXJlZCkNCgkJbXV0ZXhfbG9jayhsb2NrKTsNCg0KCS8qIHNvbWUgd29yayAqLw0KDQoJaWYg
KGxvY2tfcmVxdWlyZWQpDQoJCW11dGV4X3VubG9jayhsb2NrKTsNCn0NCg0KR2VuZXJhbGx5IGEg
cGF0dGVybiB0byBiZSBhdm9pZGVkIGlmIHBvc3NpYmxlLCBidXQgSU1ITyB0aGlzIGlzIG11Y2gN
CmJldHRlciB0aGFuIHRoZSBlcXVpdmFsZW50IG9mOg0KDQppbnQgZG9kZ3lfZnVuY3Rpb24oKSB7
DQoJLyogc29tZSB3b3JrICovDQp9DQoNCmludCBvdXRlcl9mdW5jdGlvbigpIHsNCglpZiAobG9j
a19yZXF1aXJlZCkgew0KCQlzY29wZWRfZ3VhcmQobG9jaykNCgkJCWRvZGd5X2Z1bmN0aW9uKCk7
DQoJfSBlbHNlIHsNCgkJZG9kZ3lfZnVuY3Rpb24oKTsNCgl9DQp9DQoNCndoaWNoIHJlcXVpcmVz
IGJyZWFraW5nIG91dCB0aGUgd29yayBpbnRvIGFuIGV4dHJhIGZ1bmN0aW9uIGFuZA0KZHVwbGlj
YXRpbmcgdGhlIGNhbGwgKG9yIHdvcnNlIGR1cGxpY2F0aW5nIHRoZSBmdW5jdGlvbiBib2R5KS4N
Cg0KT25lIHRoaW5nIEkgZG8gYWdyZWUgaXMgdGhhdCBtaXhpbmcgYW5kIG1hdGNoaW5nIHdpdGhp
biB0aGUgc2FtZQ0KZnVuY3Rpb24gaXMgYSByZWNpcGUgZm9yIGNvbmZ1c2lvbiBhbmQgbWlzdGFr
ZXMuDQoNClRoYW5rcywNClN0ZXZlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
