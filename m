Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +RcaBLzWQ2qmjwoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 16:46:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3626E58B8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 16:46:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=jsCIUDvv;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C83E40A52
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 14:46:18 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 60BA540A52
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 14:46:07 +0000 (UTC)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gqQtz6KCbz9tyS;
	Tue, 30 Jun 2026 16:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782830763; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=td3tFB9mSbocKcY7wsrXfJgzOu/KGrhFsokIWvDAN8c=;
	b=jsCIUDvvhEKgYl+MF20FP+zp/TLtbQUxVls8a/aE7NFdWKVYaYgIlHDFJdgBVojaACnt1O
	P1GdHwCmaodxogBlvs7DoHeB0H4M25ET7o4S6Y5pXgkfvyJ0gr7A6CLkAOHLhRHwXpYAV/
	NFrS6BBGQtjgI/NGI3LW8egco2Fc5JurYTihQHhoZbhMmsJmc2QHbnyMx1nNbycHydpowg
	vwmxT4mIbZJP1L7pEt9yMyRn+bcdGUrw97+vku9ytuJ7O9CtlHGPoczdPGdaB2yhc0EqGX
	zVzqcNoJ9lXvGajnUF1eMWiRh8ox+hZhACP7Li7mLqoW8PjgA/YokK9H80dPnA==
Message-ID: <11eddeafe60facdeac31779f36a7e4d52967bba3.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: christian.koenig@amd.com, phasta@kernel.org, simona@ffwll.ch,
	sumit.semwal@linaro.org, tvrtko.ursulin@igalia.com, dakr@kernel.org
Date: Tue, 30 Jun 2026 16:45:59 +0200
In-Reply-To: <20260624122917.2483-4-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
	 <20260624122917.2483-4-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: h6ibeto89pym1n4ypemmh4s8ym4z38jc
X-MBO-RS-ID: 1559734c5a0b76028f8
X-Spamd-Bar: ----
Message-ID-Hash: UQOQACBSP6S34U2USYWTA4CIGV3XPB3F
X-Message-ID-Hash: UQOQACBSP6S34U2USYWTA4CIGV3XPB3F
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 03/10] drm/amdgpu: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQOQACBSP6S34U2USYWTA4CIGV3XPB3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:mid,mailbox.org:from_mime,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E3626E58B8

T24gV2VkLCAyMDI2LTA2LTI0IGF0IDEzOjEzICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBJbnN0ZWFkIG9mIGRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoKSB1c2UNCj4gZG1h
X2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygpLg0KPiANCj4gVGhlIGV4dHJhIHBvbGxpbmcgY2hl
Y2sgc2VlbXMgdW5lY2Vzc2FyeSBmb3IgdGhvc2UgdXNlIGNhc2VzLg0KDQpJbiB0aGlzIFsxXSBy
ZWNlbnQgZGlzY3Vzc2lvbiB3aXRoIFR2cnRrbyBJIHBvaW50IG91dCB0aGF0IHdlIChpLmUuLA0K
RFJNKSB3b3VsZCByZWFsbHkgZ3JlYXRseSBiZW5lZml0IGZyb20gbW9yZSB2ZXJib3NlIGNvbW1p
dCBtZXNzYWdlcy4NCldoYXQgaXMgY29tcGxldGVseSBuYXR1cmFsIGFuZCBzZWxmLWV4cGxhbmF0
b3J5IHRvIHVzIG1pZ2h0IGJlIGZhciBsZXNzDQppbnR1aXRpdmUgZm9yIHRob3NlIGNvbWluZyBp
biA1IHllYXJzLg0KDQpZb3UgYW5kIEksIHdlIHVuZGVyc3RhbmQgdGhhdCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWQoKSBjYW4gYWN0aXZlbHkgcG9sbA0KYSBmZW5jZS4gSSBzdGlsbCB0aGluayBpdCBp
cyBub3QgaW50dWl0aXZlLCBidXQgaXQncyBhIGNvbXBsZXggQVBJLiBBbmQNCnlvdSBwZXJzb25h
bGx5IGFsc28gdW5kZXJzdGFuZCB3aHkgYW4gb3Bwb3J0dW5pc3RpYyBwb2xsIGlzIG5vdA0KbmVj
ZXNzYXJ5IGZvciBhbWRncHUuIEEgbmV3IGNvbnRyaWJ1dG9yLCBsaWtlIGEgaGFja2VyIHdobyBj
YXJlcyBhYm91dA0KZ2FtaW5nIG9uIEFNRCBoYXJkd2FyZSwgd2hvIHdhbnRzIHRvIGhlbHAgaW1w
cm92ZSB5b3VyIGRyaXZlciwgZG9lcyBub3QNCmtub3cgdGhhdC4NCg0KU29tZW9uZSBnaXQtYmxh
bWluZyBvbmUgb2YgdGhvc2UgbGluZXMgaW4gYSBmZXcgeWVhcnMgd291bGQganVzdCBzZWUNCnRo
YXQgYSBmdW5jdGlvbiB3YXMgcmVwbGFjZWQgd2l0aCBhIGZ1bmN0aW9uIHdpdGggYSBiYXNpY2Fs
bHkgaWRlbnRpY2FsDQpuYW1lLCBhbmQgd291bGQgbm90IHVuZGVyc3RhbmQgd2h5IHRoZSBjaGFu
Z2Ugd2FzIG1hZGUuDQoNClRoZSBjb21taXQgc2ltcGx5IHNheXMgInNlZW1zIHVubmVjZXNzYXJ5
Ii4gV2h5IDopDQoNCkkgdGhpbmsgZmxlc2hpbmcgaXQgb3V0IG1vcmUgaW4gdGhlIGNsYXNzaWNh
bCBwYXR0ZXJuIChkZXNjcmlwdGlvbiBvZg0KY3VycmVudCBzaXR1YXRpb24sIGRlc2NyaXB0aW9u
IG9mIHRoZSBwcm9ibGVtLCB0aGVuIGRlc2NyaXB0aW9uIG9mIHRoZQ0KYWN0aW9uIHRoZSBwYXRj
aCB0YWtlcykgaXMgaW5kZWVkIG1vcmUgd29yayBmb3IgdGhlIGF1dGhvciAodG8gd2hvbSBpdA0K
bWlnaHQgYXBwZWFyIGxpa2UgYSB3YXN0ZSBvZiB0aW1lIHRvIGRlc2NyaWJlIHN0aCBvYnZpb3Vz
KSwgYnV0IHdvdWxkDQphbHNvIGdyZWF0bHkgYmVuZWZpdCB5b3UgcGVyc29uYWxseSwgc2luY2Ug
aXQgY291bGQgcmVkdWNlIHRoZSBhbW91bnQNCm9mIHRpbWVzIHdlIGhhdmUgdG8gdGVsbCBmb2xr
cyAiSSBkb24ndCBrbm93LCB0aGVyZSB3YXMgYSByZWFzb24g4oCTIGdvDQphc2sgQ2hyaXN0aWFu
IiA7KQ0KDQoNCkdyw7zDn2UsDQpQaGlsaXBwDQoNCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2RyaS1kZXZlbC85ZjdmYTU3NjEwZDNkOTQzMjRlMDlkYzkzNmY1ZjdmM2MzZDM5MGQzLmNh
bWVsQG1haWxib3gub3JnLw0KDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmPCoMKgwqDCoMKgwqAgfCA4ICsrKystLS0tDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuY8KgwqDCoMKgwqDCoMKgIHwg
MiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5j
IHwgMiArLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMNCj4g
aW5kZXggZWE2OWIxYmFjN2M2Li4xMTkyYjk4MDBmZjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+IEBAIC02NTIsNyArNjUyLDcgQEAgdm9pZCBh
bWRncHVfZmVuY2VfZHJpdmVyX3NldF9lcnJvcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIGlu
dCBlcnJvcikNCj4gwqANCj4gwqAJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChk
cnYtPmZlbmNlc1tpXSwNCj4gwqAJCQkJCQnCoCBsb2NrZGVwX2lzX2hlbGQoJmRydi0+bG9jaykp
Ow0KPiAtCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZmVuY2Up
KQ0KPiArCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2Up
KQ0KPiDCoAkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIGVycm9yKTsNCj4gwqAJfQ0KPiDC
oAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCj4gQEAgLTY3Nyw3
ICs2NzcsNyBAQCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfZm9yY2VfY29tcGxldGlvbihzdHJ1
Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+IMKgDQo+IMKgCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5j
ZV9wcm90ZWN0ZWQoZHJ2LT5mZW5jZXNbaV0sDQo+IMKgCQkJCQkJwqAgbG9ja2RlcF9pc19oZWxk
KCZkcnYtPmxvY2spKTsNCj4gLQkJaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRf
bG9ja2VkKGZlbmNlKSkgew0KPiArCQlpZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25h
bGVkX2ZsYWcoZmVuY2UpKSB7DQo+IMKgCQkJaWYgKGZlbmNlID09IHRpbWVkb3V0X2ZlbmNlKQ0K
PiDCoAkJCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGZlbmNlLCAtRVRJTUUpOw0KPiDCoAkJCWVsc2UN
Cj4gQEAgLTczOCw3ICs3MzgsNyBAQCB2b2lkIGFtZGdwdV9yaW5nX3NldF9mZW5jZV9lcnJvcnNf
YW5kX3JlZW1pdChzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+IMKgCQlyY3VfcmVhZF9sb2Nr
KCk7DQo+IMKgCQl1bnByb2Nlc3NlZCA9IHJjdV9kZXJlZmVyZW5jZSgqcHRyKTsNCj4gwqANCj4g
LQkJaWYgKHVucHJvY2Vzc2VkICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHVucHJv
Y2Vzc2VkKSkgew0KPiArCQlpZiAodW5wcm9jZXNzZWQgJiYgIWRtYV9mZW5jZV90ZXN0X3NpZ25h
bGVkX2ZsYWcodW5wcm9jZXNzZWQpKSB7DQo+IMKgCQkJZmVuY2UgPSBjb250YWluZXJfb2YodW5w
cm9jZXNzZWQsIHN0cnVjdCBhbWRncHVfZmVuY2UsIGJhc2UpOw0KPiDCoAkJCWlzX2d1aWx0eV9m
ZW5jZSA9IGZlbmNlID09IGd1aWx0eV9mZW5jZTsNCj4gwqAJCQlpc19ndWlsdHlfY29udGV4dCA9
IGZlbmNlLT5jb250ZXh0ID09IGd1aWx0eV9mZW5jZS0+Y29udGV4dDsNCj4gQEAgLTgwMiw3ICs4
MDIsNyBAQCB2b2lkIGFtZGdwdV9yaW5nX2JhY2t1cF91bnByb2Nlc3NlZF9jb21tYW5kcyhzdHJ1
Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+IMKgCQlyY3VfcmVhZF9sb2NrKCk7DQo+IMKgCQl1bnBy
b2Nlc3NlZCA9IHJjdV9kZXJlZmVyZW5jZSgqcHRyKTsNCj4gwqANCj4gLQkJaWYgKHVucHJvY2Vz
c2VkICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQodW5wcm9jZXNzZWQpKSB7DQo+ICsJCWlmICh1
bnByb2Nlc3NlZCAmJiAhZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyh1bnByb2Nlc3NlZCkp
IHsNCj4gwqAJCQlmZW5jZSA9IGNvbnRhaW5lcl9vZih1bnByb2Nlc3NlZCwgc3RydWN0IGFtZGdw
dV9mZW5jZSwgYmFzZSk7DQo+IMKgDQo+IMKgCQkJYW1kZ3B1X3JpbmdfYmFja3VwX3VucHJvY2Vz
c2VkX2NvbW1hbmQocmluZywgZmVuY2UpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9yaW5nLmMNCj4gaW5kZXggZDZiZWU1YzMwMDczLi5hZTlkNmEyZWVmYWIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuYw0KPiBAQCAtNDYwLDcgKzQ2
MCw3IEBAIGJvb2wgYW1kZ3B1X3Jpbmdfc29mdF9yZWNvdmVyeShzdHJ1Y3QgYW1kZ3B1X3Jpbmcg
KnJpbmcsIHVuc2lnbmVkIGludCB2bWlkLA0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiDC
oAlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+IC0JaWYgKCFkbWFfZmVu
Y2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZlbmNlKSkNCj4gKwlpZiAoIWRtYV9mZW5jZV90ZXN0X3Np
Z25hbGVkX2ZsYWcoZmVuY2UpKQ0KPiDCoAkJZG1hX2ZlbmNlX3NldF9lcnJvcihmZW5jZSwgLUVO
T0RBVEEpOw0KPiDCoAlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UsIGZsYWdzKTsN
Cj4gwqANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91
c2VycV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2Zl
bmNlLmMNCj4gaW5kZXggYTQxZmI3MmRiYTk0Li4yY2M2NTUyYTYzOTkgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5jDQo+IEBAIC00
MjYsNyArNDI2LDcgQEAgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9zZXRfZXJyb3Ioc3RydWN0
IGFtZGdwdV91c2VycV9mZW5jZSAqZmVuY2UsDQo+IMKgDQo+IMKgCWYgPSByY3VfZGVyZWZlcmVu
Y2VfcHJvdGVjdGVkKCZmZW5jZS0+YmFzZSwNCj4gwqAJCQkJwqDCoMKgwqDCoCBsb2NrZGVwX2lz
X2hlbGQoJmZlbmNlX2Rydi0+ZmVuY2VfbGlzdF9sb2NrKSk7DQo+IC0JaWYgKGYgJiYgIWRtYV9m
ZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZikpDQo+ICsJaWYgKGYgJiYgIWRtYV9mZW5jZV90ZXN0
X3NpZ25hbGVkX2ZsYWcoZikpDQo+IMKgCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKGYsIGVycm9yKTsN
Cj4gwqAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2VfZHJ2LT5mZW5jZV9saXN0X2xvY2ss
IGZsYWdzKTsNCj4gwqB9DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
