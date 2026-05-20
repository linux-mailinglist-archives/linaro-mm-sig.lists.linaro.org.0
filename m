Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ME18JK/WDWrW3wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:43:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 154C6591206
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:43:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06D154097D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:43:42 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 442B140976
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:43:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=HoeYbLia;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779291809;
	bh=MgOPJ3g4k/Sd1Uy5PB5GjtzudKeuPuMOgaOEFszVSoU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HoeYbLiaMxFVE1idvpGrN7Pl5Scv047VDtJDyth+rQH170g8+897HpqgoRONj3hUc
	 ec2Q5jzx1oLZdluOD2yzRr6DeU6MEuxVi+RCcFXaEfh4FBiPYmeSOKRN2JtJp10oJ0
	 0Vdm3vv70MyVmYLM0oIB1ZMDryeU9QabLz8bUSALuUPE89BXanfOlc6CtI8TifSrfs
	 R9lYbqAkEmr4MlAURCJYuq+lV0GJ90zGx+GIoStWI/Rz6VhNrqtdIxVH6ZMG5MUIWi
	 FrY0fMTzpQosmcJat7OYMNVNq2ExzrKhJIVyDf2bYhx3XTaa791wATB90+5fyTKyzo
	 faSLEFj7+LvDA==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 773BE17E124B;
	Wed, 20 May 2026 17:43:28 +0200 (CEST)
Date: Wed, 20 May 2026 17:43:24 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Steven Price <steven.price@arm.com>
Message-ID: <20260520174324.1dfafa0c@fedora>
In-Reply-To: <6923c228-b81e-4d02-b59c-a21b2212318e@arm.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-1-f2d8c15a97ce@collabora.com>
	<5ab2d07c-74a4-4a2c-b145-6ed7b0060944@arm.com>
	<CAPaKu7S9WMbJERrWa=bj5qyQg72no9MPex6S1MY6t8nXoMbB-Q@mail.gmail.com>
	<20260518104356.71827224@fedora>
	<6923c228-b81e-4d02-b59c-a21b2212318e@arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 6MZR64GKMKKKZAD73FEIYN6TJM2DINSZ
X-Message-ID-Hash: 6MZR64GKMKKKZAD73FEIYN6TJM2DINSZ
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Chia-I Wu <olvaffe@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/6] drm/panthor: Driver-wide xxx_[un]lock -> [scoped_]guard replacement
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MZR64GKMKKKZAD73FEIYN6TJM2DINSZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 154C6591206
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMCBNYXkgMjAyNiAxNjoyNjo0MiArMDEwMA0KU3RldmVuIFByaWNlIDxzdGV2ZW4u
cHJpY2VAYXJtLmNvbT4gd3JvdGU6DQoNCj4gT24gMTgvMDUvMjAyNiAwOTo0MywgQm9yaXMgQnJl
emlsbG9uIHdyb3RlOg0KPiA+IE9uIFRodSwgMTQgTWF5IDIwMjYgMTA6MDk6MTAgLTA3MDANCj4g
PiBDaGlhLUkgV3UgPG9sdmFmZmVAZ21haWwuY29tPiB3cm90ZToNCj4gPiAgIA0KPiA+PiBPbiBU
aHUsIE1heSAxNCwgMjAyNiBhdCA2OjI04oCvQU0gU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VA
YXJtLmNvbT4gd3JvdGU6ICANCj4gPj4+DQo+ID4+PiBPbiAxMy8wNS8yMDI2IDE3OjU4LCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6ICAgIA0KPiA+Pj4+IFJpZ2h0IG5vdyBwYW50aG9yIGlzIG1peGVk
IGJhZyBvZiBtYW51YWwgbG9ja3MgYW5kIGd1YXJkcy4gTGV0J3MNCj4gPj4+PiBtYWtlIHRoYXQg
bW9yZSBjb25zaXRlbnQgYW5kIHRodXMgZW5jb3VyYWdlIG5ldyBzdWJtaXNzaW9ucyB0byBnbw0K
PiA+Pj4+IGZvciBndWFyZHMuICAgIA0KPiA+Pj4NCj4gPj4+IEknbSBmaW5lIHdpdGggZW5jb3Vy
YWdpbmcgZ3VhcmRzIGZvciBmdXR1cmUgY29kZSAtIGJ1dCBJJ20gYSBsaXR0bGUgd2FyeQ0KPiA+
Pj4gb2YgYSBiaWcgY2hhbmdlIGxpa2UgdGhpcyAtIGl0J3MgaGFyZCB0byByZXZpZXcgaXQgYW5k
IGNoZWNrIHRoYXQNCj4gPj4+IGV2ZXJ5dGhpbmcgd29ya3MgdGhlIHNhbWUuIEFuZCBpdCdzIGEg
bGl0dGxlIGR1YmlvdXMgdGhhdCB0aGUgbWVjaGFuaWNhbA0KPiA+Pj4gcmVmYWN0b3JpbmcgcHJv
ZHVjZXMgbW9yZSByZWFkYWJsZSBjb2RlIGluIHNvbWUgY2FzZXMuICAgIA0KPiA+PiBJIGFncmVl
IHdpdGggU3RldmVuIGluIGdlbmVyYWwsIGFsdGhvdWdoIEkgYW0gaW4gZmF2b3Igb2YgbGFuZGlu
ZyBub3cNCj4gPj4gdGhhdCB5b3UndmUgZ29uZSB0aHJvdWdoIHRoZSB0cm91YmxlLiAgDQo+ID4g
DQo+ID4gSG9uZXN0bHksIEkgYWdyZWUgd2l0aCB5b3UuIFRoZSBvbmx5IHJlYXNvbiBJIHdlbnQg
Zm9yIGl0IGlzDQo+ID4gYmVjYXVzZSB0aGUgbWl4IHdlIGhhdmUgcmlnaHQgbm93IGlzIHByZXR0
eSBjb25mdXNpbmcuIFRoaXMgaGFzIHRvIGRvDQo+ID4gd2l0aCB0aGUgZmFjdCB0aGUgc2NvcGVz
IGFyZSBvZnRlbiBsb29zZWx5IGRlZmluZWQgdW5sZXNzIHlvdSB1c2VkDQo+ID4gc2NvcGVkX2d1
YXJkKCksIHNvIGl0J3MgcHJldHR5IGVhc3kgdG8gbWVzcyB1cCB0aGUgbG9jay91bmxvY2sNCj4g
PiBvcmRlcmluZy4gRm9yIGluc3RhbmNlLA0KPiA+IA0KPiA+IAltdXRleF9sb2NrKGxvY2thKTsN
Cj4gPiAJZ3VhcmQobG9ja2IpOw0KPiA+IAltdXRleF91bmxvY2sobG9ja2EpOw0KPiA+IA0KPiA+
IAkuLi4NCj4gPiANCj4gPiBvbmNlIGV4cGFuZGVkLCB0dXJucyBpbnRvIGluY29uc2lzdGVudCBs
b2NrZWQgc2VjdGlvbnMsIHdoZXJlIHRoZSBpbm5lcg0KPiA+IGxvY2sgKGxvY2tiKSBpcyByZWxl
YXNlZCBhZnRlciB0aGUgb3V0ZXIgb25lIChsb2NrYSkuICANCj4gDQo+IEkgdGhpbmsgdGhhdCdz
IGEgZ29vZCBhcmd1bWVudCBmb3IgZ2V0dGluZyBhbGwgdGhlIGd1YXJkIGZvcm1zIGF2YWlsYWJs
ZQ0KPiBiZWZvcmUgdGFja2xpbmcgdGhlIGNvbnZlcnNpb24uDQoNClllcCwgbWFrZXMgc2Vuc2Uu
IFRoZSByZWFzb24gSSBkaWRuJ3QgZ28gZm9yIHRoYXQgaW4gdjEgaXMgYmVjYXVzZSBJDQp3YXNu
J3Qgc3VyZSBob3cgd2VsbCB0aGUgbmV3IGd1YXJkIGRlZmluaXRpb24gd291bGQgYmUgcmVjZWl2
ZWQuIE5vdw0KdGhhdCB3ZSBrbm93IHRoZXJlJ3MgYSBnZW5lcmFsIGNvbnNlbnN1cyB0byBkZWZp
bmUgdGhvc2UsIEknbGwgcmUtb3JkZXINCnRoZSBwYXRjaGVzIGFjY29yZGluZ2x5Lg0KDQo+IE1v
c3RseSBJIGZlZWwgbGlrZSBpdCB3b3VsZCBiZSBiZW5lZml0DQo+IGZyb20gYmVpbmcgc3BsaXQg
dXAgaW50byBtdWx0aXBsZSBwYXRjaGVzIChtYXliZSBvbmUgcGVyIGZpbGU/KSBzbyB0aGF0DQo+
IHRoZXJlIGFyZSBzbWFsbGVyIHVuaXRzIHRvIHJldmlldy4NCg0KU3VyZSwgSSBjYW4gZG8gdGhh
dC4NCg0KPiANCj4gPj4NCj4gPj4gSSBhbHNvIGhhdmUgbWl4ZWQgZmVlbGluZ3MgYWJvdXQgc29t
ZSBvZiB0aGUgbm9uLXNjb3BlZCBndWFyZHMuIFRoZWlyDQo+ID4+IHNjb3BlcyBhcmUgZXh0ZW5k
ZWQgc2xpZ2h0bHkgdGhhbiBiZWZvcmUsIHN1cHBvc2VkbHkgdG8gYXZvaWQgYWRkaW5nDQo+ID4+
IGFub3RoZXIgbGV2ZWwgb2YgaW5kZW50YXRpb24uIEJ1dCBvdGhlciB0aGFuIHNsaWdodGx5IHNs
b3dlciwgIA0KPiA+IA0KPiA+IEkgdHJpZWQgdG8gdXNlZCBzY29wZWRfZ3VhcmQoKXMgZXZlcnkg
d2hlcmUgdGhlIGV4dHJhIG5vbi1ndWFyZGVkDQo+ID4gc2VjdGlvbiBjb3VsZCBiZSBDUFUgaGVh
dnkgKHRoZSBvbmx5IGJpdHMgbGVmdCBhcmUgc29tZSB2ZXJ5IHNpbXBsZQ0KPiA+IGJpdC9hcml0
aG1ldGljIG9wcywgYW5kIGEgY291cGxlIHF1ZXVlX3dvcmsoKSBJSVJDKS4NCj4gPiAgIA0KPiA+
PiBpdCBhbHNvDQo+ID4+IGJlY29tZXMgbGVzcyBjbGVhciB3aGF0IGV4YWN0bHkgZG8gdGhlIGd1
YXJkcyBwcm90ZWN0LiAgDQo+ID4gDQo+ID4gSSBrbm93LCBhbmQgSSBoYXZlIHByZXR0eSBtdWNo
IHRoZSBzYW1lIGZlZWxpbmcsIGJ1dCB3ZSd2ZSBjcm9zc2VkIHRoYXQNCj4gPiBicmlkZ2Ugd2hl
biB3ZSBzdGFydGVkIGFjY2VwdGluZyBub24tc2NvcGVkIGd1YXJkKClzLCB1bmZvcnR1bmF0ZWx5
LiAgDQo+IA0KPiBUaGUgcHJvYmxlbSB3aXRoIHNjb3BlZCBndWFyZHMgaXMgdGhlIGV4dHJhIGxl
dmVsIG9mIGluZGVudGF0aW9uLg0KDQpZZXAuDQoNCj4gUGVyc29uYWxseSBJIGZpbmQgYSBtaXh0
dXJlIG9mIGFsbCB0aHJlZSBpcyBhcHByb3ByaWF0ZSBkZXBlbmRpbmcgb24gdGhlDQo+IGNhc2Uu
DQo+IA0KPiBFLmcuDQo+IA0KPiBpbnQgc21hbGxfc2ltcGxlX2Z1bmN0aW9uKCkgew0KPiAJaWYg
KHNpbXBsZV9jb25kaXRpb24pDQo+IAkJcmV0dXJuIGVhcmx5Ow0KPiANCj4gCWd1YXJkKGxvY2sp
Ow0KPiANCj4gCWlmIChjb25kaXRpb25fdGhhdF9uZWVkc19sb2NrKQ0KPiAJCXJldHVybiBlYXJs
eTsNCj4gCS8qIG1vcmUgd29yayAqLw0KPiAJcmV0dXJuIGxhdGU7DQo+IH0NCj4gDQo+IEhlcmUg
aXQncyBlYXN5IHRvIHJlYXNvbiBiZWNhdXNlIHRoZSBsb2NrIGlzIGp1c3QgaGVsZCBmb3IgdGhl
IGR1cmF0aW9uDQo+IG9mIHRoZSBmdW5jdGlvbiBhZnRlciB0aGUgaW5pdGlhbCBlYXJseS1vdXQg
Y29uZGl0aW9uIGlzIGNoZWNrZWQuDQo+IA0KPiBpbnQgc2hvcnRfbG9jaygpIHsNCj4gCS8qIGJ1
bmNoIG9mIHdvcmsgKi8NCj4gDQo+IAlzY29wZWRfZ3VhcmQobG9jaykgew0KPiAJCXRtcCA9IHJl
YWRfdmFsdWUoKTsNCj4gCQlpZiAodG1wID09IDQyKQ0KPiAJCQlyZXR1cm4gLUVTT0xPTkdBTkRU
SEFOS1NGT1JBTExUSEVGSVNIOw0KPiAJCXRtcCsrOw0KPiAJCXdyaXRlX3ZhbHVlKHRtcCk7DQo+
IAl9DQo+IA0KPiAJLyogbW9yZSB3b3JrICovDQo+IH0NCj4gDQo+IEhlcmUgdGhlcmUncyBhIHNt
YWxsIHNlY3Rpb24gb2YgY29kZSB3aGljaCBpcyB3b3JraW5nIG9uIHRoZSBsb2NrLCBzbyBpdA0K
PiBtYWtlcyBzZW5zZSB0byBpbmRlbnQgaXQgdG8gc2hvdyB0aGUgYm91bmRhcmllcyBvZiBpdC4g
VGhlIG90aGVyIG5pY2UNCj4gdGhpbmcgaXMgdGhhdCB0aGUgZXJyb3IgcmV0dXJuIGhhbmRsZXMg
dGhlIGxvY2tzIGZvciB1cy4NCj4gDQo+IGludCBvbGRfZmFzaGlvbmVkKCkgew0KPiAJaWYgKGxv
Y2tfcmVxdWlyZWQpDQo+IAkJbXV0ZXhfbG9jayhsb2NrKTsNCj4gDQo+IAkvKiBzb21lIHdvcmsg
Ki8NCj4gDQo+IAlpZiAobG9ja19yZXF1aXJlZCkNCj4gCQltdXRleF91bmxvY2sobG9jayk7DQo+
IH0NCj4gDQo+IEdlbmVyYWxseSBhIHBhdHRlcm4gdG8gYmUgYXZvaWRlZCBpZiBwb3NzaWJsZSwN
Cg0KWWVhaCwgaG9uZXN0bHkgSSB0cnkgbXkgYmVzdCB0byBuZXZlciBlbmQgdXAgd2l0aCB0aGF0
IHNvcnQgb2YNCmNvbmRpdGlvbmFsIGxvY2tzLg0KDQo+IGJ1dCBJTUhPIHRoaXMgaXMgbXVjaA0K
PiBiZXR0ZXIgdGhhbiB0aGUgZXF1aXZhbGVudCBvZjoNCj4gDQo+IGludCBkb2RneV9mdW5jdGlv
bigpIHsNCj4gCS8qIHNvbWUgd29yayAqLw0KPiB9DQo+IA0KPiBpbnQgb3V0ZXJfZnVuY3Rpb24o
KSB7DQo+IAlpZiAobG9ja19yZXF1aXJlZCkgew0KPiAJCXNjb3BlZF9ndWFyZChsb2NrKQ0KPiAJ
CQlkb2RneV9mdW5jdGlvbigpOw0KPiAJfSBlbHNlIHsNCj4gCQlkb2RneV9mdW5jdGlvbigpOw0K
PiAJfQ0KPiB9DQoNCklmIEkgd2VyZSB0byBjaG9vc2UsIEknZCBwcm9iYWJseSBnbyBmb3IgdGhp
cyB2ZXJzaW9uLCBidXQgbHVja2lseSB3ZQ0KZG9uJ3Qgc2VlbSB0byBoYXZlIHRoaXMgY29uZGl0
aW9uYWwtbG9ja2luZyBwYXR0ZXJuIGluIHBhbnRob3IuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
