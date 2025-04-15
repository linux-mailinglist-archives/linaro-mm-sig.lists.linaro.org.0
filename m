Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C50CDA89ABF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 12:45:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8DD4455E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 10:45:21 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id A03E2410EA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 10:45:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=cZAnh3Gf;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=mWnBbZ0v;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=cZAnh3Gf;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=mWnBbZ0v;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 27A201F38D;
	Tue, 15 Apr 2025 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744713905; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=GlMI7c7nbRs2faWdLeH0LEv4pweuvkoAbWOgYD9dM9k=;
	b=cZAnh3Gfws0Wb0vy/AHolcFf9wJsE25+vpB9wtDzdF8k/M6WKfKgUicH+gRRpPxjsnjy+U
	VbqRTxR3hoO4FJ1OOKQYh0EI0UqK4QIzDRbTvAyOO6DvqbCJU1eBRyKlSKXTsjA3SM25hG
	wb14jIihkzms3C2/XWvmE3iO6vFJwmA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744713905;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=GlMI7c7nbRs2faWdLeH0LEv4pweuvkoAbWOgYD9dM9k=;
	b=mWnBbZ0v7Y62EAxkawHQoIEYZEk7J6/BEiNqRl9OECxbnBckdooM2YuDG31eHlxi7BEUK/
	4tiTLYA5NUvjDyCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744713905; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=GlMI7c7nbRs2faWdLeH0LEv4pweuvkoAbWOgYD9dM9k=;
	b=cZAnh3Gfws0Wb0vy/AHolcFf9wJsE25+vpB9wtDzdF8k/M6WKfKgUicH+gRRpPxjsnjy+U
	VbqRTxR3hoO4FJ1OOKQYh0EI0UqK4QIzDRbTvAyOO6DvqbCJU1eBRyKlSKXTsjA3SM25hG
	wb14jIihkzms3C2/XWvmE3iO6vFJwmA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744713905;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=GlMI7c7nbRs2faWdLeH0LEv4pweuvkoAbWOgYD9dM9k=;
	b=mWnBbZ0v7Y62EAxkawHQoIEYZEk7J6/BEiNqRl9OECxbnBckdooM2YuDG31eHlxi7BEUK/
	4tiTLYA5NUvjDyCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id CB46C137A5;
	Tue, 15 Apr 2025 10:45:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 0ALDL7A4/meebwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 10:45:04 +0000
Message-ID: <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
Date: Tue, 15 Apr 2025 12:45:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 simona@ffwll.ch, airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
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
In-Reply-To: <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: A03E2410EA
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[195.135.223.131:from];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[lists.freedesktop.org:email,smtp-out2.suse.de:helo,smtp-out2.suse.de:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LJZMF4FKIN4CVS7DQGLSY5OXWERXF3AI
X-Message-ID-Hash: LJZMF4FKIN4CVS7DQGLSY5OXWERXF3AI
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LJZMF4FKIN4CVS7DQGLSY5OXWERXF3AI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTUuMDQuMjUgdW0gMTE6Mzkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBB
bSAxNS4wNC4yNSB1bSAxMToyMCBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOg0KPj4gVGVzdCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0ZWQgb2Jq
ZWN0cw0KPj4gZHVyaW5nIGNsZWFudXAuIEF0IHRoYXQgcG9pbnQsIHRoZSBpbXBvcnRlZCBETUEg
YnVmZmVyIG1pZ2h0IGhhdmUNCj4+IGFscmVhZHkgYmVlbiByZWxlYXNlZCBhbmQgdGhlIGRtYV9i
dWYgZmllbGQgaXMgTlVMTC4gVGhlIG9iamVjdCdzDQo+PiBmcmVlIGNhbGxiYWNrIHRoZW4gZG9l
cyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZSBvYmplY3RzLg0KPiBJIGRvbid0IHRoaW5rIHRoYXQg
dGhpcyBpcyBhIGdvb2QgaWRlYS4NCj4NCj4gVGhlIERNQS1idWYgaXMgc2VwYXJhdGVseSByZWZl
cmVuY2UgY291bnRlZCB0aHJvdWdoIHRoZSBpbXBvcnQgYXR0YWNobWVudC4NCg0KSSB1bmRlcnN0
YW5kIHRoYXQgaXQncyBub3QgaWRlYWwsIGJ1dCB0ZXN0aW5nIGZvciBpbXBvcnRfYXR0YWNoIHRv
IGJlIA0Kc2V0IGlzIHdoYXQgd2UgY3VycmVudGx5IGRvIHRocm91Z2hvdXQgZHJpdmVycy4gUHV0
dGluZyB0aGlzIGJlaGluZCBhbiANCmludGVyZmFjZSBpcyBhbHJlYWR5IGEgc3RlcCBmb3J3YXJk
Lg0KDQo+DQo+PiBIYXBwZW5zIGZvciBjYWxscyB0byBkcm1fbW9kZV9kZXN0cm95X2R1bWJfaW9j
dGwoKSB0aGF0IGV2ZW50dWFsbHkNCj4+IGNsZWFyIHRoZSBkbWFfYnVmIGZpZWxkIGluIGRybV9n
ZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0KPiBUaGF0IGlzIGZvciBleHBvcnRl
ZCBETUEtYnVmIGFuZCBzaG91bGQgKk5FVkVSKiBiZSB1c2VkIGZvciBpbXBvcnRlZCBvbmVzLg0K
DQpEaWQgeW91IGxvb2sgYXQgdGhlIGRpc2N1c3Npb24gYXQgdGhlIENsb3NlcyB0YWc/IFdoZXJl
IGVsc2UgY291bGQgDQpkbWEtYnVmIGJlIGNsZWFyZWQ/DQoNCkJlc3QgcmVnYXJkcw0KVGhvbWFz
DQoNCj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPj4gU2lnbmVkLW9mZi1ieTogVGhv
bWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+PiBGaXhlczogYjU3YWE0N2Qz
OWU5ICgiZHJtL2dlbTogVGVzdCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBoZWxwZXIi
KQ0KPj4gUmVwb3J0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KPj4gQ2xvc2Vz
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMzhkMDlkMzQuNDM1NC4xOTYzNzlh
YTU2MC5Db3JlbWFpbC5hbmR5c2hya0AxNjMuY29tLw0KPj4gVGVzdGVkLWJ5OiBBbmR5IFlhbiA8
YW5keXNocmtAMTYzLmNvbT4NCj4+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4NCj4+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFzcml2YXRzQHJlZGhhdC5jb20+DQo+
PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gQ2M6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+
PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPj4gQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+PiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZm
d2xsLmNoPg0KPj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+
PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPj4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZw0KPj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4g
LS0tDQo+PiAgIGluY2x1ZGUvZHJtL2RybV9nZW0uaCB8IDggKysrKysrKy0NCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1n
aXQgYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4+IGlu
ZGV4IDliNzFmN2E5ZjNmOC4uZjA5YjhhZmNmODZkIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9k
cm0vZHJtX2dlbS5oDQo+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4+IEBAIC01ODks
NyArNTg5LDEzIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX29iamVjdF9pc19zaGFyZWRf
Zm9yX21lbW9yeV9zdGF0cyhzdHJ1Y3QgZHJtX2dlbV9vYmplDQo+PiAgIHN0YXRpYyBpbmxpbmUg
Ym9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
KQ0KPj4gICB7DQo+PiAgIAkvKiBUaGUgZG1hLWJ1ZidzIHByaXYgZmllbGQgcG9pbnRzIHRvIHRo
ZSBvcmlnaW5hbCBHRU0gb2JqZWN0LiAqLw0KPj4gLQlyZXR1cm4gb2JqLT5kbWFfYnVmICYmIChv
YmotPmRtYV9idWYtPnByaXYgIT0gb2JqKTsNCj4+ICsJcmV0dXJuIChvYmotPmRtYV9idWYgJiYg
KG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBvYmopKSB8fA0KPj4gKwkgICAgICAgLyoNCj4+ICsJCSog
VE9ETzogRHVyaW5nIG9iamVjdCByZWxlYXNlLCB0aGUgZG1hLWJ1ZiBtaWdodCBhbHJlYWR5DQo+
PiArCQkqICAgICAgIGJlIGdvbmUuIEZvciBub3cga2VlcCB0ZXN0aW5nIGltcG9ydF9hdHRhY2gs
IGJ1dA0KPj4gKwkJKiAgICAgICB0aGlzIHNob3VsZCBiZSByZW1vdmVkIGF0IHNvbWUgcG9pbnQu
DQo+PiArCQkqLw0KPj4gKwkgICAgICAgb2JqLT5pbXBvcnRfYXR0YWNoOw0KPj4gICB9DQo+PiAg
IA0KPj4gICAjaWZkZWYgQ09ORklHX0xPQ0tERVANCg0KLS0gDQotLQ0KVGhvbWFzIFppbW1lcm1h
bm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkN
CkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1v
ZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
