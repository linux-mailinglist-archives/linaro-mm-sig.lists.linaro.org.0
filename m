Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 487EEB2AC46
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 17:15:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97CEC45608
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 15:15:39 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 5FC5444643
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 15:15:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=RYWCd55x;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=cRz4Sfdg;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=RYWCd55x;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=cRz4Sfdg;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 3D3F921747;
	Mon, 18 Aug 2025 15:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755530130; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pPaXx3GogupYUzudWeXDprQsHT8asP4kTul//FivS9Q=;
	b=RYWCd55xZLaZONp7prQ3mH50rrSmh1QQtWKv8V+nio8tdSTQHXRYh5PmwpFl+N6Sy1VF1o
	6/FwfAZVGfp10PzYPSASQb5xyjxFZQ25Uj/hj8ncNTItLzbECMxocBfjmaajynAtHbiA69
	pa3y1YcBYek9CeYfJ1h/YLd6G+S61Qo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755530130;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pPaXx3GogupYUzudWeXDprQsHT8asP4kTul//FivS9Q=;
	b=cRz4Sfdg3ADJWsIAuK/dNAM76hCO7xUoz0dlG2jiVqh6Wc/l+ztT9xi9RMEEyprkCUOI7C
	MlLhzOZY5szA5pAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755530130; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pPaXx3GogupYUzudWeXDprQsHT8asP4kTul//FivS9Q=;
	b=RYWCd55xZLaZONp7prQ3mH50rrSmh1QQtWKv8V+nio8tdSTQHXRYh5PmwpFl+N6Sy1VF1o
	6/FwfAZVGfp10PzYPSASQb5xyjxFZQ25Uj/hj8ncNTItLzbECMxocBfjmaajynAtHbiA69
	pa3y1YcBYek9CeYfJ1h/YLd6G+S61Qo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755530130;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=pPaXx3GogupYUzudWeXDprQsHT8asP4kTul//FivS9Q=;
	b=cRz4Sfdg3ADJWsIAuK/dNAM76hCO7xUoz0dlG2jiVqh6Wc/l+ztT9xi9RMEEyprkCUOI7C
	MlLhzOZY5szA5pAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D549C13A55;
	Mon, 18 Aug 2025 15:15:29 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id vDi1MpFDo2jXLQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 18 Aug 2025 15:15:29 +0000
Message-ID: <7a470b3f-fc20-476e-bc97-be9008d5aeef@suse.de>
Date: Mon, 18 Aug 2025 17:15:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818084148.212443-1-tzimmermann@suse.de>
 <6f409954-2e01-4e87-b8b7-5688bea837f6@amd.com>
 <7c2d8894-7eb5-4c86-a80a-935fcf24ef83@suse.de>
 <6cb1d152-898a-4cc4-a086-44d85cf7a24d@amd.com>
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
In-Reply-To: <6cb1d152-898a-4cc4-a086-44d85cf7a24d@amd.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5FC5444643
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: 3ZLR5GQ6O2SRCB4PMHZGONPQGBKDE4TH
X-Message-ID-Hash: 3ZLR5GQ6O2SRCB4PMHZGONPQGBKDE4TH
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Pin buffer while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZLR5GQ6O2SRCB4PMHZGONPQGBKDE4TH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuDQoNCkFtIDE4LjA4LjI1IHVtIDE1OjIzIHNjaHJpZWIgQ2hyaXN0aWFuIEvD
tm5pZzoNCj4gT24gMTguMDguMjUgMTQ6NDYsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOg0KPj4g
SGkNCj4+DQo+PiBBbSAxOC4wOC4yNSB1bSAxNDo0MCBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6
DQo+PiBbLi4uXQ0KPj4+PiArc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl92bWFwKHN0cnVjdCBk
bWFfYnVmICpkbWFfYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+Pj4+ICt7DQo+Pj4+ICvC
oMKgwqAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KPj4+PiAr
wqDCoMKgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOw0KPj4+
PiArwqDCoMKgIGludCByZXQ7DQo+Pj4+ICsNCj4+Pj4gK8KgwqDCoCAvKg0KPj4+PiArwqDCoMKg
wqAgKiBQaW4gdG8ga2VlcCBidWZmZXIgaW4gcGxhY2Ugd2hpbGUgaXQncyB2bWFwJ2VkLiBUaGUg
YWN0dWFsDQo+Pj4+ICvCoMKgwqDCoCAqIGxvY2F0aW9uIGlzIG5vdCBpbXBvcnRhbnQgYXMgbG9u
ZyBhcyBpdCdzIG1hcGFibGUuDQo+Pj4gWWVhaCwgZXhhY3RseSB0aGF0IHdvbid0IHdvcmsgaGVy
ZS4gTW9zdCBvZiB0aGUgbG9jYXRpb25zIGFyZSBub3QgQ1BVIGFjY2Vzc2libGUuDQo+Pj4NCj4+
PiBZb3UgY291bGQgdXNlIEFNREdQVV9HRU1fRE9NQUlOX0dUVCwgdGhhdCBzaG91bGQgbW9zdCBs
aWtlbHkgd29yayBpbiBhbGwgY2FzZXMgYnV0IGlzbid0IG5lY2Vzc2FyaWx5IHRoZSBtb3N0IG9w
dGltYWwgc29sdXRpb24uDQo+PiBObyBwcm9ibGVtIGFib3V0IHRoYXQsIGJ1dCB3aHkgbm90IGEg
Yml0IG1vcmUgZmxleGliaWxpdHk/IFdoZW4gdWRsIGNvcGllcyBmcm9tIHRoZSBidWZmZXIsIGl0
IGlzIGxpa2VseSBwaW5uZWQgdG8gVlJBTS4NCj4+DQo+PiBBIGJpdCBtYXNrIG9mIF9DUFUsIF9H
VFQsIGFuZCBfVlJBTSBzaG91bGQgd29yayBmaW5lLiBUaGUgb3RoZXIgZG9tYWlucyBhcmUgcHJv
YmFibHkgaXJyZWxldmFudCBmb3Igb3VyIHVzZSBjYXNlLg0KPiBUaGUgcHJvYmxlbSBpcyB0aGF0
IGFzIHNvb24gYXMgeW91IHBpbiBpbnRvIHRoaXMgZG9tYWluIHlvdSBnZXQgYW4gZXJyb3IgaWYg
eW91IHRyeSB0byBwaW4gaW50byBhbm90aGVyIGRvbWFpbi4NCj4NCj4gU28gaWYgeW91IHRyeSB0
byB1c2UgdGhlIHNhbWUgYnVmZmVyIHdpdGggdWRsIGFuZCBhbWRncHUgc2Nhbm91dCBhbmQgcGlu
IGl0IGludG8gR1RUIC0+IGVycm9yLg0KPg0KPiBJZiB5b3UgdHJ5IHRvIHVzZSB0aGUgc2FtZSBi
dWZmZXIgd2l0aCB1ZGwgYW5kIFY0TCBhbmQgcGluIGl0IGludG8gVlJBTSAtPiBlcnJvci4NCg0K
V2hhdCB5b3UncmUgZGVzY3JpYmluZyBpcyBleGFjdGx5IHRoZSBjdXJyZW50IHNpdHVhdGlvbiBm
b3IgdWRsIHBsdXMgDQphbWRncHUgbm93LiBXaGVuIHVkbCB0cmllcyB0byBwaW4sIGFtZGdwdSBo
YXMgYWxyZWFkeSBwaW5uZWQgdGhlIGJ1ZmZlciANCnRvIFZSQU0uIFNvIGl0IGRvZXNuJ3Qgd29y
ay4gVGhlcmUgbmVlZHMgdG8gYmUgYXQgbGVhc3QgVlJBTSBhbmQgR1RUIGluIA0KdGhlIGxpc3Qu
IFdoYXQgZG9lcyB3b3JrIGlzIHRvIHRyeSBwaW5uaW5nIHRvIHZhcmlvdXMgZG9tYWlucyBpbiB0
aGUgDQpwcmVmZXJyZWQgb3JkZXIuDQoNCkJlc3QgcmVnYXJkcw0KVGhvbWFzDQoNCj4NCj4gVGhl
cmUgaXMgbm90IHdvcmtzIGZvciBldmVyeWJvZHkgY2FzZSBoZXJlIGFuZCB3ZSBuZWVkIHRvIGd1
ZXNzLiBQaW5uaW5nIGl0IGludG8gR1RUIGlzIGp1c3Qgd2hhdCB3b3JrcyBtb3N0IGxpa2VseS4N
Cj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4gQmVzdCByZWdhcmRzDQo+PiBUaG9t
YXMNCj4+DQo+Pj4gUmVnYXJkcywNCj4+PiBDaHJpc3RpYW4uDQo+Pj4NCj4+Pj4gK8KgwqDCoMKg
ICoNCj4+Pj4gK8KgwqDCoMKgICogVGhpcyBjb2RlIGlzIHJlcXVpcmVkIGZvciBleHBvcnRpbmcg
dG8gR0VNLVNITUVNIHdpdGhvdXQgUy9HIHRhYmxlLg0KPj4+PiArwqDCoMKgwqAgKiBPbmNlIEdF
TS1TSE1FTSBzdXBwb3J0cyBkeW5hbWljIGltcG9ydHMsIGl0IHNob3VsZCBiZSBkcm9wcGVkLg0K
Pj4+PiArwqDCoMKgwqAgKi8NCj4+Pj4gK8KgwqDCoCByZXQgPSBhbWRncHVfYm9fcGluKGJvLCBB
TURHUFVfR0VNX0RPTUFJTl9NQVNLKTsNCj4+Pj4gK8KgwqDCoCBpZiAocmV0KQ0KPj4+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4+Pj4gK8KgwqDCoCByZXQgPSBkcm1fZ2VtX2RtYWJ1
Zl92bWFwKGRtYV9idWYsIG1hcCk7DQo+Pj4+ICvCoMKgwqAgaWYgKHJldCkNCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGFtZGdwdV9ib191bnBpbihibyk7DQo+Pj4+ICsNCj4+Pj4gK8KgwqDCoCByZXR1
cm4gcmV0Ow0KPj4+PiArfQ0KPj4+PiArDQo+Pj4+ICtzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1
Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkN
Cj4+Pj4gK3sNCj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGRtYV9i
dWYtPnByaXY7DQo+Pj4+ICvCoMKgwqAgc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1k
Z3B1X2JvKG9iaik7DQo+Pj4+ICsNCj4+Pj4gK8KgwqDCoCBkcm1fZ2VtX2RtYWJ1Zl92dW5tYXAo
ZG1hX2J1ZiwgbWFwKTsNCj4+Pj4gK8KgwqDCoCBhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4+PiAr
fQ0KPj4+PiArDQo+Pj4+ICDCoCBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1kZ3B1X2RtYWJ1
Zl9vcHMgPSB7DQo+Pj4+ICDCoMKgwqDCoMKgIC5hdHRhY2ggPSBhbWRncHVfZG1hX2J1Zl9hdHRh
Y2gsDQo+Pj4+ICDCoMKgwqDCoMKgIC5waW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQo+Pj4+IEBA
IC0yOTQsOCArMzI2LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZf
b3BzID0gew0KPj4+PiAgwqDCoMKgwqDCoCAucmVsZWFzZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVh
c2UsDQo+Pj4+ICDCoMKgwqDCoMKgIC5iZWdpbl9jcHVfYWNjZXNzID0gYW1kZ3B1X2RtYV9idWZf
YmVnaW5fY3B1X2FjY2VzcywNCj4+Pj4gIMKgwqDCoMKgwqAgLm1tYXAgPSBkcm1fZ2VtX2RtYWJ1
Zl9tbWFwLA0KPj4+PiAtwqDCoMKgIC52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1hcCwNCj4+Pj4g
LcKgwqDCoCAudnVubWFwID0gZHJtX2dlbV9kbWFidWZfdnVubWFwLA0KPj4+PiArwqDCoMKgIC52
bWFwID0gYW1kZ3B1X2RtYV9idWZfdm1hcCwNCj4+Pj4gK8KgwqDCoCAudnVubWFwID0gYW1kZ3B1
X2RtYV9idWZfdnVubWFwLA0KPj4+PiAgwqAgfTsNCj4+Pj4gIMKgIMKgIC8qKg0KDQotLSANCi0t
DQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KU1VTRSBTb2Z0
d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51
ZXJuYmVyZywgR2VybWFueQ0KR0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNE
b25hbGQsIEJvdWRpZW4gTW9lcm1hbg0KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcpDQoNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
