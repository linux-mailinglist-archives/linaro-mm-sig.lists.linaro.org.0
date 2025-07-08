Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 418ACAFC440
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 09:39:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0620342503
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 07:39:07 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id AE21741406
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Jul 2025 07:38:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Z+cDIoqg;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=oCcz3XoT;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Z+cDIoqg;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=oCcz3XoT;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7DE6C2115F;
	Tue,  8 Jul 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751960333; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=gvG5OJSZUKUfmOaM9AGtFnkko27si3EQj7m9quIH+1U=;
	b=Z+cDIoqgze0oqsRAESJ+3Zsubl5j79M5/pT1u8FEq56KkABuklx2yAl0/NOQBBq7cLliEG
	w/BgzsdD5oNmLng+Ej9dIh+o55N1YVqhN4CqcCO+MbE7SxVxW7+kKpJ1tPj7QM2zeYl1gr
	4jUnK5OWMyE7gIUGrduMElIiHqfl0PA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751960333;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=gvG5OJSZUKUfmOaM9AGtFnkko27si3EQj7m9quIH+1U=;
	b=oCcz3XoTG2OpMrgy6Go/NmHCi+I73sVD2Pqsd2PADEDbC8BCxQ6lqFq6fSktqH9ZfYBB//
	meQGvKx6KWqOyyBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1751960333; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=gvG5OJSZUKUfmOaM9AGtFnkko27si3EQj7m9quIH+1U=;
	b=Z+cDIoqgze0oqsRAESJ+3Zsubl5j79M5/pT1u8FEq56KkABuklx2yAl0/NOQBBq7cLliEG
	w/BgzsdD5oNmLng+Ej9dIh+o55N1YVqhN4CqcCO+MbE7SxVxW7+kKpJ1tPj7QM2zeYl1gr
	4jUnK5OWMyE7gIUGrduMElIiHqfl0PA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1751960333;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=gvG5OJSZUKUfmOaM9AGtFnkko27si3EQj7m9quIH+1U=;
	b=oCcz3XoTG2OpMrgy6Go/NmHCi+I73sVD2Pqsd2PADEDbC8BCxQ6lqFq6fSktqH9ZfYBB//
	meQGvKx6KWqOyyBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1198913A54;
	Tue,  8 Jul 2025 07:38:53 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id HNbpAg3LbGhQRwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 08 Jul 2025 07:38:53 +0000
Message-ID: <a421623f-e93f-4423-bf30-c7388c6a3508@suse.de>
Date: Tue, 8 Jul 2025 09:38:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Satadru Pramanik <satadru@gmail.com>
References: <20250707131224.249496-1-tzimmermann@suse.de>
 <a3336964-1b72-421c-b4dc-2ac3f548430b@amd.com>
 <4c1bc40d-6bd4-4102-b12f-fda320216e1d@suse.de>
 <CAFrh3J9uh0M5bWeS3cv_Cb1yFTKhE2+9mSk5hsZTzWW3uYKaWg@mail.gmail.com>
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
In-Reply-To: <CAFrh3J9uh0M5bWeS3cv_Cb1yFTKhE2+9mSk5hsZTzWW3uYKaWg@mail.gmail.com>
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -4.51
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AE21741406
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,redhat.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,guillain.net,alien8.de,lists.freedesktop.org,vger.kernel.org,web.de,linaro.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:received,195.135.223.130:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
Message-ID-Hash: XRMHNOQFZVFCZATJY2OSTL3FRTRAP7I7
X-Message-ID-Hash: XRMHNOQFZVFCZATJY2OSTL3FRTRAP7I7
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, asrivats@redhat.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, jean-christophe@guillain.net, superm1@kernel.org, bp@alien8.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Bert Karwatzki <spasswolf@web.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/framebuffer: Acquire internal references on GEM handles
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XRMHNOQFZVFCZATJY2OSTL3FRTRAP7I7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDcuMDcuMjUgdW0gMTg6MTQgc2NocmllYiBTYXRhZHJ1IFByYW1hbmlrOg0KPiBB
cHBseWluZyB0aGlzIHBhdGNoIHRvIDYuMTYtcmM1IHJlc29sdmVzIHRoZSBzbGVlcCBpc3N1ZSBy
ZWdyZXNzaW9uIA0KPiBmcm9tIDYuMTYtcmM0IEkgd2FzIGhhdmluZyBvbiBtecKgTWFjQm9va1By
bzExLDMgKE1pZC0yMDE0IDE1IiANCj4gTWFjQm9va1BybyksIHdoaWNoIGhhcyB0aGXCoE5WSURJ
QSBHSzEwN00gR1BVIGVuYWJsZWQgdmlhIHRoZSBOb3V2ZWF1IA0KPiBkcml2ZXIuDQoNClRoYW5r
cyBmb3IgdGVzdGluZy4gSSB0aGluayB0aGUgc2xlZXAgcmVncmVzc2lvbiB3YXMganVzdCBhIHNp
ZGUgZWZmZWN0IA0Kb2YgdGhlIGJyb2tlbiByZWZlcmVuY2UgY291bnRpbmcuDQoNCkJlc3QgcmVn
YXJkcw0KVGhvbWFzDQoNCj4NCj4gTWFueSB0aGFua3MsDQo+DQo+IFNhdGFkcnUNCj4NCj4gT24g
TW9uLCBKdWwgNywgMjAyNSBhdCA5OjMz4oCvQU0gVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJt
YW5uQHN1c2UuZGU+IA0KPiB3cm90ZToNCj4NCj4gICAgIEhpDQo+DQo+ICAgICBBbSAwNy4wNy4y
NSB1bSAxNToyMSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6DQo+DQo+ICAgICA+Pg0KPiAgICAg
Pj4gKyNkZWZpbmUgRFJNX0ZSQU1FQlVGRkVSX0hBU19IQU5ETEVfUkVGKF9pKcKgIEJJVCgwdSAr
IChfaSkpDQo+ICAgICA+IFdoeSB0aGUgIjB1ICsgKF9pKSIgaGVyZT8gQW4gbWFjcm8gdHJpY2s/
DQo+DQo+ICAgICBZb3UgbWVhbiB3aHkgbm90IGp1c3QgQklUKF9pKT8gaW50ZXJuYWxfZmxhZ3Mg
Y291bGQgcG9zc2libHkgY29udGFpbg0KPiAgICAgYWRkaXRpb25hbCBmbGFncy4gSnVzdCB1c2lu
ZyBCSVQoX2kpIHdvdWxkIG1ha2UgaXQgbG9vayBhcyBpZiBpdCdzDQo+ICAgICBvbmx5DQo+ICAg
ICBmb3IgdGhvc2UgaGFuZGxlIHJlZnMuDQo+DQo+ICAgICBCZXN0IHJlZ2FyZHMNCj4gICAgIFRo
b21hcw0KPg0KPiAgICAgPg0KPiAgICAgPiBSZWdhcmRzLA0KPiAgICAgPiBDaHJpc3RpYW4uDQo+
ICAgICA+DQo+ICAgICA+PiArDQo+ICAgICA+PsKgIMKgLyoqDQo+ICAgICA+PsKgIMKgICogc3Ry
dWN0IGRybV9mcmFtZWJ1ZmZlciAtIGZyYW1lIGJ1ZmZlciBvYmplY3QNCj4gICAgID4+wqAgwqAg
Kg0KPiAgICAgPj4gQEAgLTE4OCw2ICsxOTEsMTAgQEAgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciB7
DQo+ICAgICA+PsKgIMKgIMKgIMKgKiBEUk1fTU9ERV9GQl9NT0RJRklFUlMuDQo+ICAgICA+PsKg
IMKgIMKgIMKgKi8NCj4gICAgID4+wqAgwqAgwqAgaW50IGZsYWdzOw0KPiAgICAgPj4gK8KgIMKg
IC8qKg0KPiAgICAgPj4gK8KgIMKgIMKgKiBAaW50ZXJuYWxfZmxhZ3M6IEZyYW1lYnVmZmVyIGZs
YWdzIGxpa2UNCj4gICAgIERSTV9GUkFNRUJVRkZFUl9IQVNfSEFORExFX1JFRi4NCj4gICAgID4+
ICvCoCDCoCDCoCovDQo+ICAgICA+PiArwqAgwqAgdW5zaWduZWQgaW50IGludGVybmFsX2ZsYWdz
Ow0KPiAgICAgPj7CoCDCoCDCoCAvKioNCj4gICAgID4+wqAgwqAgwqAgwqAqIEBmaWxwX2hlYWQ6
IFBsYWNlZCBvbiAmZHJtX2ZpbGUuZmJzLCBwcm90ZWN0ZWQgYnkNCj4gICAgICZkcm1fZmlsZS5m
YnNfbG9jay4NCj4gICAgID4+wqAgwqAgwqAgwqAqLw0KPg0KPiAgICAgLS0gDQo+ICAgICAtLQ0K
PiAgICAgVGhvbWFzIFppbW1lcm1hbm4NCj4gICAgIEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIN
Cj4gICAgIFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KPiAgICAgRnJhbmtl
bnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkNCj4gICAgIEdGOiBJdm8gVG90
ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4NCj4gICAg
IEhSQiAzNjgwOSAoQUcgTnVlcm5iZXJnKQ0KPg0KDQotLSANCi0tDQpUaG9tYXMgWmltbWVybWFu
bg0KR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2Vy
bWFueSBHbWJIDQpGcmFua2Vuc3RyYXNzZSAxNDYsIDkwNDYxIE51ZXJuYmVyZywgR2VybWFueQ0K
R0Y6IEl2byBUb3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9l
cm1hbg0KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcpDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
