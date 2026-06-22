Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i3vmMSU7OWrCowcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 15:39:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 366016AFEE3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 15:39:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=suse.de header.s=susede2_rsa header.b=iybQGBpg;
	dkim=fail ("body hash did not verify") header.d=suse.de header.s=susede2_ed25519 header.b=5ywDEOoL;
	dkim=fail ("body hash did not verify") header.d=suse.de header.s=susede2_rsa header.b=S0+lk3e0;
	dkim=fail ("body hash did not verify") header.d=suse.de header.s=susede2_ed25519 header.b=95xpVfDw;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=suse.de (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 486FA40A76
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:39:48 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 0B78E3F7F9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 13:39:39 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id E42D1707F3;
	Mon, 22 Jun 2026 13:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1782135578; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8dpJRlfBOR0XL6TN6Z95Arkt5VBwN3sve5QEYdNo1kg=;
	b=iybQGBpg6VGbDQ5JJwzwitsZp4BEGSidAB9nVaNKEfxxB/5Hc3o9T6jeXPDZuBLCvBImf4
	ckyep4c2ca7mSv4fRJo0U0M6JInTCEqAJNHVBie8uL5UhQ59JF/JaAvy3QaBBiKRR6yhhi
	pebgiOxox/+uUL0Hpm3C5J/F5fzRrfQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1782135578;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8dpJRlfBOR0XL6TN6Z95Arkt5VBwN3sve5QEYdNo1kg=;
	b=5ywDEOoLY1Y391N4FhWPvjwfV7Il+zw37rlFqQPyzFdGUw6fHLgi5WjBph9PGxYV1JSpnf
	RbnGaWZgt6Ol4tDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1782135577; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8dpJRlfBOR0XL6TN6Z95Arkt5VBwN3sve5QEYdNo1kg=;
	b=S0+lk3e0rLSAlD+NE7b0w1TnBLtkfcIAC19CsB96qbWhkcdOc7F/TEXlSdXly3vYkXTjzO
	tawWrqXJYFv8ofE0xOmuBmb10El81Y3IvOyW3gslEdPnUcyMyvrncmRfEEVJUVuo/PzrgO
	9W5aRMzvVGrOZ0vZxpmRPYa6aTgeuz8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1782135577;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8dpJRlfBOR0XL6TN6Z95Arkt5VBwN3sve5QEYdNo1kg=;
	b=95xpVfDwtY3jGPRK7fpBLg8SC6TH4w97UT7tjG2dQtFWpNavdHqwt6/R6Fjdow00R2LpNC
	4N4STeYAPntw15DA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 95245779A8;
	Mon, 22 Jun 2026 13:39:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 7TZLIhk7OWrvLwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 22 Jun 2026 13:39:37 +0000
Message-ID: <8b969c15-3044-4531-b518-d3efc280432d@suse.de>
Date: Mon, 22 Jun 2026 15:39:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Biren Pandya <birenpandya@gmail.com>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, airlied@gmail.com, simona@ffwll.ch
References: <20260616181956.61476-2-birenpandya@gmail.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <20260616181956.61476-2-birenpandya@gmail.com>
X-Spam-Flag: NO
X-Spam-Score: -4.30
X-Spam-Level: 
X-Spamd-Bar: ---
Message-ID-Hash: 2GGI7ALDMAMQKYGQSPIZI5FOZ7OCCFFO
X-Message-ID-Hash: 2GGI7ALDMAMQKYGQSPIZI5FOZ7OCCFFO
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: modernize locks to use scoped_guard()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GGI7ALDMAMQKYGQSPIZI5FOZ7OCCFFO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[suse.de : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:birenpandya@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,ffwll.ch];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[suse.de:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:from_mime,suse.com:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 366016AFEE3

SGkNCg0KQW0gMTYuMDYuMjYgdW0gMjA6MTkgc2NocmllYiBCaXJlbiBQYW5keWE6DQo+IFNldmVy
YWwgR0VNIGNvcmUgZnVuY3Rpb25zIG1hbnVhbGx5IG1hbmFnZWQgbXV0ZXhfbG9jaygpIGFuZA0K
PiBtdXRleF91bmxvY2soKSBvdmVyIHNpbmdsZSBzY29wZXMgb3IgZXJyb3IgcGF0aHMuIFRoaXMg
YWRkcyBib2lsZXJwbGF0ZQ0KPiBhbmQgY2FycmllcyB0aGUgcmlzayBvZiBsb2NrIGxlYWtzIGlm
IGVycm9yIHBhdGhzIGFyZSByZWZhY3RvcmVkLg0KPg0KPiBNb2Rlcm5pemUgdGhlc2UgbG9ja3Mg
YnkgZGVwbG95aW5nIHRoZSA8bGludXgvY2xlYW51cC5oPiBzY29wZWRfZ3VhcmQoKQ0KPiBtYWNy
by4gVGhpcyBlbnN1cmVzIHRoYXQgdGhlIGxvY2tzIGFyZSByZWxpYWJseSBkcm9wcGVkIHdoZW4g
dGhlIGJsb2NrDQo+IGV4aXRzLCBjbGVhbmx5IHJlbW92aW5nIGdvdG8gb3V0X3VubG9jayBwYXRo
cyBhbmQgdGlnaHRlbmluZyB0aGUNCj4gbGlmZWN5Y2xlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBC
aXJlbiBQYW5keWEgPGJpcmVucGFuZHlhQGdtYWlsLmNvbT4NCj4NCj4gQ29tcGlsZWQgbG9jYWxs
eSwgYnV0IHJlcXVpcmVzIElHVCB2YWxpZGF0aW9uIGJ5IHRoZSBEUk0gQ0kuDQo+IC0tLQ0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgfCA2NiArKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMzYg
ZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPiBpbmRleCA4OTFjM2JmZjVhZTAuLmQzYTA2
MWQ0MmJhNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jDQo+IEBAIC0zNDYsMTMgKzM0NiwxMyBAQCB2b2lk
IGRybV9nZW1fb2JqZWN0X2hhbmRsZV9wdXRfdW5sb2NrZWQoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmopDQo+ICAgCSAqIHdlIGNoZWNrZWQgZm9yIGEgbmFtZS4NCj4gICAJICovDQo+ICAgDQo+
IC0JbXV0ZXhfbG9jaygmZGV2LT5vYmplY3RfbmFtZV9sb2NrKTsNCj4gLQlpZiAoLS1vYmotPmhh
bmRsZV9jb3VudCA9PSAwKSB7DQo+IC0JCWRybV9nZW1fb2JqZWN0X2hhbmRsZV9mcmVlKG9iaik7
DQo+IC0JCWRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZShvYmopOw0KPiAtCQlm
aW5hbCA9IHRydWU7DQo+ICsJc2NvcGVkX2d1YXJkKG11dGV4LCAmZGV2LT5vYmplY3RfbmFtZV9s
b2NrKSB7DQo+ICsJCWlmICgtLW9iai0+aGFuZGxlX2NvdW50ID09IDApIHsNCj4gKwkJCWRybV9n
ZW1fb2JqZWN0X2hhbmRsZV9mcmVlKG9iaik7DQo+ICsJCQlkcm1fZ2VtX29iamVjdF9leHBvcnRl
ZF9kbWFfYnVmX2ZyZWUob2JqKTsNCj4gKwkJCWZpbmFsID0gdHJ1ZTsNCj4gKwkJfQ0KPiAgIAl9
DQo+IC0JbXV0ZXhfdW5sb2NrKCZkZXYtPm9iamVjdF9uYW1lX2xvY2spOw0KPiAgIA0KPiAgIAlp
ZiAoZmluYWwpDQo+ICAgCQlkcm1fZ2VtX29iamVjdF9wdXQob2JqKTsNCj4gQEAgLTM3NCwxMSAr
Mzc0LDggQEAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZV9oYW5kbGUoaW50IGlkLCB2b2lkICpwdHIs
IHZvaWQgKmRhdGEpDQo+ICAgCWlmIChvYmotPmZ1bmNzLT5jbG9zZSkNCj4gICAJCW9iai0+ZnVu
Y3MtPmNsb3NlKG9iaiwgZmlsZV9wcml2KTsNCj4gICANCj4gLQltdXRleF9sb2NrKCZmaWxlX3By
aXYtPnByaW1lLmxvY2spOw0KPiAtDQo+IC0JZHJtX3ByaW1lX3JlbW92ZV9idWZfaGFuZGxlKCZm
aWxlX3ByaXYtPnByaW1lLCBpZCk7DQo+IC0NCj4gLQltdXRleF91bmxvY2soJmZpbGVfcHJpdi0+
cHJpbWUubG9jayk7DQo+ICsJc2NvcGVkX2d1YXJkKG11dGV4LCAmZmlsZV9wcml2LT5wcmltZS5s
b2NrKQ0KPiArCQlkcm1fcHJpbWVfcmVtb3ZlX2J1Zl9oYW5kbGUoJmZpbGVfcHJpdi0+cHJpbWUs
IGlkKTsNCj4gICANCj4gICAJZHJtX3ZtYV9ub2RlX3Jldm9rZSgmb2JqLT52bWFfbm9kZSwgZmls
ZV9wcml2KTsNCj4gICANCj4gQEAgLTEwMjEsMzcgKzEwMTgsMzQgQEAgaW50IGRybV9nZW1fY2hh
bmdlX2hhbmRsZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KDQpU
aGVyZSBoYXZlIGJlZW4gYSBudW1iZXIgb2YgcmV2aXNpb25zIHRvIHRoaXMgZnVuY3Rpb24gcmVj
ZW50bHkgYW5kIHlvdSANCndhbnQgdG8gbWFrZSBzdXJlIHRoYXQgeW91IGhhdmUgdGhlIGxhdGVz
dC7CoCBBdCBsZWFzdCB0aGUgY29kZSBpbiB2Ny4xIA0KbG9va3MgZGlmZmVyZW50IGZyb20geW91
cnMuDQoNCj4gICAJCWdvdG8gb3V0Ow0KPiAgIAl9DQo+ICAgDQo+IC0JbXV0ZXhfbG9jaygmZmls
ZV9wcml2LT5wcmltZS5sb2NrKTsNCj4gKwlzY29wZWRfZ3VhcmQobXV0ZXgsICZmaWxlX3ByaXYt
PnByaW1lLmxvY2spIHsNCj4gKwkJc3Bpbl9sb2NrKCZmaWxlX3ByaXYtPnRhYmxlX2xvY2spOw0K
DQpDb3VsZCB0aGlzIHNwaW4gbG9jayBhbHNvIHVzZSBhIGd1YXJkPw0KDQpCZXN0IHJlZ2FyZHMN
ClRob21hcw0KDQo+ICsJCXJldCA9IGlkcl9hbGxvYygmZmlsZV9wcml2LT5vYmplY3RfaWRyLCBv
YmosIGhhbmRsZSwgaGFuZGxlICsgMSwNCj4gKwkJCQlHRlBfTk9XQUlUKTsNCj4gKwkJc3Bpbl91
bmxvY2soJmZpbGVfcHJpdi0+dGFibGVfbG9jayk7DQo+ICAgDQo+IC0Jc3Bpbl9sb2NrKCZmaWxl
X3ByaXYtPnRhYmxlX2xvY2spOw0KPiAtCXJldCA9IGlkcl9hbGxvYygmZmlsZV9wcml2LT5vYmpl
Y3RfaWRyLCBvYmosIGhhbmRsZSwgaGFuZGxlICsgMSwNCj4gLQkJCUdGUF9OT1dBSVQpOw0KPiAt
CXNwaW5fdW5sb2NrKCZmaWxlX3ByaXYtPnRhYmxlX2xvY2spOw0KPiArCQlpZiAocmV0IDwgMCkN
Cj4gKwkJCWJyZWFrOw0KPiAgIA0KPiAtCWlmIChyZXQgPCAwKQ0KPiAtCQlnb3RvIG91dF91bmxv
Y2s7DQo+ICsJCWlmIChvYmotPmRtYV9idWYpIHsNCj4gKwkJCXJldCA9IGRybV9wcmltZV9hZGRf
YnVmX2hhbmRsZSgmZmlsZV9wcml2LT5wcmltZSwgb2JqLT5kbWFfYnVmLA0KPiArCQkJCQkJICAg
ICAgIGhhbmRsZSk7DQo+ICsJCQlpZiAocmV0IDwgMCkgew0KPiArCQkJCXNwaW5fbG9jaygmZmls
ZV9wcml2LT50YWJsZV9sb2NrKTsNCj4gKwkJCQlpZHJfcmVtb3ZlKCZmaWxlX3ByaXYtPm9iamVj
dF9pZHIsIGhhbmRsZSk7DQo+ICsJCQkJc3Bpbl91bmxvY2soJmZpbGVfcHJpdi0+dGFibGVfbG9j
ayk7DQo+ICsJCQkJYnJlYWs7DQo+ICsJCQl9DQo+ICAgDQo+IC0JaWYgKG9iai0+ZG1hX2J1Zikg
ew0KPiAtCQlyZXQgPSBkcm1fcHJpbWVfYWRkX2J1Zl9oYW5kbGUoJmZpbGVfcHJpdi0+cHJpbWUs
IG9iai0+ZG1hX2J1ZiwNCj4gLQkJCQkJICAgICAgIGhhbmRsZSk7DQo+IC0JCWlmIChyZXQgPCAw
KSB7DQo+IC0JCQlzcGluX2xvY2soJmZpbGVfcHJpdi0+dGFibGVfbG9jayk7DQo+IC0JCQlpZHJf
cmVtb3ZlKCZmaWxlX3ByaXYtPm9iamVjdF9pZHIsIGhhbmRsZSk7DQo+IC0JCQlzcGluX3VubG9j
aygmZmlsZV9wcml2LT50YWJsZV9sb2NrKTsNCj4gLQkJCWdvdG8gb3V0X3VubG9jazsNCj4gKwkJ
CWRybV9wcmltZV9yZW1vdmVfYnVmX2hhbmRsZSgmZmlsZV9wcml2LT5wcmltZSwgYXJncy0+aGFu
ZGxlKTsNCj4gICAJCX0NCj4gICANCj4gLQkJZHJtX3ByaW1lX3JlbW92ZV9idWZfaGFuZGxlKCZm
aWxlX3ByaXYtPnByaW1lLCBhcmdzLT5oYW5kbGUpOw0KPiAtCX0NCj4gLQ0KPiAtCXJldCA9IDA7
DQo+IC0NCj4gLQlzcGluX2xvY2soJmZpbGVfcHJpdi0+dGFibGVfbG9jayk7DQo+IC0JaWRyX3Jl
bW92ZSgmZmlsZV9wcml2LT5vYmplY3RfaWRyLCBhcmdzLT5oYW5kbGUpOw0KPiAtCXNwaW5fdW5s
b2NrKCZmaWxlX3ByaXYtPnRhYmxlX2xvY2spOw0KPiArCQlyZXQgPSAwOw0KPiAgIA0KPiAtb3V0
X3VubG9jazoNCj4gLQltdXRleF91bmxvY2soJmZpbGVfcHJpdi0+cHJpbWUubG9jayk7DQo+ICsJ
CXNwaW5fbG9jaygmZmlsZV9wcml2LT50YWJsZV9sb2NrKTsNCj4gKwkJaWRyX3JlbW92ZSgmZmls
ZV9wcml2LT5vYmplY3RfaWRyLCBhcmdzLT5oYW5kbGUpOw0KPiArCQlzcGluX3VubG9jaygmZmls
ZV9wcml2LT50YWJsZV9sb2NrKTsNCj4gKwl9DQo+ICAgb3V0Og0KPiAgIAlkcm1fZ2VtX29iamVj
dF9wdXQob2JqKTsNCj4gICANCj4NCj4gYmFzZS1jb21taXQ6IDcyYzI1MTgzY2FjOWJjNTg0Yzlk
ZTIxNzk3YTU4ODNhZjQ0YmNjN2ENCg0KLS0gDQotLQ0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBo
aWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21i
SA0KRnJhbmtlbnN0ci4gMTQ2LCA5MDQ2MSBOw7xybmJlcmcsIEdlcm1hbnksIHd3dy5zdXNlLmNv
bQ0KR0Y6IEpvY2hlbiBKYXNlciwgQW5kcmV3IE1jRG9uYWxkLCBXZXJuZXIgS25vYmxpY2gsIChI
UkIgMzY4MDksIEFHIE7DvHJuYmVyZykNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
